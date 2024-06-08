package dto;

public class ReservationDTO {

	private int id;
	private String memberId;
	private String checkInOut;
	private String guests;
	private String roomType;
	private String wakeUpCall;
	private String spa;
	private String extraBed;
	private String addGuests;
	private String requests;
	private String totalPrice;
	
	public ReservationDTO() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getCheckInOut() {
		return checkInOut;
	}

	public void setCheckInOut(String checkInOut) {
		this.checkInOut = checkInOut;
	}

	public String getGuests() {
		return guests;
	}

	public void setGuests(String guests) {
		this.guests = guests;
	}

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public String getWakeUpCall() {
		return wakeUpCall;
	}

	public void setWakeUpCall(String wakeUpCall) {
		this.wakeUpCall = wakeUpCall;
	}

	public String getSpa() {
		return spa;
	}

	public void setSpa(String spa) {
		this.spa = spa;
	}

	public String getExtraBed() {
		return extraBed;
	}

	public void setExtraBed(String extraBed) {
		this.extraBed = extraBed;
	}

	public String getAddGuests() {
		return addGuests;
	}

	public void setAddGuests(String addGuests) {
		this.addGuests = addGuests;
	}

	public String getRequests() {
		return requests;
	}

	public void setRequests(String requests) {
		this.requests = requests;
	}

	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	

}
