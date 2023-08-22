/*********** PRODUCT DUMMY DATA **************/

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

INSERT INTO PRODUCT_PICTURE
VALUES(
    'N0100001',
    /* �����ϼ� */
    'cdetail1.png', 
    'cdetail2.jpg', 
    'ccolor1.png', 
    'ccolor2.png', 
    'ccolor3.png', 
    '', 
    '', 
    /* �󼼻����� �ȳ� */
    'csize1.png', 
    'csize2.PNG',
    
    /* �𵨼� */
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

/********************* ������ ���̵� ���� ********************************/

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

