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