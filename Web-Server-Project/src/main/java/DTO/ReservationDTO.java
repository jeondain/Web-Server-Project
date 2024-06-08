package DTO;

import java.sql.Date;

public class ReservationDTO {

	private int id;
	private Date checkIn;
	private Date checkOut;
	private int numOfPeople;
	private String room;
	private String morningCall;
	private boolean spaTicket;
	private boolean bed;
	private String requestTerm;
	private String mem_id;
	private String status;
	
	public ReservationDTO() {
		// TODO Auto-generated constructor stub
		super();
	}
	
	public ReservationDTO(int id) {
		this.id = id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getCheckIn() {
		return checkIn;
	}

	public void setCheckIn(Date checkIn) {
		this.checkIn = checkIn;
	}

	public Date getCheckOut() {
		return checkOut;
	}

	public void setCheckOut(Date checkOut) {
		this.checkOut = checkOut;
	}

	public int getNumOfPeople() {
		return numOfPeople;
	}

	public void setNumOfPeople(int numOfPeople) {
		this.numOfPeople = numOfPeople;
	}

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}

	public String getMorningCall() {
		return morningCall;
	}

	public void setMorningCall(String morningCall) {
		this.morningCall = morningCall;
	}

	public boolean isSpaTicket() {
		return spaTicket;
	}

	public void setSpaTicket(boolean spaTicket) {
		this.spaTicket = spaTicket;
	}

	public boolean isBed() {
		return bed;
	}

	public void setBed(boolean bed) {
		this.bed = bed;
	}

	public String getRequestTerm() {
		return requestTerm;
	}

	public void setRequestTerm(String requestTerm) {
		this.requestTerm = requestTerm;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
