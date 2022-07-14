package java_0714;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ArrayList_DBtest {

	public static void main(String[] args) throws Exception {
		
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/second";
		Connection conn = DriverManager.getConnection(db, "root", "5032");
		
		String sql = "select * from member where id=2";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		//System.out.println(rs.getString("name"));
		
		// =================
		
		ArrayList<ResultSet> rslist = new ArrayList<ResultSet>();
		
		sql = "select * from member";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			rslist.add(rs);
		}
		
		
		//System.out.println(rslist.size());
		String name;
		int age;
		for(int i=0; i<rslist.size(); i++) {
			System.out.println(rslist.get(i).getString(i));
			//name = rslist.get(i).getString(1);
			//age = rslist.get(i).getInt(2);
		}
		
	}

}
