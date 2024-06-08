package dto;

import java.io.Serializable;

public class RoomDTO implements Serializable {

	private static final long serialVersionUID = 7828043288417730098L;

	private String imagePATH; // 이미지파일경로
	private String imagePATH2;
	private String imagePATH3;
	private String name; // 방이름
	private String briefDescription; // 한줄소개
	private String description; // 객실설명
	private String bedType; // 침대타입
	private String view; // 전망
	private String roomArea; // 객실면적
	private int guestsCount; // 인원
	private String amenityList; // 어메니티
	private String checkInTime; // 체크인시간
	private String checkOutTime; // 체크아웃시간
	private String roomId;
	private int roomPrice;
	
	public String getImagePATH() {
		return imagePATH;
	}

	public void setImagePATH(String imagePATH) {
		this.imagePATH = imagePATH;
	}
	
	public String getImagePATH2() {
		return imagePATH2;
	}

	public void setImagePATH2(String imagePATH2) {
		this.imagePATH2 = imagePATH2;
	}
	
	public String getImagePATH3() {
		return imagePATH3;
	}
	

	public void setImagePATH3(String imagePATH3) {
		this.imagePATH3 = imagePATH3;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBriefDescription() {
		return briefDescription;
	}

	public void setBriefDescription(String briefDescription) {
		this.briefDescription = briefDescription;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getbedType() {
		return bedType;
	}

	public void setbedType(String bedType) {
		this.bedType = bedType;
	}

	public String getview() {
		return view;
	}

	public void setview(String view) {
		this.view = view;
	}

	public String getroomArea() {
		return roomArea;
	}

	public void setroomArea(String roomArea) {
		this.roomArea = roomArea;
	}

	public int getguestsCount() {
		return guestsCount;
	}

	public void setguestsCount(int guestsCount) {
		this.guestsCount = guestsCount;
	}

	public String getamenityList() {
		return amenityList;
	}

	public void setamenityList(String amenityList) {
		this.amenityList = amenityList;
	}

	public String getCheckInTime() {
		return checkInTime;
	}

	public void setCheckInTime(String checkInTime) {
		this.checkInTime = checkInTime;
	}

	public String getCheckOutTime() {
		return checkOutTime;
	}

	public void setCheckOutTime(String checkOutTime) {
		this.checkOutTime = checkOutTime;
	}
	public String getRoomId() {
		return roomId;
	}

	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}

	public int getRoomPrice() {
		return roomPrice;
	}

	public void setRoomPrice(int roomPrice) {
		this.roomPrice = roomPrice;
	}

	public RoomDTO() {
		super();
	}
	
	public RoomDTO(String name, String roomId) {
		this.name = name;
		this.roomId = roomId;
	}

}
