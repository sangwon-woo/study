SELECT A.PRODUCT_ID
 , A.PRODUCT_NAME
 , A.LIST_PRICE
  FROM PRODUCTS A 
WHERE A.LIST_PRICE > (
                      SELECT AVG(K.LIST_PRICE)
                        FROM PRODUCTS K
                     )
ORDER BY A.PRODUCT_NAME;
----------------------------------------------------------------------------------------------------
SELECT *
FROM (
      SELECT * 
        FROM CUSTOMERS c 
    ORDER BY CREDIT_LIMIT DESC, NAME ASC
     )
WHERE ROWNUM <= 10
;
----------------------------------------------------------------------------------------------------
