
-- ready, on, temp off, out
-- �����ų ��ǰ : on, temp off 
SELECT P_ID, P_STATUS FROM PRODUCT_STATUS WHERE P_STATUS IN ('on', 'temp off');
-- ��ǰ �� �Ϻ� ���� �Ǵ� �Ϻ� ����� ǰ���� �� �ִµ�, �׷� �װ� ���� ���� �Ͻ�ǰ�� �Ǵ� �Ǹ������� �信 ǥ������.
Create table PRODUCT_STATUS(
    P_ID VARCHAR2(10) references PRODUCT(P_ID), 
    P_COLOR VARCHAR2(20),
    P_SIZE VARCHAR2(20),
    P_OPTION VARCHAR2(20), 
    P_STATUS VARCHAR2(10)
);

    
/* ���� ���� ���� �ȸ� ������� �����ؼ� 8���� �����ϱ� */
-- done �ȸ� ��¥ ���� ���� �ʿ��� : order_date = substr(sysdate, 1, 8)   
-- delete �Ǹ� ���� ���� ���� �ʿ��� : ����, ������, �ɼ� �� Ʋ� �� ������ �Ǹ����̰ų� �Ͻ�ǰ���� ��� ����
        --������ �����ȸ��͵��ε� �Ǹ����� �غ��� ��� ��������!! �Ű� ���� ��

SELECT * 
    FROM (
                    SELECT P_ID, SUM(P_AMOUNT) AS QUANTITY
                        FROM (
                                        select * 
                                            from ORDER_TBL, ORDER_DETAIL
                                            WHERE substr(ORDER_DATE, 1, 8) = substr(sysdate, 1,8) 
                                            and ORDER_TBL.ORDER_NUM = ORDER_DETAIL.ORDER_NUM
                                    )
                        GROUP BY P_ID
                        ORDER BY QUANTITY DESC 
                )
    WHERE ROWNUM<9;


/* �Ż�ǰ 8�� */
SELECT P_ID, P_DATE
    FROM (
                     SELECT P_ID, P_DATE FROM PRODUCT ORDER BY P_DATE DESC 
                )
    WHERE ROWNUM<9;
SELECT * FROM PRODUCT;