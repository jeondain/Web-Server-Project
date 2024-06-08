package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.ReservationDTO;
import mvc.database.DBConnection;

public class ReservationDAO {

    private static ReservationDAO instance;

    public ReservationDAO() {
        // TODO Auto-generated constructor stub
    }

    public static ReservationDAO getInstance() {
        if (instance == null)
            instance = new ReservationDAO();
        return instance;
    }

    public int getListCount() { // 예약목록개수
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        int x = 0;
        
        String sql;
        sql = "select count(*) from Reservation";

        try {
            conn = DBConnection.getConnection();
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            if (rs.next()) 
                x = rs.getInt(1);
            
        } catch (Exception ex) {
            System.out.println("getListCount() 예외발생: " + ex);
        } finally {            
            try {                
                if (rs != null) 
                    rs.close();                            
                if (pstmt != null) 
                    pstmt.close();                
                if (conn != null) 
                    conn.close();                                                
            } catch (Exception ex) {
                throw new RuntimeException(ex.getMessage());
            }        
        }        
        return x;
    }

    public ArrayList<ReservationDTO> getReservationList(String items, String text) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        String sql;
        if (items == null && text == null)
            sql = "select * from Reservation ORDER BY id DESC";
        else
            sql = "SELECT * FROM Reservation WHERE " + items + " like '%" + text + "%' ORDER BY id DESC ";
        
        ArrayList<ReservationDTO> list = new ArrayList<ReservationDTO>();

        try {
            conn = DBConnection.getConnection();
            System.out.println("Database connection: " + conn);

            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                ReservationDTO board = new ReservationDTO();
                board.setId(rs.getInt("id"));
                board.setMemberId(rs.getString("memberId"));
                board.setCheckInOut(rs.getString("checkInOut"));
                board.setGuests(rs.getString("guests"));
                board.setRoomType(rs.getString("roomType"));
                board.setWakeUpCall(rs.getString("wakeUpCall"));
                board.setSpa(rs.getString("spa"));
                board.setExtraBed(rs.getString("extraBed"));
                board.setAddGuests(rs.getString("addGuests"));
                board.setRequests(rs.getString("requests"));
                board.setTotalPrice(rs.getString("totalPrice"));
                list.add(board);
            }
            System.out.println("Number of reservations fetched: " + list.size());
            return list;
        } catch (Exception ex) {
            System.out.println("getReservationList() 예외발생: " + ex);
        } finally {
            try {
                if (rs != null) 
                    rs.close();                            
                if (pstmt != null) 
                    pstmt.close();                
                if (conn != null) 
                    conn.close();
            } catch (Exception ex) {
                throw new RuntimeException(ex.getMessage());
            }           
        }
        
        return null;
    }
}
