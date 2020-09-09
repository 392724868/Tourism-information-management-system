package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import vo.Caiwu;

public class CaiwuDao {

		private Connection conn = null;
		public void initConnection()throws Exception{
			 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		     conn = DriverManager.getConnection("jdbc:odbc:HZKZUSTts","","");
		}
		public ArrayList getAllPricesByzt(String zt) throws Exception{
			ArrayList al = new ArrayList();
			initConnection();
			String sql = "SELECT* FROM T_Order WHERE zt=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,zt);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				Caiwu caiwu = new Caiwu();
				caiwu.setOid(rs.getString("Oid"));
				caiwu.setSid(rs.getString("Sid"));
				caiwu.setView(rs.getString("View"));
				caiwu.setHotel(rs.getString("Hotel"));
				caiwu.setSpecial(rs.getString("Special"));
				caiwu.setOnumber(rs.getString("Onumber"));
				caiwu.setDate(rs.getString("Date"));
				caiwu.setzt(rs.getString("zt"));
				caiwu.setPrice(rs.getString("Price"));
				al.add(caiwu);
			}
			closeConnection();
			return al;
		}
		public void updatePrices(String zt,String[] Oid,String[] Sid,String[] Price) throws Exception{
			initConnection();
			String sql = "UPDATE T_Order SET Price=? WHERE Oid=? AND Sid=? AND zt=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			for(int i=0;i<Oid.length;i++){
				if(!Price[i].equals("")){
					ps.setDouble(1, Double.parseDouble(Price[i]));
					ps.setString(2, Oid[i]);
					ps.setString(3, Sid[i]);
					ps.setString(4, zt);
					ps.executeUpdate();
					
				}
			}
			ps.close();
			closeConnection();
		}
		

		public void closeConnection() throws Exception{
			conn.close();
		}

}
