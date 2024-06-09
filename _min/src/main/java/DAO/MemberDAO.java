package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import DTO.MemberDTO;
import mvc.database.DBConnection;

public class MemberDAO {

    private static MemberDAO instance = new MemberDAO();
    
    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;

    private MemberDAO() {}

    public static MemberDAO getInstance() {
        return instance;
    }
    
    public ArrayList<MemberDTO> getAllMembers() {
        ArrayList<MemberDTO> listOfMembers = new ArrayList<>();
        String sql = "SELECT * FROM member";

        try {
            conn = DBConnection.getConnection();
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                MemberDTO member = new MemberDTO();
                member.setId(rs.getString("id"));
                member.setName(rs.getString("name"));
                member.setEmail(rs.getString("email"));
                member.setPassword(rs.getString("password"));
                member.setPhone_num(rs.getString("phone_num"));
                listOfMembers.add(member);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            closeResource();
        }

        return listOfMembers;
    }

    public MemberDTO getMemberById(String id) {
        MemberDTO member = null;
        String sql = "SELECT * FROM member WHERE id=?";

        try {
            conn = DBConnection.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                member = new MemberDTO();
                member.setId(rs.getString("id"));
                member.setName(rs.getString("name"));
                member.setEmail(rs.getString("email"));
                member.setPassword(rs.getString("password"));
                member.setPhone_num(rs.getString("phone_num"));
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            closeResource();
        }

        return member;
    }

    public void addMember(MemberDTO newMember) {
        String sql = "INSERT INTO member (id, name, email, password, phone_num) VALUES (?, ?, ?, ?, ?)";

        try {
            conn = DBConnection.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, newMember.getId());
            pstmt.setString(2, newMember.getName());
            pstmt.setString(3, newMember.getEmail());
            pstmt.setString(4, newMember.getPassword());
            pstmt.setString(5, newMember.getPhone_num());
            pstmt.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            closeResource();
        }
    }
    
    public void deleteMemberById(String memberId) {
        String sql = "DELETE FROM member WHERE id = ?";

        try {
            conn = DBConnection.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, memberId);
            pstmt.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            closeResource();
        }
    }

    private void closeResource() {
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
