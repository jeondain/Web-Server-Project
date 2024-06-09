package DAO;

import java.sql.Date;
import java.util.ArrayList;

import DTO.ReservationDTO;
import DTO.inquiryDTO;

public class ReservationDAO {
	
	private ArrayList<ReservationDTO> listOfReservations = new ArrayList<ReservationDTO>();
	private static ReservationDAO instance = new ReservationDAO();
	private int lastId = 0;

	public static ReservationDAO getInstance() {
		return instance;
	}
	
	public ArrayList<ReservationDTO> getAllReservations() {
		return listOfReservations;
	}

	public ReservationDAO() {
		// TODO Auto-generated constructor stub
		ReservationDTO res1 = new ReservationDTO(1);
		res1.setCheckIn(Date.valueOf("2024-04-12"));
		res1.setCheckOut(Date.valueOf("2024-04-13"));
		res1.setNumOfPeople(3);
		res1.setRoom("스위트룸");
		res1.setMorningCall("10:00");
		res1.setSpaTicket(false);
		res1.setBed(true);
		res1.setRequestTerm(" ");
		res1.setMem_id("fromm");
		res1.setStatus("completed");
		
		ReservationDTO res2 = new ReservationDTO(2);
		res2.setCheckIn(Date.valueOf("2024-05-03"));
		res2.setCheckOut(Date.valueOf("2024-05-10"));
		res2.setNumOfPeople(2);
		res2.setRoom("트윈배드룸");
		res2.setMorningCall("NONE");
		res2.setSpaTicket(true);
		res2.setBed(true);
		res2.setRequestTerm("침대 추가해주세요");
		res2.setMem_id("fromm");
		res2.setStatus("pending");

		ReservationDTO res3 = new ReservationDTO(3);
		res3.setCheckIn(Date.valueOf("2024-01-24"));
		res3.setCheckOut(Date.valueOf("2024-02-01"));
		res3.setNumOfPeople(2);
		res3.setRoom("디럭스룸");
		res3.setMorningCall("09:00");
		res3.setSpaTicket(false);
		res3.setBed(false);
		res3.setRequestTerm("모닝콜 해주세요");
		res3.setMem_id("bella");
		res3.setStatus("completed");
		
		listOfReservations.add(res1);
		listOfReservations.add(res2);
		listOfReservations.add(res3);
		
		// 마지막 id 설정
		if (!listOfReservations.isEmpty()) {
			lastId = listOfReservations.get(listOfReservations.size() - 1).getId();
		}
	}
	
	
	public ReservationDTO getReservationById(int id) {
		ReservationDTO reservationById = null;
	    
	    for(int i=0; i<listOfReservations.size(); i++) {
	    	ReservationDTO reservation = listOfReservations.get(i);
	        if(reservation != null && reservation.getId() == id) {
	        	reservationById = reservation;
	            break;
	        }
	    }
	    return reservationById;
	}
	
    public ArrayList<ReservationDTO> getReservationsByMember(String mem_id) {
        ArrayList<ReservationDTO> reservationsByMember = new ArrayList<>();

        for (ReservationDTO reservation : listOfReservations) {
            if (reservation.getMem_id().equals(mem_id)) {
                reservationsByMember.add(reservation);
            }
        }
        return reservationsByMember;
    }
	
	public void addReservation(ReservationDTO newReservation) {
		if (newReservation != null) {
			lastId++;
			newReservation.setId(lastId);
			
			listOfReservations.add(newReservation);
		}
	}

}
