
-- ready, on, temp off, out
-- 노출시킬 상품 : on, temp off 
SELECT P_ID, P_STATUS FROM PRODUCT_STATUS WHERE P_STATUS IN ('on', 'temp off');
-- 상품 별 일부 색상 또는 일부 사이즈가 품절일 수 있는데, 그럼 그걸 어케 각각 일시품절 또는 판매종료라고 뷰에 표시할지.
Create table PRODUCT_STATUS(
    P_ID VARCHAR2(10) references PRODUCT(P_ID), 
    P_COLOR VARCHAR2(20),
    P_SIZE VARCHAR2(20),
    P_OPTION VARCHAR2(20), 
    P_STATUS VARCHAR2(10)
);

    
/* 오늘 가장 많이 팔린 순위대로 정렬해서 8개만 셀렉하기 */
-- done 팔린 날짜 제한 조건 필요함 : order_date = substr(sysdate, 1, 8)   
-- delete 판매 상태 제한 조건 필요함 : 색상, 사이즈, 옵션 통 틀어서 한 종류라도 판매중이거나 일시품절일 경우 노출
        --어차피 오늘팔린것들인데 판매종료 해봤자 몇개나 했으려고!! 신경 꺼도 됨

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


/* 신상품 8개 */
SELECT P_ID, P_DATE
    FROM (
                     SELECT P_ID, P_DATE FROM PRODUCT ORDER BY P_DATE DESC 
                )
    WHERE ROWNUM<9;
SELECT * FROM PRODUCT;