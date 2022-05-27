SELECT CUSTOMER_ID
     , NAME
     , CREDIT_LIMIT
  FROM CUSTOMERS
;
----------------------------------------------------------------------------------------------------
SELECT CUSTOMER_ID
     , NAME
     , ADDRESS
     , WEBSITE
     , CREDIT_LIMIT
  FROM CUSTOMERS
;
----------------------------------------------------------------------------------------------------
SELECT *
  FROM CUSTOMERS
;
----------------------------------------------------------------------------------------------------
SELECT *
  FROM DUAL
;
----------------------------------------------------------------------------------------------------
SELECT (10 + 5)/ 2 AS VAL
  FROM DUAL
;
----------------------------------------------------------------------------------------------------
SELECT NAME
     , ADDRESS
     , CREDIT_LIMIT
  FROM CUSTOMERS
ORDER BY NAME ASC
;
----------------------------------------------------------------------------------------------------
SELECT NAME
     , ADDRESS
     , CREDIT_LIMIT
  FROM CUSTOMERS
ORDER BY NAME DESC
;
----------------------------------------------------------------------------------------------------
SELECT
       FIRST_NAME
     , LAST_NAME
  FROM CONTACTS
ORDER BY FIRST_NAME, LAST_NAME DESC
;
----------------------------------------------------------------------------------------------------
SELECT FIRST_NAME
  FROM CONTACTS
ORDER BY FIRST_NAME
;
----------------------------------------------------------------------------------------------------
SELECT DISTINCT FIRST_NAME
  FROM CONTACTS
ORDER BY FIRST_NAME
;
----------------------------------------------------------------------------------------------------
SELECT DISTINCT PRODUCT_ID, QUANTITY
  FROM ORDER_ITEMS
ORDER BY PRODUCT_ID
;
----------------------------------------------------------------------------------------------------
SELECT PRODUCT_NAME
     , DESCRIPTION
     , LIST_PRICE
     , CATEGORY_ID
  FROM PRODUCTS
 WHERE PRODUCT_NAME = 'Kingston'
;
----------------------------------------------------------------------------------------------------
SELECT PRODUCT_NAME
     , LIST_PRICE
  FROM PRODUCTS
 WHERE LIST_PRICE > 500
;
----------------------------------------------------------------------------------------------------
SELECT PRODUCT_NAME
     , LIST_PRICE
     , CATEGORY_ID
  FROM PRODUCTS
 WHERE LIST_PRICE > 500
   AND CATEGORY_ID = 4;
----------------------------------------------------------------------------------------------------
SELECT PRODUCT_NAME
     , LIST_PRICE
  FROM PRODUCTS
 WHERE LIST_PRICE BETWEEN 650 AND 680
--WHERE LIST_PRICE >= 650 AND LIST_PRICE <= 680
ORDER BY LIST_PRICE
;
----------------------------------------------------------------------------------------------------
SELECT PRODUCT_NAME
     , CATEGORY_ID
  FROM PRODUCTS
 WHERE CATEGORY_ID IN (1, 4)
--WHERE CATEGORY_ID = 1 OR CATEGORY_ID = 4
ORDER BY PRODUCT_NAME
;
----------------------------------------------------------------------------------------------------
SELECT PRODUCT_NAME
     , LIST_PRICE
  FROM PRODUCTS
 WHERE PRODUCT_NAME LIKE 'Asus%'
ORDER BY LIST_PRICE
;
----------------------------------------------------------------------------------------------------