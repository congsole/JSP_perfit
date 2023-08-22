/*********** PRODUCT DUMMY DATA **************/

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

INSERT INTO PRODUCT_PICTURE
VALUES(
    'N0100001',
    /* 디테일샷 */
    'cdetail1.png', 
    'cdetail2.jpg', 
    'ccolor1.png', 
    'ccolor2.png', 
    'ccolor3.png', 
    '', 
    '', 
    /* 상세사이즈 안내 */
    'csize1.png', 
    'csize2.PNG',
    
    /* 모델샷 */
    'cmodel1.PNG', 
    'cmodel2.jpg', 
    'cmodel3.PNG', 
    'cmodel4.PNG', 
    '', 
    '', 
    '', 
    '', 
    ''
);


INSERT INTO PRODUCT_SIZE
VALUES('N0100001', 'ONEPIECE', 'Mini', 'free', 25, 44, 62, 72, 81, 0, 0, 9999, 9999, 9999);
commit;

/********************* 관리자 아이디 생성 ********************************/

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

