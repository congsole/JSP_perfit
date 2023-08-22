package perfit.dto;

import java.sql.Timestamp;

public class OrderVO {
	private String order_num;
	private String m_id;
	private String d_name;
	private String d_phone;
	private String d_zip;
	private String d_address1;
	private String d_address2;
	private String d_email;
	private Timestamp order_date;
	private Timestamp d_date;
	private int d_status;
	
	
	public String getOrder_num() {
		return order_num;
	}
	public void setOrder_num(String order_num) {
		this.order_num = order_num;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	public String getD_phone() {
		return d_phone;
	}
	public void setD_phone(String d_phone) {
		this.d_phone = d_phone;
	}
	public String getD_zip() {
		return d_zip;
	}
	public void setD_zip(String d_zip) {
		this.d_zip = d_zip;
	}
	public String getD_address1() {
		return d_address1;
	}
	public void setD_address1(String d_address1) {
		this.d_address1 = d_address1;
	}
	public String getD_address2() {
		return d_address2;
	}
	public void setD_address2(String d_address2) {
		this.d_address2 = d_address2;
	}
	public Timestamp getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Timestamp order_date) {
		this.order_date = order_date;
	}
	public Timestamp getD_date() {
		return d_date;
	}
	public void setD_date(Timestamp d_date) {
		this.d_date = d_date;
	}
	public String getD_email() {
		return d_email;
	}
	public void setD_email(String d_email) {
		this.d_email = d_email;
	}
	public int getD_status() {
		return d_status;
	}
	public void setD_status(int d_status) {
		this.d_status = d_status;
	}
	
	
	
}