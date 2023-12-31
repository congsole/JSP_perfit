/****************************   ǰ  ڵ     ̺  ******************************************/

CREATE TABLE PRODUCT_CODE (
    TYPE_NAME VARCHAR2(20), 
    TYPE_CODE VARCHAR2(5), 
    CATE_NAME VARCHAR2(20), 
    CATE_CODE VARCHAR2(5),
    CODE VARCHAR2(10) PRIMARY KEY
    );
DESC PRODUCT_CODE;
INSERT INTO PRODUCT_CODE VALUES ('OUTER', 'O', 'Jacket', '01', 'O01');
INSERT INTO PRODUCT_CODE VALUES ('OUTER', 'O', 'Coat', '02', 'O02');
INSERT INTO PRODUCT_CODE VALUES ('OUTER', 'O', 'Jumper', '03', 'O03');
INSERT INTO PRODUCT_CODE VALUES ('OUTER', 'O', 'Cardigan', '04', 'O04');
INSERT INTO PRODUCT_CODE VALUES ('OUTER', 'O', 'Padding', '05', 'O05');

INSERT INTO PRODUCT_CODE VALUES ('TOP', 'T', 'T-Shirts', '01', 'T01');
INSERT INTO PRODUCT_CODE VALUES ('TOP', 'T', 'Hood', '02', 'T02');
INSERT INTO PRODUCT_CODE VALUES ('TOP', 'T', 'MANtoMAN', '03', 'T03');
INSERT INTO PRODUCT_CODE VALUES ('TOP', 'T', 'Knitted', '04', 'T04');
INSERT INTO PRODUCT_CODE VALUES ('TOP', 'T', 'Sleeveless', '05', 'T05');
INSERT INTO PRODUCT_CODE VALUES ('TOP', 'T', 'Blouse', '06', 'T06');
INSERT INTO PRODUCT_CODE VALUES ('TOP', 'T', 'Shirts', '07', 'T07');

INSERT INTO PRODUCT_CODE VALUES ('PANTS', 'P', 'Denim', '01', 'P01');
INSERT INTO PRODUCT_CODE VALUES ('PANTS', 'P', 'Slacks', '02', 'P02');
INSERT INTO PRODUCT_CODE VALUES ('PANTS', 'P', 'Linen', '03', 'P03');
INSERT INTO PRODUCT_CODE VALUES ('PANTS', 'P', 'Short', '04', 'P04');

INSERT INTO PRODUCT_CODE VALUES ('SKIRT', 'S', 'Mini', '01', 'S01');
INSERT INTO PRODUCT_CODE VALUES ('SKIRT', 'S', 'Medium', '02', 'S02');
INSERT INTO PRODUCT_CODE VALUES ('SKIRT', 'S', 'Long', '03', 'S03');

INSERT INTO PRODUCT_CODE VALUES ('ONEPIECE', 'N', 'Mini', '01', 'N01');
INSERT INTO PRODUCT_CODE VALUES ('ONEPIECE', 'N', 'Medium', '02', 'N02');
INSERT INTO PRODUCT_CODE VALUES ('ONEPIECE', 'N', 'Long', '03', 'N03');
INSERT INTO PRODUCT_CODE VALUES ('ONEPIECE', 'N', 'JumpSuits', '04', 'N04');
INSERT INTO PRODUCT_CODE VALUES ('ONEPIECE', 'N', 'TwoPeice', '05', 'N05');

COMMIT;

/****************************   ǰ    ̺  ******************************************/


CREATE SEQUENCE P_ID_SEQ
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 99999
NOCACHE; 

    

select * from product;


CREATE TABLE PRODUCT (
    P_ID VARCHAR2(10) PRIMARY KEY, 
    P_TYPE VARCHAR2(10) NOT NULL,
    P_CATEGORY VARCHAR2(10) NOT NULL,
    P_NAME VARCHAR2(200) NOT NULL,
    P_PRICE	NUMBER NOT NULL,
    
    P_DESCRIPTION VARCHAR2(500),
    
    P_FABRIC VARCHAR2(100),
    P_CLEANING	VARCHAR2(500),
    P_DATE DATE NOT NULL,
    P_SHAPE	VARCHAR2(30),
    
    P_COLOR_01	VARCHAR2(20) NOT NULL,
    P_COLOR_02	VARCHAR2(20),
    P_COLOR_03	VARCHAR2(20),
    P_COLOR_04	VARCHAR2(20),
    P_COLOR_05	VARCHAR2(20),
    P_COLOR_06	VARCHAR2(20),
    P_COLOR_07	VARCHAR2(20),
    P_COLOR_08	VARCHAR2(20),
    P_COLOR_09	VARCHAR2(20),
    P_COLOR_10	VARCHAR2(20),
    P_SIZE_01	VARCHAR2(20) NOT NULL,
    P_SIZE_02	VARCHAR2(20),
    P_SIZE_03	VARCHAR2(20),
    P_SIZE_04	VARCHAR2(20),
    P_SIZE_05	VARCHAR2(20),
    P_SIZE_06	VARCHAR2(20),
    P_SIZE_07	VARCHAR2(20),
    P_SIZE_08	VARCHAR2(20),
    P_SIZE_09	VARCHAR2(20),
    P_SIZE_10	VARCHAR2(20),
    P_OPTION_01	VARCHAR2(20),
    P_OPTION_02	VARCHAR2(20),
    P_OPTION_03	VARCHAR2(20),
    P_OPTION_04	VARCHAR2(20),
    P_OPTION_05	VARCHAR2(20),
    P_OPTION_06	VARCHAR2(20),
    P_OPTION_07	VARCHAR2(20),
    P_OPTION_08	VARCHAR2(20),
    P_OPTION_09	VARCHAR2(20),
    P_OPTION_10	VARCHAR2(20),
    
    COMPANY	VARCHAR2(20),
    COUNTRY	VARCHAR2(20),
    WARRANTY VARCHAR2(20),
    A_S	VARCHAR2(50)
    );
    
/***************************   ǰ         ̺  *******************************/

CREATE TABLE PRODUCT_PICTURE (
    ID VARCHAR2(20) references PRODUCT(P_ID) PRIMARY KEY,
    detail1	VARCHAR2(50),
    detail2	VARCHAR2(50),
    detail3	VARCHAR2(50),
    detail4	VARCHAR2(50),
    detail5	VARCHAR2(50),
    detail6	VARCHAR2(50),
    detail7	VARCHAR2(50),
    detail8	VARCHAR2(50),
    detail9	VARCHAR2(50),
    model1	VARCHAR2(50),
    model2	VARCHAR2(50),
    model3	VARCHAR2(50),
    model4	VARCHAR2(50),
    model5	VARCHAR2(50),
    model6	VARCHAR2(50),
    model7	VARCHAR2(50),
    model8	VARCHAR2(50),
    model9	VARCHAR2(50)	
);

/******************************* product size **********************************/
CREATE TABLE PRODUCT_SIZE (
    ID VARCHAR2(10) references PRODUCT(P_ID), 
    
    TYPE VARCHAR2(10),
    CATEGORY VARCHAR2(10),
    P_SIZE VARCHAR2(10),
    
    SHOULDER NUMBER,
    BUST NUMBER,
    WAIST NUMBER,
    HIP NUMBER,
    TOTAL_LENGTH NUMBER,
    ARM_LENGTH NUMBER,
    ARM NUMBER,
    RISE NUMBER,
    THIGH NUMBER,
    HEM NUMBER
);