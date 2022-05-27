SELECT A.*
  FROM
(
 SELECT
         NAME
       , CREDIT_LIMIT
    FROM CUSTOMERS
) A
;
-----------------------------------------------------------------------------------------------------
SELECT A.*
  FROM
     (
       SELECT A.*
         FROM
            (
				SELECT
				       NAME
				     , CREDIT_LIMIT
				  FROM CUSTOMERS
     		) A
     ) A
;
-----------------------------------------------------------------------------------------------------
SELECT
       C.NAME AS CUSTOMER
     , TO_CHAR(A.ORDER_DATE, 'YYYY') AS YEAR
     , SUM( B.QUANTITY * B.UNIT_PRICE ) SALES_AMOUNT
  FROM ORDERS A
     , ORDER_ITEMS B
     , CUSTOMERS C
 WHERE 1=1
   AND A.STATUS = 'Shipped'
   AND A.ORDER_ID = B.ORDER_ID
   AND A.CUSTOMER_ID = C.CUSTOMER_ID
 GROUP BY C.NAME, TO_CHAR(A.ORDER_DATE, 'YYYY')
 ORDER BY C.NAME
;
-----------------------------------------------------------------------------------------------------
CREATE OR REPLACE VIEW CUSTOMER_SALES AS
SELECT
       C.NAME AS CUSTOMER
     , TO_CHAR(A.ORDER_DATE, 'YYYY') AS YEAR
     , SUM( B.QUANTITY * B.UNIT_PRICE ) SALES_AMOUNT
  FROM ORDERS A
     , ORDER_ITEMS B
     , CUSTOMERS C
 WHERE 1=1
   AND A.STATUS = 'Shipped'
   AND A.ORDER_ID = B.ORDER_ID
   AND A.CUSTOMER_ID = C.CUSTOMER_ID
 GROUP BY C.NAME, TO_CHAR(A.ORDER_DATE, 'YYYY')
 ORDER BY C.NAME;
-----------------------------------------------------------------------------------------------------
SELECT *
  FROM CUSTOMER_SALES;
-----------------------------------------------------------------------------------------------------
 SELECT
       CUSTOMER
     , SALES_AMOUNT
  FROM
  CUSTOMER_SALES
WHERE YEAR = 2017
ORDER BY SALES_AMOUNT DESC;
-----------------------------------------------------------------------------------------------------
SELECT
        CUSTOMER
      , SUM(SALES_AMOUNT) AS SUM_SALES_AMOUNT
  FROM CUSTOMER_SALES
GROUP BY CUSTOMER
ORDER BY SUM_SALES_AMOUNT DESC;
-----------------------------------------------------------------------------------------------------