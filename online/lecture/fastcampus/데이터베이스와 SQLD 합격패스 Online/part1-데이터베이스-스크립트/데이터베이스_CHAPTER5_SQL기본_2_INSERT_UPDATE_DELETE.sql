DROP TABLE DISCOUNTS;

CREATE TABLE DISCOUNTS
(
  DISCOUNT_ID NUMBER GENERATED BY DEFAULT AS IDENTITY
, DISCOUNT_NAME VARCHAR2(255) NOT NULL
, AMOUNT NUMBER(3, 1) NOT NULL
, START_DATE DATE NOT NULL
, EXPIRED_DATE DATE NOT NULL
);
----------------------------------------------------------------------------------------------------
INSERT INTO
  DISCOUNTS (
              DISCOUNT_NAME
            , AMOUNT
            , START_DATE
            , EXPIRED_DATE
            )
    VALUES  ( 'Summer Promotion'
            , 9.5
            , DATE '2017-05-01'
            , DATE '2017-08-31'
            );
COMMIT;
----------------------------------------------------------------------------------------------------
SELECT *
  FROM DISCOUNTS
;
----------------------------------------------------------------------------------------------------
INSERT INTO
  DISCOUNTS (
              DISCOUNT_NAME
            , AMOUNT
            , START_DATE
            , EXPIRED_DATE
            )
    VALUES  ( 'Winter Promotion 2017'
            , 10.5
            , CURRENT_DATE
            , DATE '2017-12-31'
            );
COMMIT;
----------------------------------------------------------------------------------------------------
SELECT *
  FROM DISCOUNTS
;
----------------------------------------------------------------------------------------------------
CREATE TABLE PARTS
(
  PART_ID NUMBER GENERATED BY DEFAULT AS IDENTITY
, PART_NAME VARCHAR(50) NOT NULL
, LEAD_TIME NUMBER(2, 0) NOT NULL
, COST NUMBER(9, 2) NOT NULL
, STATUS NUMBER(1, 0) NOT NULL
, PRIMARY KEY (PART_ID)
);
----------------------------------------------------------------------------------------------------
INSERT INTO PARTS (PART_NAME,LEAD_TIME,COST,STATUS) VALUES ('sed dictum',5,134,0);
INSERT INTO PARTS (PART_NAME,LEAD_TIME,COST,STATUS) VALUES ('tristique neque',3,62,1);
INSERT INTO PARTS (PART_NAME,LEAD_TIME,COST,STATUS) VALUES ('dolor quam,',16,82,1);
INSERT INTO PARTS (PART_NAME,LEAD_TIME,COST,STATUS) VALUES ('nec, diam.',41,10,1);
INSERT INTO PARTS (PART_NAME,LEAD_TIME,COST,STATUS) VALUES ('vitae erat',22,116,0);
INSERT INTO PARTS (PART_NAME,LEAD_TIME,COST,STATUS) VALUES ('parturient montes,',32,169,1);
INSERT INTO PARTS (PART_NAME,LEAD_TIME,COST,STATUS) VALUES ('metus. In',45,88,1);
INSERT INTO PARTS (PART_NAME,LEAD_TIME,COST,STATUS) VALUES ('at, velit.',31,182,0);
INSERT INTO PARTS (PART_NAME,LEAD_TIME,COST,STATUS) VALUES ('nonummy ultricies',7,146,0);
INSERT INTO PARTS (PART_NAME,LEAD_TIME,COST,STATUS) VALUES ('a, dui.',38,116,0);
INSERT INTO PARTS (PART_NAME,LEAD_TIME,COST,STATUS) VALUES ('arcu et',37,72,1);
INSERT INTO PARTS (PART_NAME,LEAD_TIME,COST,STATUS) VALUES ('sapien. Cras',40,197,1);
INSERT INTO PARTS (PART_NAME,LEAD_TIME,COST,STATUS) VALUES ('et malesuada',24,46,0);
INSERT INTO PARTS (PART_NAME,LEAD_TIME,COST,STATUS) VALUES ('mauris id',4,153,1);
INSERT INTO PARTS (PART_NAME,LEAD_TIME,COST,STATUS) VALUES ('eleifend egestas.',2,146,0);
INSERT INTO PARTS (PART_NAME,LEAD_TIME,COST,STATUS) VALUES ('cursus. Nunc',9,194,1);
INSERT INTO PARTS (PART_NAME,LEAD_TIME,COST,STATUS) VALUES ('vivamus sit',37,93,0);
INSERT INTO PARTS (PART_NAME,LEAD_TIME,COST,STATUS) VALUES ('ac orci.',35,134,0);
INSERT INTO PARTS (PART_NAME,LEAD_TIME,COST,STATUS) VALUES ('arcu. Aliquam',36,154,0);
INSERT INTO PARTS (PART_NAME,LEAD_TIME,COST,STATUS) VALUES ('at auctor',32,56,1);
INSERT INTO PARTS (PART_NAME,LEAD_TIME,COST,STATUS) VALUES ('purus, accumsan',33,12,1);
COMMIT;
----------------------------------------------------------------------------------------------------
SELECT
       *
  FROM PARTS
ORDER BY PART_ID
;
----------------------------------------------------------------------------------------------------
UPDATE PARTS
   SET COST = 130
 WHERE PART_ID = 1
;

COMMIT;
----------------------------------------------------------------------------------------------------
SELECT *
  FROM PARTS
 WHERE PART_ID = 1
 ;
----------------------------------------------------------------------------------------------------
UPDATE PARTS
   SET LEAD_TIME = 30
     , COST = 120
     , STATUS = 1
 WHERE PART_ID = 5
;

COMMIT;
----------------------------------------------------------------------------------------------------
SELECT *
  FROM PARTS
 WHERE PART_ID = 5
 ;
----------------------------------------------------------------------------------------------------
UPDATE PARTS
   SET COST = COST * 1.05
;

COMMIT;
----------------------------------------------------------------------------------------------------
SELECT
       *
  FROM PARTS
ORDER BY PART_ID
;
----------------------------------------------------------------------------------------------------
CREATE TABLE SALES AS
SELECT
       A.ORDER_ID
     , B.ITEM_ID
     , B.PRODUCT_ID
     , B.QUANTITY
     , B.UNIT_PRICE
     , A.STATUS
     , A.ORDER_DATE
     , A.SALESMAN_ID
  FROM ORDERS A
     , ORDER_ITEMS B
  WHERE A.ORDER_ID = B.ORDER_ID
;
----------------------------------------------------------------------------------------------------
SELECT *
  FROM SALES
;
----------------------------------------------------------------------------------------------------
DELETE
  FROM SALES
 WHERE ORDER_ID = 1
   AND ITEM_ID = 1
;

COMMIT;
----------------------------------------------------------------------------------------------------
DELETE
  FROM SALES
 WHERE ORDER_ID = 1
;

COMMIT;
----------------------------------------------------------------------------------------------------
DELETE
  FROM SALES
;

COMMIT;
----------------------------------------------------------------------------------------------------