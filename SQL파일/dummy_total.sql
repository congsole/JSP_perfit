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
    'perfit00', '13138148', '손해솔', '01096061196', '7', '', '', '', 'qax741@gmail.com', '7', '매니저', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'perfit01', '13138148', '오환국', '01072379258', '7', '', '', '', 'kingook@naver.com', '7', '매니저', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'perfit02', '13138148', '신승진', '01042750721', '7', '', '', '', 'lumir@gmail.com', '7', '매니저', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'perfit03', '13138148', '이준성', '01089750946', '7', '', '', '', 'nocturn@naver', '7', '매니저', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
commit;
/* customer id */
INSERT INTO MEMBER VALUES(
    'solhe', 'q1231132', '김해솔', '01045645678', '0', '', '', '', 'bendbtd@naver.com', '1', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'custom1', '12345678', '김김김', '01011111111', '0', '', '', '', 'ingook@naver.com', '1', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'custom2', '12345678', '이이이', '01022222222', '1', '', '', '', 'lu@gmail.com', '1', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'babo1', '12345678', '박박박', '01033333333', '1', '', '', '', 'turn@naver', '1', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'babo2', '12345678', '최최최', '01044444444', '1', '', '', '', 'urn@naver', '1', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'babo3', '12345678', '황황황', '01055555555', '1', '', '', '', 'rn@naver', '1', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'cosmos', '12345678', '정정정', '01066666666', '1', '', '', '', 'tn@naver', '1', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'moms', '12345678', '한한한', '01077777777', '1', '', '', '', 'maige@naver', '1', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'sommer', '12345678', '금금금', '01088883333', '1', '', '', '', 'misd@naver', '1', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO MEMBER VALUES(
    'sdadada', '12345678', '신신신', '01099999999', '1', '', '', '', 'viam@naver', '1', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);

/* product */
INSERT INTO PRODUCT 
VALUES(
    CONCAT('N01',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'ONEPIECE','Mini','셀로나 셔링 미니 원피스', 34000, 
    '가볍고 얇은 레이온 혼방 소재로 무더운 여름 시즌에 시원한 착용감<br><b>부드럽고 유연한 원단감</b>이 매력적인 아이템',
    '레이온(75%) + 폴리,폴리에스터(25%)', '드라이클리닝', sysdate, '',
    'skyblue', 'pink', 'black', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('N01',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'ONEPIECE','Mini','셀디 린넨 나시 미니 원피스', 39900, 
    '데일리룩부터 하객룩까지 활용도가 좋은 미니 원피스!<br><b>시원한 린넨 소재</b>로 무더운 여름 쾌적하게 입으실 수 있어요',
    '린넨', '드라이클리닝', sysdate, '',
    'skyblue', 'black', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('N03',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'ONEPIECE','Long','로즈앙 캉캉 원피스', 56600, 
    '편하면서도 고급스러운 무드 느껴지는 원피스',
    '린넨', '드라이클리닝', sysdate, '',
    'skyblue', 'black', 'white', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('N03',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'ONEPIECE','Long','퓨어 골지 슬림 원피스', 19800, 
    '여성스럽고 단아한 슬림니트 원피스',
    '린넨', '드라이클리닝', sysdate, '',
    'ivory', 'skyblue', 'pink', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('N02',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'ONEPIECE','Medium','베르텔 스퀘어넥 원피스', 63000, 
    '원단 정말정말 좋아요!',
    '린넨', '드라이클리닝', sysdate, '',
    'black', '', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('N02',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'ONEPIECE','Medium','텐셀 데님 셔츠 원피스', 48800, 
    '데일리하게 휘뚜루 마뚜루 입을 수 있는 데님 원피스! 청량한 컬러와 차르르한 텐셀 원단으로 쾌적하게 입기 좋아요',
    '린넨', '드라이클리닝', sysdate, '',
    'blue', '', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('N05',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'ONEPIECE','TwoPiece','로에 꽈배기 니트 투피스', 43200, 
    '각각 단품으로 입기 좋은 디자인으로 활용도가 높아서 소장 가치있는 아이템!',
    '린넨', '드라이클리닝', sysdate, '',
    'black', 'ivory', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('N05',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'ONEPIECE','TwoPiece','오헬 트위드 셋업', 73800, 
    '고급스럽고 탄탄한 트위드 소재로 두고두고 입기 좋은 셋업',
    '면', '드라이클리닝', sysdate, '',
    'black', 'pink', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);

INSERT INTO PRODUCT 
VALUES(
    CONCAT('N04',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'ONEPIECE','JumpSuits','에르쉬 셔링 점프수트', 37800, 
    '코디 걱정없이 슥슥 입어주시면 여성미 업업!되면서 착용감까지 정말 편안한 아이템!',
    '면', '드라이클리닝', sysdate, '',
    'black', 'pink', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('O01',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Jacket','모던 솔리드 숏 슬리브 자켓', 56900, 
    '베스트핏감과 베스트원단이 더해져 썸머시즌을 책임질 자켓!',
    '면', '드라이클리닝', sysdate, '',
    'black', 'pink', 'darkblue', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('O01',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Jacket','센트 트위드 자켓', 65800, 
    '베스트핏감과 베스트원단이 더해져 썸머시즌을 책임질 자켓!',
    '면', '드라이클리닝', sysdate, '',
    'black', 'white', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('O02',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Coat','메이빈 롱 무스탕', 70200, 
    '몽글하고 포근한 촉감으로 기분 좋게 입어지는 페미닌한 무드의 롱 무스탕',
    '면', '드라이클리닝', sysdate, '',
    'black', 'white', 'pink', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('O02',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Coat','세느아 노카라 트렌치 코트', 108500, 
    '클래식한 무드로 룩을 완성!',
    '면', '드라이클리닝', sysdate, '',
    'black', 'ivory', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('O03',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Jumper','코울러 블루종 점퍼', 26000, 
    '봄부터 초가을까지 입기 좋은 아노락 자켓',
    '폴리에스터', '드라이클리닝', sysdate, '',
    'black', 'ivory', 'gray', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('O03',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Jumper','리스 점퍼', 61200, 
    '간절기에 꼭 필요한 점퍼! 데일리로 착용하기 좋아 소장가치가 높답니다',
    '폴리에스터', '드라이클리닝', sysdate, '',
    'ivory', '', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('O04',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Cardigan','제이드 케이블 나시 가디건', 34200, 
    '간절기부터 여름까지 즐기기 좋은 나시 가디건!',
    '폴리에스터', '드라이클리닝', sysdate, '',
    'ivory', 'skyblue', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('O04',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Cardigan','제이드 케이블 나시 가디건', 34200, 
    '간절기부터 여름까지 즐기기 좋은 나시 가디건!',
    '폴리에스터', '드라이클리닝', sysdate, '',
    'ivory', 'skyblue', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);

INSERT INTO PRODUCT 
VALUES(
    CONCAT('O04',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Cardigan','에브리데이 쿨 골지 여리 리본 가디건', 19800, 
    '탑이나 슬리브리스, 원피스나 블라우스 위에 툭 걸치기 좋은 가디건이에요!',
    '폴리에스터', '드라이클리닝', sysdate, '',
    'ivory', 'yellow', 'pink', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('O05',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Padding','멜랑 퀄팅 숏 패딩', 64800, 
    '양털 카라와 퀄팅 디자인으로 러블리한 무드가 가득한 패딩',
    '폴리에스터', '드라이클리닝', sysdate, '',
    'ivory', 'black', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('O05',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'OUTER','Padding','소느아 파우더 숏 패딩', 75600, 
    '세세한 디테일로 핏을 잡아주어 부담없이 편안하고 따뜻하게 착용할 수 있는 숏패딩',
    '폴리에스터', '드라이클리닝', sysdate, '',
    'ivory', 'black', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('T01',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'TOP','T-Shirts','에브리데이 쿨 에어리즘 슬림 반팔 티', 19600, 
    '한 여름에도 시원하게- 스탠다드 핏으로 군더더기 없이 깔끔한 핏',
    '폴리에스터', '드라이클리닝', sysdate, '',
    'pink', 'white', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('T01',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'TOP','T-Shirts','에브리데이 탄탄 여리 크롭 반팔 티', 11800, 
    '변형없이 오래도록 꺼내 입을 수 있는 탄탄한 에브리데이 크롭 티',
    '폴리에스터', '드라이클리닝', sysdate, '',
    'pink', 'white', 'gray', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('T02',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'TOP','Hood','조이 후드 집업 니트', 30600, 
    '후드 집업 디자인에 투웨이 디테일을 더해 캐주얼한 무드의 니트 집업이에요!',
    '폴리에스터', '드라이클리닝', sysdate, '',
    'black', 'ivory', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('T03',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'TOP','MANtoMAN','세인트 맨투맨', 32400, 
    '키치한 컬러감이 매력적인 맨투맨! 데일리로 코디하기 좋아 추천드려요!',
    '폴리에스터', '드라이클리닝', sysdate, '',
    'gray', 'pink', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('T04',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'TOP','Knitted','미뉴 투웨이 니트 슬리브니스', 25500, 
    '앞뒤 구분 없이 입을 수 있는 디자인으로 단독은 물론 어디에 레이어드해도 잘 어울리는 슬리브니스 컬러별로 소장해보세요',
    '폴리에스터', '드라이클리닝', sysdate, '',
    'black', 'skyblue', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('T05',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'TOP','Sleeveless','캡내장 로이브 튜브탑', 13800, 
    '내장패드로 속옷 따로 입으실 필요없어용 부드럽고 쫀존하며 캡이 내장되어 있는 슬림 끈 큐브탑 소개해드려요!',
    '폴리에스터', '드라이클리닝', sysdate, '',
    'gray', 'white', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('T05',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'TOP','Sleeveless','에브리데이 크리미 스판 투웨이 나시', 15400, 
    '원하는대로 양면 착용 가능한 투웨이 나시',
    '폴리에스터', '드라이클리닝', sysdate, '',
    'yellow', 'ivory', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('T06',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'TOP','Blouse','크러쉬 링클프리 백버튼 크롭 셔츠', 29900, 
    '후기가 보장된 크러쉬 링클프리원단으로 제작한 백버튼 크롭셔츠에요',
    '폴리에스터', '드라이클리닝', sysdate, '',
    'red', 'blue', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('T06',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'TOP','Blouse','썸머 필립 반팔 블라우스', 29500, 
    '데일리룩은 물론 오피스룩까지 활용하기 좋아요',
    '폴리에스터', '드라이클리닝', sysdate, '',
    'ivory', 'black', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('P01',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'PANTS','Demin','better jeans 슬림 스트레이트', 31600, 
    '얇은 원단감으로 한여름부터 가을 내내 즐기실 수 있는 팬츠',
    '폴리에스터', '드라이클리닝', sysdate, '',
    'black', 'white', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('P02',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'PANTS','Slacks','라이프 썸머 쫀득 롱다리 팬츠', 36000, 
    '단기간에 만장 돌파한 쫀득 팬츠 썸머 버전',
    '폴리에스터', '드라이클리닝', sysdate, '',
    'yellow', 'black', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('P02',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'PANTS','Slacks','썸머 쫀득 극강하이 볼륨핏 슬림 부츠컷 팬츠', 36000, 
    '극강 하이웨스트로 한번, 쫄깃한 원단으로 두번 몸매를 보정해주는 경쾌한 기장감의 부츠컷 팬츠입니다.',
    '폴리에스터', '드라이클리닝', sysdate, '',
    'black', '', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('P03',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'PANTS','Linen','썸머 라이프 린넨 밴딩 와이드 팬츠', 30400, 
    '다리가 길어 보이는 하이웨스트로 디자인에 하체라인을 싹- 커버 해 주는 와이드 핏의 슬랙스에요',
    '린넨', '드라이클리닝', sysdate, '',
    'ivory', 'black', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('P04',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'PANTS','Short','better jeans 숏 데님', 29900, 
    '일명 "허벅지 군살 커버 핏"으로 불리는 데님 하프 팬츠!',
    '데님', '드라이클리닝', sysdate, '',
    'blue', 'skyblue', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('P04',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'PANTS','Short','라이프 프리미엄 코튼 하프 A라인 팬츠', 39200, 
    '편안한 착용감을 위해 스판을 넣어주어 보다 데일리하게 입어지는 시중에 흔한 코튼 원단과 비교할 수 없는 퀄리티의 원단으로 제작한 팬츠에요',
    '면', '드라이클리닝', sysdate, '',
    'ivory', 'yellow', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('S01',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'SKIRT','Mini','올데이 베이직 스커트', 29800, 
    '매일매일 입고 싶은, 오래도록 입어지는 올데이 베이직 스커트',
    '면', '드라이클리닝', sysdate, '',
    'black', 'yellow', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('S01',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'SKIRT','Mini','올데이 베이직 랩 스커트', 29900, 
    '깔끔하면서 모던한 디자인의 랩스커트, 하객룩, 출근룩으로 추천드리는 데일리템이에요',
    '면', '드라이클리닝', sysdate, '',
    'black', 'ivory', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('S02',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'SKIRT','Medium','뮤엔 핀턱 미디 스커트', 33500, 
    '황금비율로 만들어주는 미디기장의 스커트에요',
    '면', '드라이클리닝', sysdate, '',
    'black', 'white', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('S02',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'SKIRT','Medium','엠버 플레어 스커트', 43200, 
    '풍성하게 떨어지는 A라인이 미운 군살은 가려주고 하체는 더욱 슬림하게 보여줘서 핏이 참 예쁜 스커트에요',
    '면', '드라이클리닝', sysdate, '',
    'black', 'white', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('S03',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'SKIRT','Long','썸머 데일리 H 스커트', 23500, 
    '썸머와 어울리는 데일리 스커트에요',
    '면', '드라이클리닝', sysdate, '',
    'black', 'pink', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);
INSERT INTO PRODUCT 
VALUES(
    CONCAT('S03',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'SKIRT','Long','샤엘 플레어 스커트', 33000, 
    '봄과 어울리는 화사한 분위기의 여성스런 스커트',
    '면', '드라이클리닝', sysdate, '',
    'black', 'yellow', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'perfit 퍼핏', 'KOREA', '구입 후 1년', 'perfit / 010-8975-0946'
);




insert into PRODUCT_SIZE values((select p_id from product where p_name='셀로나 셔링 미니 원피스'), 'ONEPIECE', 'Mini', 'free', 25, 44, 62, 72, 81, 0, 0, 0, 0, 0);
update PRODUCT set P_SHAPE='Triangle' where P_ID=((select P_ID from PRODUCT where P_NAME='셀로나 셔링 미니 원피스')); 

insert into PRODUCT_SIZE values((select p_id from product where p_name='셀디 린넨 나시 미니 원피스'), 'ONEPIECE', 'Mini', 'free', 36, 47, 44, 51, 84, 0, 0, 0, 0, 0);
update PRODUCT set P_SHAPE='Triangle' where P_ID=((select P_ID from PRODUCT where P_NAME='셀디 린넨 나시 미니 원피스')); 

insert into PRODUCT_SIZE values((select p_id from product where p_name='베르텔 스퀘어넥 원피스'), 'ONEPIECE', 'Medium', 'free', 34, 43, 35, 43, 88, 0, 0, 0, 0, 0);
update PRODUCT set P_SHAPE='Hourglass' where P_ID=((select P_ID from PRODUCT where P_NAME='베르텔 스퀘어넥 원피스')); 

insert into PRODUCT_SIZE values((select p_id from product where p_name='텐셀 데님 셔츠 원피스'), 'ONEPIECE', 'Medium', 'free', 51, 57, 62, 60, 87, 0, 0, 0, 0, 0);
update PRODUCT set P_SHAPE='Triangle' where P_ID=((select P_ID from PRODUCT where P_NAME='텐셀 데님 셔츠 원피스')); 

insert into PRODUCT_SIZE values((select p_id from product where p_name='로즈앙 캉캉 원피스'), 'ONEPIECE', 'Long', 'free', 33, 49, 40, 55, 116, 0, 0, 0, 0, 0);
update PRODUCT set P_SHAPE='Triangle' where P_ID=((select P_ID from PRODUCT where P_NAME='로즈앙 캉캉 원피스')); 

insert into PRODUCT_SIZE values((select p_id from product where p_name='퓨어 골지 슬림 원피스'), 'ONEPIECE', 'Long', 'free', 32, 34, 30, 34, 128, 0, 0, 0, 0, 0);
update PRODUCT set P_SHAPE='Hourglass' where P_ID=((select P_ID from PRODUCT where P_NAME='퓨어 골지 슬림 원피스')); 

insert into PRODUCT_SIZE values((select p_id from product where p_name='에르쉬 셔링 점프수트'), 'ONEPIECE', 'JumpSuits', 'free',  44, 31, 28, 49, 128, 0, 0, 0, 0, 0);
update PRODUCT set P_SHAPE='Triangle' where P_ID=((select P_ID from PRODUCT where P_NAME='에르쉬 셔링 점프수트')); 

insert into PRODUCT_SIZE values((select p_id from product where p_name='로에 꽈배기 니트 투피스'), 'ONEPIECE', 'TwoPiece', 'free', 50, 54, 50, 31, 41, 0, 0, 0, 0, 0);
update PRODUCT set P_SHAPE='InvertedTriangle' where P_ID=((select P_ID from PRODUCT where P_NAME='로에 꽈배기 니트 투피스')); 

insert into PRODUCT_SIZE values((select p_id from product where p_name='오헬 트위드 셋업'), 'ONEPIECE', 'TwoPiece', 'free', 60, 43, 33, 47, 83, 0, 0, 0, 0, 0);
update PRODUCT set P_SHAPE='Triangle' where P_ID=((select P_ID from PRODUCT where P_NAME='오헬 트위드 셋업')); 




insert into PRODUCT_PICTURE values(
    (select p_id from product where p_name='셀로나 셔링 미니 원피스'), 
    'cdetail1.png', 'cdetail2.jpg', '', '', '', '', '', 'cDetail8.PNG', '',
    'cmodel1.PNG', 'cmodel2.jpg', 'cmodel3.PNG', 'cmodel4.PNG', 'ccolor1.png', 'ccolor2.png', 'ccolor3.png', '', ''
);
insert into PRODUCT_PICTURE values(
    (select p_id from product where p_name='셀디 린넨 나시 미니 원피스'), 
    'smoDetail.jpg', 'smoDetail2.jpg', '', '', '', '', '', 'smoDetail8.PNG', '',
    'smoModel.jpg', '', '', '', '', '', '', '', ''
);
insert into PRODUCT_PICTURE values(
    (select p_id from product where p_name='베르텔 스퀘어넥 원피스'), 
    'bsoDetail.jpg', '', '', '', '', '', '', 'bsoDetail8.PNG', '',
    'bsoModel.jpg', 'bsoDetail.jpg', '', '', '', '', '', '', ''
);
insert into PRODUCT_PICTURE values(
    (select p_id from product where p_name='텐셀 데님 셔츠 원피스'), 
    'tdsoDetail.jpg', '', '', '', '', '', '', 'tdsoDetail8.PNG', '',
    'tdsoModel.jpg', 'tdsoDetail.jpg', '', '', '', '', '', '', ''

);
insert into PRODUCT_PICTURE values(
    (select p_id from product where p_name='로즈앙 캉캉 원피스'), 
    'lkoDetail1.jpg', 'lkoDetail2.jpg', 'lkoDetail3.jpg', '', '', '', '', 'lkoDetail8.PNG', '',
    'lkoModel.jpg', 'lkoDetail1.jpg', 'lkoDetail2.jpg', 'lkoDetail3.jpg', '', '', '', '', ''

);
insert into PRODUCT_PICTURE values(
    (select p_id from product where p_name='퓨어 골지 슬림 원피스'), 
    'pgsoDetail1.jpg', 'pgsoDetail2.jpg', 'pgsoDetail3.jpg', 'pgsoDetail4.jpg', '', '', '', 'pgsoDetail8.PNG', '',
    'pgsoModel.jpg', 'pgsoDetail1.jpg', 'pgsoDetail2.jpg', 'pgsoDetail3.jpg', 'pgsoDetail4.jpg', '', '', '', ''

);
insert into PRODUCT_PICTURE values(
    (select p_id from product where p_name='에르쉬 셔링 점프수트'), 
    'esjDetail.jpg', '', '', '', '', '', '', 'esjDetail8.PNG', 'esjDetail9.PNG',
    'esjModel.jpg', 'esjDetail.jpg', '', '', '', '', '', '', ''

);
insert into PRODUCT_PICTURE values(
    (select p_id from product where p_name='로에 꽈배기 니트 투피스'), 
    'rntDetail1.jpg', 'rntDetail2.jpg', 'rntDetail3.jpg', 'rntDetail4.jpg', '', '', '', 'rntDetail8.PNG', 'rntDetail9.PNG',
    'rntModel.jpg', 'rntDetail1.jpg', 'rntDetail2.jpg', 'rntDetail3.jpg', 'rntDetail4.jpg', '', '', '', ''

);
insert into PRODUCT_PICTURE values(
    (select p_id from product where p_name='오헬 트위드 셋업'), 
    'otsDetail1.jpg', 'otsDetail2.jpg', 'otsDetail3.jpg', 'otsDetail4.jpg', '', '', '', '', '',
    'otsModel.jpg', 'otsDetail1.jpg', 'otsDetail2.jpg', 'otsDetail3.jpg', 'otsDetail4.jpg', '', '', '', ''

);

/**************** product 추가 **********************/
INSERT INTO PRODUCT 
VALUES(
    CONCAT('N01',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'ONEPIECE','Mini','Collar knit dress',  108000, 
    '늘어나지 않는 니트 원단으로<Br>바디를 부드럽게 잡아주는 착용감.<br>허리 라인의 절개 포인트로<br> 여성스러움 강조.<br>골드 단추 디테일.<br>',
    'VISCOUS 50%<br>NYLON 22%<br>PBT 28%', '드라이클리닝', sysdate, '',
    'Black', '', '', '', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'JMARKNEWYORK', 'KOREA', '구입 후 1년', 'JMARKNEWYORK');

insert into PRODUCT_PICTURE values(
    (select p_id from product where p_name='Collar knit dress'), 
    'ckd_d1.jpg', 'ckd_d2.jpg', 'ckd_d3.jpg', 'ckd_d4.jpg', '', '', '', '', 'dkc_d9.png',
    'ckd_m1.jpg', 'ckd_m2.jpg', 'ckd_m3.jpg', '', '', '', '', '', ''
);
insert into PRODUCT_SIZE (id, 
							type, category, p_size, 
								shoulder, bust, waist, hip, 
									total_length, arm_length, arm, 
										rise, thigh, hem)
values((select p_id from product where p_name='Collar knit dress'), 
'ONEPIECE', 'Mini', 'free', 40, 40, 36, 40, 90, 62, 0, 0, 0, 0);
--

INSERT INTO PRODUCT 
VALUES(
    CONCAT('N01',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'ONEPIECE','Mini','어텀 티어드 원피스',  65000, 
    '퍼프소매와 티어드 디테일이<Br>사랑스러운 무드를 연출해주는<br>원피스입니다.<br>',
    'COTTON 68%<br>POLYESTER 30%<br>POLYURETHANE 2%', '드라이클리닝', sysdate, '',
    'Black', 'Blue', 'Ivory', 'Violet', '', '', '', '', '', '',
    'free','', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    'DELICENT/WONDERPLACE', '중국', '구입 후 1년', '1668-3508');

insert into PRODUCT_PICTURE values(
    (select p_id from product where p_name='어텀 티어드 원피스'), 
    'ato_d1.jpg', '', '', '', '', '', '', '', 'ato_d9.jpg',
    'ato_m1.jpg', 'ato_m2.jpg', '', '', '', '', '', '', ''
);
insert into PRODUCT_SIZE (id, 
							type, category, p_size, 
								shoulder, bust, waist, hip, 
									total_length, arm_length, arm, 
										rise, thigh, hem)
values((select p_id from product where p_name='어텀 티어드 원피스'), 
'ONEPIECE', 'Mini', 'free', 0, 50, 70, 93, 83, 62, 0, 0, 0, 116);
--
INSERT INTO PRODUCT 
VALUES(
    CONCAT('N01',LPAD(P_ID_SEQ.NEXTVAL,5,0)), 'ONEPIECE','Mini','컷아웃 카라 반팔 원피스',  104300, 
    '카라 반팔 미니원피스입니다.<Br>허리라인이 잡혀 슬림한 실루엣이며<br>뒷판 컷아웃이 포인트입니다.<br>',
    'COTTON 53%<br>NYLON 42%<br>SPAN 5%', '드라이클리닝', sysdate, '',
    'Skyblue', 'Black', '', '', '', '', '', '', '', '',
    'S','M', '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '',
    '무신사 아울렛', '한국', '구입 후 1년', '무신사 아울렛');

insert into PRODUCT_PICTURE values(
    (select p_id from product where p_name='컷아웃 카라 반팔 원피스'), 
    'outlet_d1.jpg', 'outlet_d2.jpg', '', '', '', '', '', '', 'outlet_d9.jpg',
    'outlet_m1.jpg', 'outlet_m2.jpg', 'outlet_m3.jpg', '', '', '', '', '', ''
);
insert into PRODUCT_SIZE (id, 
							type, category, p_size, 
								shoulder, bust, waist, hip, 
									total_length, arm_length, arm, 
										rise, thigh, hem)
values((select p_id from product where p_name='컷아웃 카라 반팔 원피스'), 
'ONEPIECE', 'Mini', 'S', 40, 45, 33, 47, 82, 17, 17, 0, 0, 54);
insert into PRODUCT_SIZE (id, 
							type, category, p_size, 
								shoulder, bust, waist, hip, 
									total_length, arm_length, arm, 
										rise, thigh, hem)
values((select p_id from product where p_name='컷아웃 카라 반팔 원피스'), 
'ONEPIECE', 'Mini', 'M', 41, 47, 36, 49, 83, 18, 18, 0, 0, 54);
--
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
    D_DATE DATE,
	D_EMAIL VARCHAR2(50),
	D_STATUS NUMBER
); /*D_는 딜리버리를 뜻합니다.*/
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
(NOTICE_SEQ.NEXTVAL, '공지사항 입니다.','공지입니다
참고 부탁드립니다
감사합니다.','2023/07/03','지수캡처.PNG');
INSERT INTO NOTICE_TABLE VALUES
(NOTICE_SEQ.NEXTVAL, '이벤트 관련 안내.','이벤트 관련 내용을
아래에 첨부합니다 
참고 부탁드립니다 
감사합니다.','2023/07/03','다운로드.png');
INSERT INTO NOTICE_TABLE VALUES
(NOTICE_SEQ.NEXTVAL, '포인트 관련 안내.','포인트와 관련된 내용을
아래에 첨부합니다 
참고 부탁드립니다 
감사합니다.','2023/07/03','다운로드.jpg');
INSERT INTO NOTICE_TABLE VALUES
(NOTICE_SEQ.NEXTVAL, '여름 할인 관련 안내.','여름 이벤트와 관련된 내용을
아래에 첨부합니다 
많은 이용 부탁드립니다 
감사합니다.','2023/07/03','images.jpg');
commit;
