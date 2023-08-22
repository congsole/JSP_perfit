/*********************** 회원 테이블 *******************************/
CREATE TABLE MEMBER (
    ID VARCHAR2(20) PRIMARY KEY,
    PASSWORD	 VARCHAR2(20),
    NAME VARCHAR2(20),
    PHONE VARCHAR2(15) UNIQUE,
    SMS_YorN CHAR(1),
    ZIP VARCHAR2(10),
    ADDRESS1 VARCHAR2(50),
    ADDRESS2 VARCHAR2(50),
    EMAIL VARCHAR2(50) UNIQUE,
    EMAIL_YorN CHAR(1),
    
    NICKNAME VARCHAR2(20),
    MEM_PIC VARCHAR2(50) default 'img/favicon.png',
    SHAPE VARCHAR2(30) default 'none',
    
    HEIGHT NUMBER default 0,
    WEIGHT NUMBER default 0,
   
    SHOULDER NUMBER default 0,
    BUST NUMBER default 0,
    ARM_LENGTH NUMBER default 0,
    ARM_SIZE NUMBER default 0,
    
    WAIST NUMBER default 0,
    HIP NUMBER default 0,
    THIGH NUMBER default 0,
    LEG_LENGTH NUMBER default 0);


SELECT ID FROM PRODUCT_SIZE WHERE 
    TYPE='ONEPIECE' AND CATEGORY='Mini' 
    AND TOTAL_LENGTH>=0 AND TOTAL_LENGTH<=150 
    AND SHOULDER>=0 AND SHOULDER<=100 
    AND BUST>=null AND BUST<=null /*뭐란말임*/
    AND WAIST>=0 AND WAIST<=100 
    AND ARM_LENGTH>=0 AND ARM_LENGTH<=100;
/*********************************************************/
