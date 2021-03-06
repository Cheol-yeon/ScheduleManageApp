package com.webprj.studio.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.webprj.di.entity.Studio;

public class StudioJdbcDao implements StudioDao {
	private String driver;
	private String url;
	private String userName;
	private String password;

	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;

	public StudioJdbcDao(String driver, String url, String userName, String password) {
		this.driver = driver;
		this.url = url;
		this.userName = userName;
		this.password = password;

		System.out.println("studioJDBCDao 생성자 실행됨");
	}

	private void connect() throws ClassNotFoundException, SQLException {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, userName, password);

		System.out.println("studioJDBCDao DB연결성공");
	}

	private void disconnect() throws SQLException {
		System.out.println("studioJDBCDao DB연결해제");

		if (rs != null && !rs.isClosed()) {
			rs.close();
			rs = null;
		}
		if (stmt != null && !stmt.isClosed()) {
			stmt.close();
			stmt = null;
		}
		if (conn != null && !conn.isClosed()) {
			conn.close();
			conn = null;
		}
	}
	public List<String> getStudiosLoc(){
		 List<String> studioLoc=null;
		 
		 String sql = "SELECT DISTINCT LOC FROM Studio ORDER BY LOC";
		 try {
				connect();

				stmt = conn.prepareStatement(sql);
				rs = stmt.executeQuery();

				if (rs.isBeforeFirst()) {
					studioLoc = new ArrayList<String>();
					while (rs.next()) {
						String str=	rs.getString("LOC");
						studioLoc.add(str);
					}
				}
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					disconnect();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		 return studioLoc;
	}

	@Override
	public List<Studio> getStudios(String query) {
		List<Studio> studios = null;

		String sql = "SELECT * FROM Studio";
		sql = sql + (query != null && !query.equals("") ? " WHERE " + query : " ORDER BY LOC, STDONO");
		/*
		 * String sql = "SELECT * FROM Studio ORDER BY LOC, STDONO";
		 */
		try {
			connect();

			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();

			if (rs.isBeforeFirst()) {
				studios = new ArrayList<Studio>();
				while (rs.next()) {
					Studio studio = new Studio();
					studio.setStudiono(rs.getInt("STDONO"));
					studio.setLoc(rs.getString("LOC"));
					studio.setDep(rs.getString("DEP"));

					studios.add(studio);
				}
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				disconnect();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return studios;
	}

	@Override
	public int insertStudio(Studio studio) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateStudio(Studio studio) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteStudio(Studio studio) {
		// TODO Auto-generated method stub
		return 0;
	}

}
