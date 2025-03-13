package service;

import java.sql.Connection;
import java.sql.Statement;

import com.mysql.jdbc.PreparedStatement;

import controller.database;
import model.driver;
import model.register;
import model.vehicle;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;







public class web_service {
	public void driver_add(driver app1)
	{
		try {
			String query="insert into driver values ('"+app1.getDrid()+"','"+app1.getDname()+"','"+app1.getDaddress()+"','"+app1.getDtpno()+"','"+app1.getDnic()+"','"+app1.getDlno()+"')";
			Statement state=database.getcon().createStatement();
			state.executeUpdate(query);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	//*************************************************************************************************************************************
	public void reg_user(register add1)
	{
		try {
			String query="insert into user values ('"+add1.getRegno()+"','"+add1.getName()+"','"+add1.getAddress()+"','"+add1.getNic()+"','"+add1.getTpno()+"','"+add1.getUsername()+"','"+add1.getPass()+"')";
			Statement state=database.getcon().createStatement();
			state.executeUpdate(query);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	//**************************************************************************************************
	public void vehicle_add(vehicle app5)
	{
		try {
			String query="insert into vehicle values ('"+app5.getVno()+"','"+app5.getVcat()+"','"+app5.getVmodel()+"','"+app5.getVbrand()+"','"+app5.getVcolor()+"','"+app5.getVchasi()+"')";
			Statement state=database.getcon().createStatement();
			state.executeUpdate(query);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	//****************************************************************************************************************************************
	public boolean updatedriver(String dridd, String dnamee, String daddresss, int dtpnoo, int dnicc, String dlnoo) {
        try (Connection con = database.getcon()) {
            String query = "UPDATE driver SET dname = ?, daddress = ?, dtpno=?, dnic=?, dlno=? WHERE drid = ?";
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(query);
          
            /*String dridd=request.getParameter("drid");
		String dnamee=request.getParameter("dname");
		String daddresss=request.getParameter("daddress");
		int dtpnoo=Integer.parseInt(request.getParameter("dtpno"));
		int dnicc=Integer.parseInt(request.getParameter("dnic"));
		String dlnoo=request.getParameter("dlno");*/
            
            ps.setString(1, dnamee);
            ps.setString(2, daddresss);
            ps.setInt(3, dtpnoo);
            ps.setInt(4, dnicc);
            ps.setString(5, dlnoo);
            ps.setString(6, dridd);
         

            int rowsUpdated = ps.executeUpdate();
            return rowsUpdated > 0;
        } catch (ClassNotFoundException | SQLException e) {
            ((Throwable) e).printStackTrace();
            return false;
        }
    }
	//**********************************************************************************************************************************
	public boolean updatevehicle(String vnoo, String vcatt, String vmodell, String vbrandd, String vcolorr, String vchasii) {
        try (Connection con = database.getcon()) {
            String query = "UPDATE vehicle SET vcat = ?, vmodel = ?, vbrand=?, vcolor=?, vchasi=?  WHERE vno = ?";
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(query);
          
            /*String regnoo=request.getParameter("regno");
		String namee=request.getParameter("name");
		String addresss=request.getParameter("address");
		int nicc=Integer.parseInt(request.getParameter("nic"));
		int tpnoo=Integer.parseInt(request.getParameter("tpno"));
		String usernamee=request.getParameter("username");
		String passs=request.getParameter("pass");
		
		*/
            
            ps.setString(1, vcatt);
            ps.setString(2, vmodell);
            ps.setString(3, vbrandd);
            ps.setString(4, vcolorr);
            ps.setString(5, vchasii);
            ps.setString(6, vnoo);
         

            int rowsUpdated = ps.executeUpdate();
            return rowsUpdated > 0;
        } catch (ClassNotFoundException | SQLException e) {
            ((Throwable) e).printStackTrace();
            return false;
        }
    }
	//****************************************************************************************************************
	
	public boolean updateuser(String regnoo, String namee, String addresss, int nicc,int tpnoo , String usernamee, String passs) {
        try (Connection con = database.getcon()) {
            String query = "UPDATE user SET name = ?, address = ?, nic=?, tpno=?, username=?, pass=?  WHERE regno = ?";
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(query);
          
            /*String regnoo=request.getParameter("regno");
		String namee=request.getParameter("name");
		String addresss=request.getParameter("address");
		int nicc=Integer.parseInt(request.getParameter("nic"));
		int tpnoo=Integer.parseInt(request.getParameter("tpno"));
		String usernamee=request.getParameter("username");
		String passs=request.getParameter("pass");
		
		*/
            
            ps.setString(1, namee);
            ps.setString(2, addresss);
            ps.setInt(3, nicc);
            ps.setInt(4, tpnoo);
            ps.setString(5, usernamee);
            ps.setString(6, passs);
            ps.setString(7, regnoo);
         

            int rowsUpdated = ps.executeUpdate();
            return rowsUpdated > 0;
        } catch (ClassNotFoundException | SQLException e) {
            ((Throwable) e).printStackTrace();
            return false;
        }
    }
	//**********************************************************************************************************************
	//vehicle tb
	public ArrayList<vehicle> getallvehicle()
	{
		try {
			ArrayList<vehicle> listcus=new ArrayList<vehicle>();
			String query="select*from vehicle";
			Statement statement=database.getcon().createStatement();
			ResultSet rs=statement.executeQuery(query);
			while(rs.next())
			{
				vehicle cus1=new vehicle();
				cus1.setVno(rs.getString("vno"));
				cus1.setVcat(rs.getString("vcat"));
				cus1.setVmodel(rs.getString("vmodel"));
				cus1.setVbrand(rs.getString("vbrand"));
				cus1.setVcolor(rs.getString("vcolor"));
				cus1.setVchasi(rs.getString("vchasi"));
				
				listcus.add(cus1);
			}
			return listcus;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

   //***************************************************************************************************************************************************

	//driver tb
		public ArrayList<driver> getalldriver()
		{
			try {
				ArrayList<driver> listcus=new ArrayList<driver>();
				String query="select*from driver";
				Statement statement=database.getcon().createStatement();
				ResultSet rs=statement.executeQuery(query);
				while(rs.next())
				{
					driver cus1=new driver();
					cus1.setDrid(rs.getString("drid"));
					cus1.setDname(rs.getString("dname"));
					cus1.setDaddress(rs.getString("daddress"));
					cus1.setDtpno(rs.getInt("dtpno"));
					cus1.setDnic(rs.getInt("dnic"));
					cus1.setDlno(rs.getString("dlno"));
					
					
					listcus.add(cus1);
				}
				return listcus;
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
		}

	   //***************************************************************************************************************************************************
//vehicle delete
		public void del_vehicle(vehicle del)
		{
			try {
				String query="delete from vehicle where vno='"+del.getVno()+"'";
				Statement statet=database.getcon().createStatement();
				statet.executeUpdate(query);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	//*****************************************************************************************************************************************

		//driver delete
		public void del_driver(driver del)
		{
			try {
				String query="delete from driver where drid='"+del.getDrid()+"'";
				Statement statet=database.getcon().createStatement();
				statet.executeUpdate(query);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
			//*****************************************************************************************************************************************	
		
		
		
		
		
		
		
		
		
		
	//log in 
		public boolean validate(register user_log)
		{
			try {
				
				String query = "select * from user where username ='" + user_log.getUsername() + "' and pass='" + user_log.getPass() + "'";
		Statement statement=database.getcon().createStatement();
		ResultSet rs=statement.executeQuery(query);

				if(rs.next()) { 
					return true; 
				}
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			return false;
		}
		
		//*********************************************************************************************************************************
		public register getone(register user_log)
		{
			try {
				
				String query = "select * from user where username ='" + user_log.getUsername() + "' and pass='" + user_log.getPass() + "'";
		Statement statement=database.getcon().createStatement();
		ResultSet rs=statement.executeQuery(query);

				if(rs.next()) { 
					
					
				    user_log.setRegno(rs.getString("regno"));
				    user_log.setName(rs.getString("name"));
				    user_log.setAddress(rs.getString("address"));
				    user_log.setNic(rs.getInt("nic"));
				    user_log.setTpno(rs.getInt("tpno"));
				    user_log.setUsername(rs.getString("username"));
				    user_log.setPass(rs.getString("pass"));
					
					return user_log;
				}
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			return null;
		}
		//********************************************************************************************************************************************
		public ArrayList<register> getalluser()
		{
			try {
				ArrayList<register> listcus=new ArrayList<register>();
				String query="select*from user";
				Statement statement=database.getcon().createStatement();
				ResultSet rs=statement.executeQuery(query);
				while(rs.next())
				{
					register cus1=new register();
					
					cus1.setRegno(rs.getString("regno"));
					cus1.setName(rs.getString("name"));
					cus1.setAddress(rs.getString("address"));
					cus1.setNic(rs.getInt("nic"));
					cus1.setTpno(rs.getInt("tpno"));
					cus1.setUsername(rs.getString("username"));
					cus1.setPass(rs.getString("pass"));;
					
					
					listcus.add(cus1);
				}
				return listcus;
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
		}
		public void del_user(register del)
		{
			try {
				String query="delete from user where regno='"+del.getRegno()+"'";
				Statement statet=database.getcon().createStatement();
				statet.executeUpdate(query);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
}

