package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import vo.customer;

public class customerdao {
	private Connection conn = null;
	public void initConnection() throws Exception {
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		conn = DriverManager.getConnection("jdbc:odbc:HZKZUSTts", "", "");
	}
	public customer getCustomerByAccount(String account) throws Exception {
		customer cus = null;
		initConnection();
		String sql = 
"SELECT ACCOUNT,PASSWORD,CNAME FROM CUSTOMER WHERE ACCOUNT=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, account);
		ResultSet rs = ps.executeQuery();
		if(rs.next()){
			cus = new customer();
			cus.setAccount(rs.getString("ACCOUNT"));
			cus.setPassword(rs.getString("PASSWORD"));
			cus.setCname(rs.getString("CNAME"));
		}
		closeConnection();
		return cus;		
	}	
	public void closeConnection() throws Exception {
		conn.close();
	}
}