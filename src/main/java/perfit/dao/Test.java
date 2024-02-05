package perfit.dao;

public class Test {

	public static void main(String[] args) {
		String id = "id";
		String c01 = "c01";
		String c02 = "c02";
		String c03 = "c03";
		String c04 = "c04";
		String c05 = "c05";
		String c06 = "c06";
		String c07 = "c07";
		String c08 = "c08";
		String c09 = "c09";
		String c10 = "c10";
		String[] colors = { c01, c02, c03, c04, c05, c06, c07, c08, c09, c10 };
		String s01 = "s01";
		String s02 = "s02";
		String s03 = "s03";
		String s04 = "s04";
		String s05 = "s05";
		String s06 = "s06";
		String s07 = "s07";
		String s08 = "s08";
		String s09 = "s09";
		String s10 = "s10";
		String[] sizes = { s01, s02, s03, s04, s05, s06, s07, s08, s09, s10 };
		String sql = "";
		for (int i = 0; i < 10; i++) {
			for (int j = 0; j < 10; j++) {
				sql = "insert into PRODUCT_STATUS ('" + id + "', '" + colors[i] + "', '" + sizes[j] + "', 'ready')";
				System.out.println(sql);
			}
		}
		System.out.println("SELECT * FROM (SELECT P_ID, SUM(P_AMOUNT) AS QUANTITY FROM ("
				+ "select * from ORDER_TBL, ORDER_DETAIL" + " WHERE substr(ORDER_DATE, 1, 8) = substr(sysdate, 1,8)"
				+ " and ORDER_TBL.ORDER_NUM = ORDER_DETAIL.ORDER_NUM)" + " GROUP BY P_ID" + " ORDER BY QUANTITY DESC"
				+ " WHERE ROWNUM<9");

	}

}
