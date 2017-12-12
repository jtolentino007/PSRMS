<?php

class Products_model extends CORE_Model {
    protected  $table="products";
    protected  $pk_id="product_id";

    function __construct() {
        parent::__construct();
    }


    function getDepartment()
    {
        $query = $this->db->query('SELECT department_name FROM departments');
        return $query->result();
    }

    function getCode() {
        $query = $this->db->query('SELECT product_code FROM products');
        return $query->result();
    }

    function getProductInventoryInfo($product_id)
    {
        $sql = "SELECT
                *
                FROM
                (
                SELECT products.*,
                ( (COALESCE(dii.totalreceive,0)+COALESCE(sda.total_added_stock,0))-(COALESCE(pii.totalsales,0)+COALESCE(sdd.total_deducted_stock,0)+COALESCE(ii.total_issued_qty,0)) ) as stock_onhand,
                (COALESCE(dii.totalreceive,0)+COALESCE(sda.total_added_stock,0)) as total_in,COALESCE(pii.totalsales,0)+COALESCE(sdd.total_deducted_stock,0)+COALESCE(ii.total_issued_qty,0) as total_out 
                FROM 
                products
                LEFT JOIN
                (
                SELECT SUM(dr_qty) as totalreceive,
                product_id 
                FROM 
                delivery_invoice_items
                LEFT JOIN delivery_invoice ON
                delivery_invoice_items.dr_invoice_id=delivery_invoice.dr_invoice_id
                GROUP BY product_id
                ) as dii
                ON products.product_id=dii.product_id
                LEFT JOIN
                (
                SELECT 
                SUM(pos_qty) as totalsales,
                product_id 
                FROM 
                pos_invoice_items
                LEFT JOIN pos_invoice ON
                pos_invoice_items.pos_invoice_id=pos_invoice.pos_invoice_id
                GROUP BY product_id
                ) as pii
                ON products.product_id=pii.product_id
                LEFT JOIN
                (
                SELECT 
                SUM(added_stock) as total_added_stock,
                SUM(minus_stock) as total_deducted_stock,
                product_id 
                FROM 
                stock_details
                GROUP BY product_id
                ) as sda
                ON products.product_id=sda.product_id
                LEFT JOIN
                (
                SELECT 
                SUM(minus_stock) as total_deducted_stock,
                product_id 
                FROM 
                stock_details
                GROUP BY product_id
                ) as sdd
                ON products.product_id=sdd.product_id
                LEFT JOIN
                (
                SELECT 
                SUM(is_qty) as total_issued_qty,
                product_id 
                FROM 
                issuance_items
                GROUP BY product_id
                ) as ii
                ON products.product_id=ii.product_id WHERE products.is_deleted=0
                AND products.product_id = $product_id
                ) 
                pi

                LEFT JOIN 
                categories c ON c.category_id = pi.category_id
                LEFT JOIN
                units u ON u.unit_id = pi.unit_id
                LEFT JOIN
                brands b ON b.brand_id = pi.brand_id
                LEFT JOIN
                vendors v ON v.vendor_id = pi.vendor_id";

        return $this->db->query($sql)->result();
    }

    public function ingredientInventory()
    {
        $sql = "SELECT
*,
(CASE WHEN balance >= ideal_qty THEN 1 WHEN balance < ideal_qty && balance >= warning_qty THEN 2 WHEN balance < warning_qty THEN 3 END) status
FROM
(SELECT
*,
primary_stock_in stock_in,
primary_stock_out stock_out,
(primary_stock_in - primary_stock_out) balance
FROM
(SELECT
stock_in.ingredient_id,
ingredient_name,
stock_in.ingredient_unit,
stock_in.ingredient_category_id,
stock_in.ideal_qty,
stock_in.warning_qty,
IFNULL(primary_stock_in,0) primary_stock_in,
product_id,
product_desc,
pos_qty,
recipe_id,
qty_per_order,
ingredient_unit_id,
base_price,
cost,
IFNULL(SUM(primary_stock_out),0) primary_stock_out,
primary_unit,
IFNULL(SUM(secondary_stock_out),0) secondary_stock_out,
secondary_unit
FROM
(SELECT
ingredients.*,
IFNULL(SUM(delivery_ingredients_items_qty),0) primary_stock_in
FROM
ingredients
LEFT JOIN delivery_ingredients_items ON delivery_ingredients_items.ingredient_id = ingredients.ingredient_id
INNER JOIN delivery_ingredients_info ON delivery_ingredients_info.delivery_ingredients_info_id = delivery_ingredients_items.delivery_ingredients_info_id
WHERE ingredients.is_deleted = FALSE
GROUP BY ingredient_id

UNION

SELECT
ingredients.*,
0.00 stock_in
FROM
ingredients
WHERE ingredients.is_deleted = FALSE
AND ingredient_id NOT IN (SELECT
ingredients.ingredient_id
FROM
ingredients
LEFT JOIN delivery_ingredients_items ON delivery_ingredients_items.ingredient_id = ingredients.ingredient_id
INNER JOIN delivery_ingredients_info ON delivery_ingredients_info.delivery_ingredients_info_id = delivery_ingredients_items.delivery_ingredients_info_id
WHERE ingredients.is_deleted = FALSE
GROUP BY ingredient_id)
) stock_in

LEFT JOIN

(
SELECT
pos_products.product_id,
product_desc,
pos_qty,
recipe_id,
qty_per_order,
ingredient_unit_id,
base_price,
cost,
ingredients.ingredient_id,
ingredient_unit,
ingredient_category_id,
ideal_qty,
warning_qty,
FORMAT((IFNULL(qty_per_order,0) * IFNULL(pos_qty,0)) / IFNULL(equivalent_qty,0),4) primary_stock_out,
primary_units.unit_name primary_unit,
FORMAT((IFNULL(qty_per_order,0) * IFNULL(pos_qty,0)),4) secondary_stock_out,
secondary_units.unit_name secondary_unit
FROM
(SELECT
pos_invoice_items.product_id,
product_desc,
IFNULL(SUM(pos_invoice_items.pos_qty),0) pos_qty
FROM
pos_invoice
INNER JOIN pos_invoice_items ON pos_invoice_items.pos_invoice_id = pos_invoice.pos_invoice_id
LEFT JOIN products ON products.product_id = pos_invoice_items.product_id
GROUP BY pos_invoice_items.product_id) pos_products

INNER JOIN

recipes ON recipes.product_id = pos_products.product_id
LEFT JOIN ingredients ON ingredients.ingredient_id = recipes.ingredient_id
LEFT JOIN measurements ON measurements.unit_id = ingredients.ingredient_unit AND measurements.sub_unit_id = recipes.ingredient_unit_id
LEFT JOIN units primary_units ON primary_units.unit_id = measurements.unit_id
LEFT JOIN units secondary_units ON secondary_units.unit_id = measurements.sub_unit_id
) stock_out

ON stock_out.ingredient_id = stock_in.ingredient_id

GROUP BY stock_in.ingredient_id) inventory) inventory_ingredients";

        return $this->db->query($sql)->result();
    }
}
?>