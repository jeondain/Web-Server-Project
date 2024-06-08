package mvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import dao.ReservationDAO;
import dto.ReservationDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ReservationController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final Logger LOGGER = Logger.getLogger(ReservationController.class.getName());

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String requestURI = request.getRequestURI();
        String contextPath = request.getContextPath();
        String command = requestURI.substring(contextPath.length());

        response.setContentType("text/html; charset=utf-8");
        request.setCharacterEncoding("utf-8");

        LOGGER.log(Level.INFO, "Command: " + command);

        if (command.equals("/CheckAllReservation.do")) {
            LOGGER.log(Level.INFO, "Processing CheckAllReservation.do command");
            requestAllReservation(request);
            RequestDispatcher rd = request.getRequestDispatcher("/list.jsp");
            rd.forward(request, response);
        }
    }

    // 예약 목록 모두 가져오기
    public void requestAllReservation(HttpServletRequest request) {
        ReservationDAO dao = ReservationDAO.getInstance();
        ArrayList<ReservationDTO> reservationList = new ArrayList<ReservationDTO>();

        String items = request.getParameter("items");
        String text = request.getParameter("text");

        int total_record = dao.getListCount();
        LOGGER.log(Level.INFO, "Total record count: " + total_record);
        reservationList = dao.getReservationList(items, text);
        LOGGER.log(Level.INFO, "Reservation list size: " + reservationList.size());

        request.setAttribute("total_record", total_record);
        request.setAttribute("reservationList", reservationList);
    }

    public ReservationController() {
        // TODO Auto-generated constructor stub
    }
}
