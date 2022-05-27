SELECT
       MAX(LIST_PRICE)
  FROM PRODUCTS
 ;
----------------------------------------------------------------------------------------------------
SELECT
   PRODUCT_ID
 , PRODUCT_NAME
 , LIST_PRICE
  FROM PRODUCTS
 WHERE LIST_PRICE = 8867.99
 ;
----------------------------------------------------------------------------------------------------
SELECT
       PRODUCT_ID
     , PRODUCT_NAME
     , LIST_PRICE
  FROM PRODUCTS
 WHERE LIST_PRICE = (
                   SELECT
                          MAX(LIST_PRICE)
                     FROM PRODUCTS 
                    );
----------------------------------------------------------------------------------------------------                                    
SELECT
       A.PRODUCT_NAME
     , A.LIST_PRICE
     , ROUND( (SELECT AVG(K.LIST_PRICE) 
                 FROM PRODUCTS K 
               WHERE K.CATEGORY_ID = A.CATEGORY_ID 
            ), 2
       ) AVG_LIST_PRICE
  FROM PRODUCTS A
ORDER BY A.PRODUCT_NAME;
----------------------------------------------------------------------------------------------------
SELECT ORDER_ID
     , ORDER_VALUE
  FROM
(
    SELECT ORDER_ID
         , SUM( QUANTITY * UNIT_PRICE ) ORDER_VALUE
      FROM ORDER_ITEMS
     GROUP BY ORDER_ID
     ORDER BY ORDER_VALUE DESC 
)
WHERE ROWNUM <= 10;
----------------------------------------------------------------------------------------------------