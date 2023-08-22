drop table product_code;
drop table product_picture;
drop table product_size;

drop table cart;
drop table order_detail;
drop table order_tbl;
drop table product;

drop table qna_table;
drop table notice_table;

drop table member;

drop sequence p_id_seq;
drop sequence qna_seq;
drop sequence notice_seq;
drop sequence cart_seq;
drop sequence o_seq;
drop sequence od_seq;

/*********************** ȸ�� ���̺� *******************************/
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



 
 
 /****************************   ?  ?     ?  ******************************************/

CREATE TABLE PRODUCT_CODE (
    TYPE_NAME VARCHAR2(20), 
    TYPE_CODE VARCHAR2(5), 
    CATE_NAME VARCHAR2(20), 
    CATE_CODE VARCHAR2(5),
    CODE VARCHAR2(10) PRIMARY KEY
    );

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

/****************************   ?    ?  ******************************************/


CREATE SEQUENCE P_ID_SEQ
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 99999; 
    

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
    
/***************************   ?         ?  *******************************/

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
CREATE SEQUENCE QNA_seq
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 99999;

 CREATE TABLE QNA_TABLE(
 NUM NUMBER PRIMARY KEY,
 ID VARCHAR2(20) REFERENCES MEMBER(ID) NOT NULL,
 Q_TITLE VARCHAR2(30) NOT NULL,
 CONTENT VARCHAR2(1000)NOT NULL,
 Q_DATE DATE NOT NULL,
 TYPE CHAR (1)NOT NULL,
 REP CHAR(1)NOT NULL,
 Q_FILE VARCHAR2(50),
 ANSWER VARCHAR2(1000),
 A_DATE DATE);

CREATE SEQUENCE NOTICE_seq
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 99999;

 CREATE TABLE NOTICE_TABLE(
    NUM NUMBER PRIMARY KEY,
     N_TITLE VARCHAR2(30) NOT NULL,
    CONTENT VARCHAR2(2000)NOT NULL,
    N_DATE DATE,
 N_FILE VARCHAR2(50));




/******************************** dummy data *************************************/
/* manager id */
INSERT INTO MEMBER VALUES(
    'perfit00', '13138148', '���ؼ�', '01096061196', '7', '', '', '', 'qax741@gmail.com', '7', '�Ŵ���', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'perfit01', '13138148', '��ȯ��', '01072379258', '7', '', '', '', 'kingook@naver.com', '7', '�Ŵ���', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'perfit02', '13138148', '�Ž���', '01042750721', '7', '', '', '', 'lumir@gmail.com', '7', '�Ŵ���', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'perfit03', '13138148', '���ؼ�', '01089750946', '7', '', '', '', 'nocturn@naver', '7', '�Ŵ���', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
commit;
/* customer id */
INSERT INTO MEMBER VALUES(
    'solhe', 'q1231132', '���ؼ�', '01045645678', '0', '', '', '', 'bendbtd@naver.com', '1', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'custom1', '12345678', '����', '01011111111', '0', '', '', '', 'ingook@naver.com', '1', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'custom2', '12345678', '������', '01022222222', '1', '', '', '', 'lu@gmail.com', '1', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'babo1', '12345678', '�ڹڹ�', '01033333333', '1', '', '', '', 'turn@naver', '1', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'babo2', '12345678', '������', '01044444444', '1', '', '', '', 'urn@naver', '1', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'babo3', '12345678', 'ȲȲȲ', '01055555555', '1', '', '', '', 'rn@naver', '1', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'cosmos', '12345678', '������', '01066666666', '1', '', '', '', 'tn@naver', '1', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'moms', '12345678', '������', '01077777777', '1', '', '', '', 'maige@naver', '1', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'sommer', '12345678', '�ݱݱ�', '01088883333', '1', '', '', '', 'misd@naver', '1', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'sdadada', '12345678', '�ŽŽ�', '01099999999', '1', '', '', '', 'viam@naver', '1', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);

/* product */
INSERT INTO PRODUCT 
VALUES(
    CONCAT('N01',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'ONEPIECE','Mini','���γ� �Ÿ� �̴� ���ǽ�', 34000, 
    '������ ���� ���̿� ȥ�� ����� ������ ���� ���� �ÿ��� ���밨<br><b>�ε巴�� ������ ���ܰ�</b>�� �ŷ����� ������',
    '���̿�(75%) + ����,����������(25%)', '�����Ŭ����', sysdate, '',
    'skyblue', 'pink', 'black', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('N01',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'ONEPIECE','Mini','���� ���� ���� �̴� ���ǽ�', 39900, 
    '���ϸ������ �ϰ������ Ȱ�뵵�� ���� �̴� ���ǽ�!<br><b>�ÿ��� ���� ����</b>�� ������ ���� �����ϰ� ������ �� �־��',
    '����', '�����Ŭ����', sysdate, '',
    'skyblue', 'black', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('N03',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'ONEPIECE','Long','����� ĲĲ ���ǽ�', 56600, 
    '���ϸ鼭�� ��޽����� ���� �������� ���ǽ�',
    '����', '�����Ŭ����', sysdate, '',
    'skyblue', 'black', 'white', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('N03',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'ONEPIECE','Long','ǻ�� ���� ���� ���ǽ�', 19800, 
    '���������� �ܾ��� ������Ʈ ���ǽ�',
    '����', '�����Ŭ����', sysdate, '',
    'ivory', 'skyblue', 'pink', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('N02',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'ONEPIECE','Medium','������ ������� ���ǽ�', 63000, 
    '���� �������� ���ƿ�!',
    '����', '�����Ŭ����', sysdate, '',
    'black', '', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('N02',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'ONEPIECE','Medium','�ټ� ���� ���� ���ǽ�', 48800, 
    '���ϸ��ϰ� �ֶѷ� ���ѷ� ���� �� �ִ� ���� ���ǽ�! û���� �÷��� �������� �ټ� �������� �����ϰ� �Ա� ���ƿ�',
    '����', '�����Ŭ����', sysdate, '',
    'blue', '', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('N05',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'ONEPIECE','TwoPiece','�ο� �ʹ�� ��Ʈ ���ǽ�', 43200, 
    '���� ��ǰ���� �Ա� ���� ���������� Ȱ�뵵�� ���Ƽ� ���� ��ġ�ִ� ������!',
    '����', '�����Ŭ����', sysdate, '',
    'black', 'ivory', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('N05',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'ONEPIECE','TwoPiece','���� Ʈ���� �¾�', 73800, 
    '��޽����� źź�� Ʈ���� ����� �ΰ�ΰ� �Ա� ���� �¾�',
    '��', '�����Ŭ����', sysdate, '',
    'black', 'pink', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);

INSERT INTO PRODUCT 
VALUES(
    CONCAT('N04',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'ONEPIECE','JumpSuits','������ �Ÿ� ������Ʈ', 37800, 
    '�ڵ� �������� ���� �Ծ��ֽø� ������ ����!�Ǹ鼭 ���밨���� ���� ����� ������!',
    '��', '�����Ŭ����', sysdate, '',
    'black', 'pink', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('O01',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Jacket','��� �ָ��� �� ������ ����', 56900, 
    '����Ʈ�Ͱ��� ����Ʈ������ ������ ��ӽ����� å���� ����!',
    '��', '�����Ŭ����', sysdate, '',
    'black', 'pink', 'darkblue', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('O01',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Jacket','��Ʈ Ʈ���� ����', 65800, 
    '����Ʈ�Ͱ��� ����Ʈ������ ������ ��ӽ����� å���� ����!',
    '��', '�����Ŭ����', sysdate, '',
    'black', 'white', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('O02',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Coat','���̺� �� ������', 70200, 
    '�����ϰ� ������ �˰����� ��� ���� �Ծ����� ��̴��� ������ �� ������',
    '��', '�����Ŭ����', sysdate, '',
    'black', 'white', 'pink', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('O02',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Coat','������ ��ī�� Ʈ��ġ ��Ʈ', 108500, 
    'Ŭ������ ����� ���� �ϼ�!',
    '��', '�����Ŭ����', sysdate, '',
    'black', 'ivory', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('O03',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Jumper','�ڿ﷯ ����� ����', 26000, 
    '������ �ʰ������� �Ա� ���� �Ƴ�� ����',
    '����������', '�����Ŭ����', sysdate, '',
    'black', 'ivory', 'gray', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('O03',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Jumper','���� ����', 61200, 
    '�����⿡ �� �ʿ��� ����! ���ϸ��� �����ϱ� ���� ���尡ġ�� ����ϴ�',
    '����������', '�����Ŭ����', sysdate, '',
    'ivory', '', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('O04',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Cardigan','���̵� ���̺� ���� �����', 34200, 
    '��������� �������� ���� ���� ���� �����!',
    '����������', '�����Ŭ����', sysdate, '',
    'ivory', 'skyblue', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('O04',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Cardigan','���̵� ���̺� ���� �����', 34200, 
    '��������� �������� ���� ���� ���� �����!',
    '����������', '�����Ŭ����', sysdate, '',
    'ivory', 'skyblue', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);

INSERT INTO PRODUCT 
VALUES(
    CONCAT('O04',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Cardigan','���긮���� �� ���� ���� ���� �����', 19800, 
    'ž�̳� �����긮��, ���ǽ��� ���콺 ���� �� ��ġ�� ���� ������̿���!',
    '����������', '�����Ŭ����', sysdate, '',
    'ivory', 'yellow', 'pink', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('O05',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Padding','��� ���� �� �е�', 64800, 
    '���� ī��� ���� ���������� ������ ���尡 ������ �е�',
    '����������', '�����Ŭ����', sysdate, '',
    'ivory', 'black', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('O05',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Padding','�Ҵ��� �Ŀ�� �� �е�', 75600, 
    '������ �����Ϸ� ���� ����־� �δ���� ����ϰ� �����ϰ� ������ �� �ִ� ���е�',
    '����������', '�����Ŭ����', sysdate, '',
    'ivory', 'black', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('T01',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'TOP','T-Shirts','���긮���� �� ����� ���� ���� Ƽ', 19600, 
    '�� �������� �ÿ��ϰ�- ���Ĵٵ� ������ �������� ���� ����� ��',
    '����������', '�����Ŭ����', sysdate, '',
    'pink', 'white', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('T01',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'TOP','T-Shirts','���긮���� źź ���� ũ�� ���� Ƽ', 11800, 
    '�������� �������� ���� ���� �� �ִ� źź�� ���긮���� ũ�� Ƽ',
    '����������', '�����Ŭ����', sysdate, '',
    'pink', 'white', 'gray', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('T02',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'TOP','Hood','���� �ĵ� ���� ��Ʈ', 30600, 
    '�ĵ� ���� �����ο� ������ �������� ���� ĳ�־��� ������ ��Ʈ �����̿���!',
    '����������', '�����Ŭ����', sysdate, '',
    'black', 'ivory', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('T03',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'TOP','MANtoMAN','����Ʈ ������', 32400, 
    'Űġ�� �÷����� �ŷ����� ������! ���ϸ��� �ڵ��ϱ� ���� ��õ�����!',
    '����������', '�����Ŭ����', sysdate, '',
    'gray', 'pink', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('T04',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'TOP','Knitted','�̴� ������ ��Ʈ ������Ͻ�', 25500, 
    '�յ� ���� ���� ���� �� �ִ� ���������� �ܵ��� ���� ��� ���̾���ص� �� ��︮�� ������Ͻ� �÷����� �����غ�����',
    '����������', '�����Ŭ����', sysdate, '',
    'black', 'skyblue', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('T05',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'TOP','Sleeveless','ĸ���� ���̺� Ʃ��ž', 13800, 
    '�����е�� �ӿ� ���� ������ �ʿ����� �ε巴�� �����ϸ� ĸ�� ����Ǿ� �ִ� ���� �� ť��ž �Ұ��ص����!',
    '����������', '�����Ŭ����', sysdate, '',
    'gray', 'white', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('T05',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'TOP','Sleeveless','���긮���� ũ���� ���� ������ ����', 15400, 
    '���ϴ´�� ��� ���� ������ ������ ����',
    '����������', '�����Ŭ����', sysdate, '',
    'yellow', 'ivory', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('T06',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'TOP','Blouse','ũ���� ��Ŭ���� ���ư ũ�� ����', 29900, 
    '�ıⰡ ����� ũ���� ��Ŭ������������ ������ ���ư ũ�Ӽ�������',
    '����������', '�����Ŭ����', sysdate, '',
    'red', 'blue', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('T06',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'TOP','Blouse','��� �ʸ� ���� ���콺', 29500, 
    '���ϸ����� ���� ���ǽ������ Ȱ���ϱ� ���ƿ�',
    '����������', '�����Ŭ����', sysdate, '',
    'ivory', 'black', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('P01',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'PANTS','Demin','better jeans ���� ��Ʈ����Ʈ', 31600, 
    '���� ���ܰ����� �ѿ������� ���� ���� ���� �� �ִ� ����',
    '����������', '�����Ŭ����', sysdate, '',
    'black', 'white', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('P02',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'PANTS','Slacks','������ ��� �˵� �մٸ� ����', 36000, 
    '�ܱⰣ�� ���� ������ �˵� ���� ��� ����',
    '����������', '�����Ŭ����', sysdate, '',
    'yellow', 'black', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('P02',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'PANTS','Slacks','��� �˵� �ذ����� ������ ���� ������ ����', 36000, 
    '�ذ� ���̿���Ʈ�� �ѹ�, �̱��� �������� �ι� ���Ÿ� �������ִ� ������ ���尨�� ������ �����Դϴ�.',
    '����������', '�����Ŭ����', sysdate, '',
    'black', '', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('P03',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'PANTS','Linen','��� ������ ���� ��� ���̵� ����', 30400, 
    '�ٸ��� ��� ���̴� ���̿���Ʈ�� �����ο� ��ü������ ��- Ŀ�� �� �ִ� ���̵� ���� ����������',
    '����', '�����Ŭ����', sysdate, '',
    'ivory', 'black', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('P04',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'PANTS','Short','better jeans �� ����', 29900, 
    '�ϸ� "����� ���� Ŀ�� ��"���� �Ҹ��� ���� ���� ����!',
    '����', '�����Ŭ����', sysdate, '',
    'blue', 'skyblue', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('P04',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'PANTS','Short','������ �����̾� ��ư ���� A���� ����', 39200, 
    '����� ���밨�� ���� ������ �־��־� ���� ���ϸ��ϰ� �Ծ����� ���߿� ���� ��ư ���ܰ� ���� �� ���� ����Ƽ�� �������� ������ ��������',
    '��', '�����Ŭ����', sysdate, '',
    'ivory', 'yellow', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('S01',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'SKIRT','Mini','�õ��� ������ ��ĿƮ', 29800, 
    '���ϸ��� �԰� ����, �������� �Ծ����� �õ��� ������ ��ĿƮ',
    '��', '�����Ŭ����', sysdate, '',
    'black', 'yellow', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('S01',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'SKIRT','Mini','�õ��� ������ �� ��ĿƮ', 29900, 
    '����ϸ鼭 ����� �������� ����ĿƮ, �ϰ���, ��ٷ����� ��õ�帮�� ���ϸ����̿���',
    '��', '�����Ŭ����', sysdate, '',
    'black', 'ivory', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('S02',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'SKIRT','Medium','�¿� ���� �̵� ��ĿƮ', 33500, 
    'Ȳ�ݺ����� ������ִ� �̵������ ��ĿƮ����',
    '��', '�����Ŭ����', sysdate, '',
    'black', 'white', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('S02',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'SKIRT','Medium','���� �÷��� ��ĿƮ', 43200, 
    'ǳ���ϰ� �������� A������ �̿� ������ �����ְ� ��ü�� ���� �����ϰ� �����༭ ���� �� ���� ��ĿƮ����',
    '��', '�����Ŭ����', sysdate, '',
    'black', 'white', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('S03',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'SKIRT','Long','��� ���ϸ� H ��ĿƮ', 23500, 
    '��ӿ� ��︮�� ���ϸ� ��ĿƮ����',
    '��', '�����Ŭ����', sysdate, '',
    'black', 'pink', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('S03',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'SKIRT','Long','���� �÷��� ��ĿƮ', 33000, 
    '���� ��︮�� ȭ���� �������� �������� ��ĿƮ',
    '��', '�����Ŭ����', sysdate, '',
    'black', 'yellow', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit ����', 'KOREA', '���� �� 1��', 'perfit / 010-8975-0946'
);




insert into PRODUCT_SIZE values((select p_id from product where p_name='���γ� �Ÿ� �̴� ���ǽ�'), 'ONEPIECE', 'Mini', 'free', 25, 44, 62, 72, 81, 0, 0, 0, 0, 0);
update PRODUCT set P_SHAPE='Triangle' where P_ID=((select P_ID from PRODUCT where P_NAME='���γ� �Ÿ� �̴� ���ǽ�')); 

insert into PRODUCT_SIZE values((select p_id from product where p_name='���� ���� ���� �̴� ���ǽ�'), 'ONEPIECE', 'Mini', 'free', 36, 47, 44, 51, 84, 0, 0, 0, 0, 0);
update PRODUCT set P_SHAPE='Triangle' where P_ID=((select P_ID from PRODUCT where P_NAME='���� ���� ���� �̴� ���ǽ�')); 

insert into PRODUCT_SIZE values((select p_id from product where p_name='������ ������� ���ǽ�'), 'ONEPIECE', 'Medium', 'free', 34, 43, 35, 43, 88, 0, 0, 0, 0, 0);
update PRODUCT set P_SHAPE='Hourglass' where P_ID=((select P_ID from PRODUCT where P_NAME='������ ������� ���ǽ�')); 

insert into PRODUCT_SIZE values((select p_id from product where p_name='�ټ� ���� ���� ���ǽ�'), 'ONEPIECE', 'Medium', 'free', 51, 57, 62, 60, 87, 0, 0, 0, 0, 0);
update PRODUCT set P_SHAPE='Triangle' where P_ID=((select P_ID from PRODUCT where P_NAME='�ټ� ���� ���� ���ǽ�')); 

insert into PRODUCT_SIZE values((select p_id from product where p_name='����� ĲĲ ���ǽ�'), 'ONEPIECE', 'Long', 'free', 33, 49, 40, 55, 116, 0, 0, 0, 0, 0);
update PRODUCT set P_SHAPE='Triangle' where P_ID=((select P_ID from PRODUCT where P_NAME='����� ĲĲ ���ǽ�')); 

insert into PRODUCT_SIZE values((select p_id from product where p_name='ǻ�� ���� ���� ���ǽ�'), 'ONEPIECE', 'Long', 'free', 32, 34, 30, 34, 128, 0, 0, 0, 0, 0);
update PRODUCT set P_SHAPE='Hourglass' where P_ID=((select P_ID from PRODUCT where P_NAME='ǻ�� ���� ���� ���ǽ�')); 

insert into PRODUCT_SIZE values((select p_id from product where p_name='������ �Ÿ� ������Ʈ'), 'ONEPIECE', 'JumpSuits', 'free',  44, 31, 28, 49, 128, 0, 0, 0, 0, 0);
update PRODUCT set P_SHAPE='Triangle' where P_ID=((select P_ID from PRODUCT where P_NAME='������ �Ÿ� ������Ʈ')); 

insert into PRODUCT_SIZE values((select p_id from product where p_name='�ο� �ʹ�� ��Ʈ ���ǽ�'), 'ONEPIECE', 'TwoPiece', 'free', 50, 54, 50, 31, 41, 0, 0, 0, 0, 0);
update PRODUCT set P_SHAPE='InvertedTriangle' where P_ID=((select P_ID from PRODUCT where P_NAME='�ο� �ʹ�� ��Ʈ ���ǽ�')); 

insert into PRODUCT_SIZE values((select p_id from product where p_name='���� Ʈ���� �¾�'), 'ONEPIECE', 'TwoPiece', 'free', 60, 43, 33, 47, 83, 0, 0, 0, 0, 0);
update PRODUCT set P_SHAPE='Triangle' where P_ID=((select P_ID from PRODUCT where P_NAME='���� Ʈ���� �¾�')); 




insert into PRODUCT_PICTURE values(
    (select p_id from product where p_name='���γ� �Ÿ� �̴� ���ǽ�'), 
    'cdetail1.png', 'cdetail2.jpg', '', '', '', '', '', 'cDetail8.PNG', '',
    'cmodel1.PNG', 'cmodel2.jpg', 'cmodel3.PNG', 'cmodel4.PNG', 'ccolor1.png', 'ccolor2.png', 'ccolor3.png', '', ''
);
insert into PRODUCT_PICTURE values(
    (select p_id from product where p_name='���� ���� ���� �̴� ���ǽ�'), 
    'smoDetail.jpg', 'smoDetail2.jpg', '', '', '', '', '', 'smoDetail8.PNG', '',
    'smoModel.jpg', '', '', '', '', '', '', '', ''
);
insert into PRODUCT_PICTURE values(
    (select p_id from product where p_name='������ ������� ���ǽ�'), 
    'bsoDetail.jpg', '', '', '', '', '', '', 'bsoDetail8.PNG', '',
    'bsoModel.jpg', 'bsoDetail.jpg', '', '', '', '', '', '', ''
);
insert into PRODUCT_PICTURE values(
    (select p_id from product where p_name='�ټ� ���� ���� ���ǽ�'), 
    'tdsoDetail.jpg', '', '', '', '', '', '', 'tdsoDetail8.PNG', '',
    'tdsoModel.jpg', 'tdsoDetail.jpg', '', '', '', '', '', '', ''

);
insert into PRODUCT_PICTURE values(
    (select p_id from product where p_name='����� ĲĲ ���ǽ�'), 
    'lkoDetail1.jpg', 'lkoDetail2.jpg', 'lkoDetail3.jpg', '', '', '', '', 'lkoDetail8.PNG', '',
    'lkoModel.jpg', 'lkoDetail1.jpg', 'lkoDetail2.jpg', 'lkoDetail3.jpg', '', '', '', '', ''

);
insert into PRODUCT_PICTURE values(
    (select p_id from product where p_name='ǻ�� ���� ���� ���ǽ�'), 
    'pgsoDetail1.jpg', 'pgsoDetail2.jpg', 'pgsoDetail3.jpg', 'pgsoDetail4.jpg', '', '', '', 'pgsoDetail8.PNG', '',
    'pgsoModel.jpg', 'pgsoDetail1.jpg', 'pgsoDetail2.jpg', 'pgsoDetail3.jpg', 'pgsoDetail4.jpg', '', '', '', ''

);
insert into PRODUCT_PICTURE values(
    (select p_id from product where p_name='������ �Ÿ� ������Ʈ'), 
    'esjDetail.jpg', '', '', '', '', '', '', 'esjDetail8.PNG', 'esjDetail9.PNG',
    'esjModel.jpg', 'esjDetail.jpg', '', '', '', '', '', '', ''

);
insert into PRODUCT_PICTURE values(
    (select p_id from product where p_name='�ο� �ʹ�� ��Ʈ ���ǽ�'), 
    'rntDetail1.jpg', 'rntDetail2.jpg', 'rntDetail3.jpg', 'rntDetail4.jpg', '', '', '', 'rntDetail8.PNG', 'rntDetail9.PNG',
    'rntModel.jpg', 'rntDetail1.jpg', 'rntDetail2.jpg', 'rntDetail3.jpg', 'rntDetail4.jpg', '', '', '', ''

);
insert into PRODUCT_PICTURE values(
    (select p_id from product where p_name='���� Ʈ���� �¾�'), 
    'otsDetail1.jpg', 'otsDetail2.jpg', 'otsDetail3.jpg', 'otsDetail4.jpg', '', '', '', '', '',
    'otsModel.jpg', 'otsDetail1.jpg', 'otsDetail2.jpg', 'otsDetail3.jpg', 'otsDetail4.jpg', '', '', '', ''

);

/***************************** cart, order etc...*********************************/
CREATE SEQUENCE cart_seq
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 99999;
CREATE TABLE CART (
    CART_NUM VARCHAR2(10) PRIMARY KEY,
    M_ID VARCHAR2(20) NOT NULL references MEMBER(ID),
    P_ID VARCHAR2(20) NOT NULL references PRODUCT(P_ID),
    P_IMG VARCHAR2(50),
    P_NAME VARCHAR2(200) NOT NULL,
    P_AMOUNT NUMBER NOT NULL,
    P_COLOR VARCHAR2(20) NOT NULL,
    P_SIZE VARCHAR2(20) NOT NULL,
    P_OPTION VARCHAR2(20),
    P_PRICE NUMBER NOT NULL
);

CREATE SEQUENCE o_seq
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 99999;

CREATE SEQUENCE od_seq
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 99999;

CREATE TABLE ORDER_TBL (
    ORDER_NUM VARCHAR2(10) primary key,
    M_ID VARCHAR2(20) references MEMBER(ID),
    D_NAME VARCHAR2(20),
    D_PHONE VARCHAR2(15),
    D_ZIP VARCHAR2(10),
    D_ADDRESS1 VARCHAR2(50),
    D_ADDRESS2 VARCHAR2(50),
    ORDER_DATE DATE,
    D_DATE DATE
); /*D_�� ���������� ���մϴ�.*/
CREATE TABLE ORDER_DETAIL (
    ORDER_DETAIL_NUM VARCHAR2(10) primary key,
    ORDER_NUM VARCHAR2(10) references ORDER_TBL(ORDER_NUM),
    P_ID VARCHAR2(20) references PRODUCT(P_ID),
    P_IMG VARCHAR2(50),
    P_NAME VARCHAR2(200) NOT NULL,
    P_AMOUNT NUMBER NOT NULL,
    P_COLOR VARCHAR2(20) NOT NULL,
    P_SIZE VARCHAR2(20) NOT NULL,
    P_OPTION VARCHAR2(20),
    P_PRICE NUMBER NOT NULL
);


INSERT INTO NOTICE_TABLE VALUES
(NOTICE_SEQ.NEXTVAL, '�������� �Դϴ�.','�����Դϴ�
���� ��Ź�帳�ϴ�
�����մϴ�.','2023/07/03','����ĸó.PNG');
INSERT INTO NOTICE_TABLE VALUES
(NOTICE_SEQ.NEXTVAL, '�̺�Ʈ ���� �ȳ�.','�̺�Ʈ ���� ������
�Ʒ��� ÷���մϴ� 
���� ��Ź�帳�ϴ� 
�����մϴ�.','2023/07/03','�ٿ�ε�.png');
INSERT INTO NOTICE_TABLE VALUES
(NOTICE_SEQ.NEXTVAL, '����Ʈ ���� �ȳ�.','����Ʈ�� ���õ� ������
�Ʒ��� ÷���մϴ� 
���� ��Ź�帳�ϴ� 
�����մϴ�.','2023/07/03','�ٿ�ε�.jpg');
INSERT INTO NOTICE_TABLE VALUES
(NOTICE_SEQ.NEXTVAL, '���� ���� ���� �ȳ�.','���� �̺�Ʈ�� ���õ� ������
�Ʒ��� ÷���մϴ� 
���� �̿� ��Ź�帳�ϴ� 
�����մϴ�.','2023/07/03','images.jpg');
commit;