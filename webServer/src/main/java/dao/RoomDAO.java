//package dao;
//
//import java.util.ArrayList;
//
//import dto.Room;
//
//public class RoomRepository {
//
//	private ArrayList<Room> listOfRooms = new ArrayList<Room>();
//	private static RoomRepository instance = new RoomRepository();
//	
//	public static RoomRepository getInstance() {
//		return instance;
//	}
//	
//	public RoomRepository() {
//		Room room1 = new Room("로얄 스위트룸", "room1");
//		room1.setImagePATH("room1.jpg");
//		room1.setImagePATH2("room1-2.jpg");
//		room1.setImagePATH3("room1-3.jpg");
//		room1.setBriefDescription("침대타입 더블 | 전망 시티뷰 | 투숙인원 2 명 | 객실면적 353 ㎡");
//		room1.setDescription("넓은 공간과 최고급 편의시설을 갖춘 럭셔리한 객실로, 완벽한 휴식과 품격 있는 서비스를 제공합니다.");
//		room1.setbedType("더블");
//		room1.setview("시티뷰");
//		room1.setroomArea("353 ㎡");
//		room1.setguestsCount(2);
//		room1.setamenityList("면봉 / 우산 / 슬리퍼 / 욕실용품 / 목욕가운 / 무료 생수 1일 2병");
//		room1.setCheckInTime("15:00");
//		room1.setCheckOutTime("11:00");
//		room1.setRoomPrice(250000);
//		
//		Room room2 = new Room("그랜드 디럭스룸", "room2");
//		room2.setImagePATH("room2.jpg");
//		room2.setImagePATH2("room2-2.jpg");
//		room2.setImagePATH3("room2-3.jpg");
//		room2.setBriefDescription("침대타입 더블 ㅣ 전망 시티뷰 / 리버뷰 / 시티뷰 (전망욕실) / 리버뷰 (전망욕실) | 투숙인원 2 명 | 객실면적 40~50 ㎡");
//		room2.setDescription("세련된 인테리어와 고급 편의시설로 편안한 휴식을 제공하는 넓은 객실로, 여유로운 휴식을 누리실 수 있습니다.");
//		room2.setbedType("더블");
//		room2.setview("시티뷰 / 리버뷰 / 시티뷰 (전망욕실) / 리버뷰 (전망욕실)");
//		room2.setroomArea("40~50 ㎡");
//		room2.setguestsCount(2);
//		room2.setamenityList("케이블 위성 TV 채널 / 무료 생수 1일 2병 / 커피 및 티 메이커 / 무료 일간 신문 / 옷솔 / 무료 다림질 서비스 (1일 2점)");
//		room2.setCheckInTime("15:00");
//		room2.setCheckOutTime("11:00");
//		room2.setRoomPrice(300000);
//		
//		Room room3 = new Room("프리미어룸","room3");
//		room3.setImagePATH("room3.jpg");
//		room3.setImagePATH2("room3-2.jpg");
//		room3.setImagePATH3("room3-3.jpg");
//		room3.setBriefDescription("침대타입 더블/트윈 | 전망 시티뷰 / 리버뷰 / 시티뷰 (전망욕실) / 리버뷰 (전망욕실) | 투숙인원 2 명 | 객실면적 46~60 ㎡");
//		room3.setDescription("모던한 디자인과 최상의 편의시설을 갖춘 고급스러운 객실로, 특별한 경험과 편안함을 선사합니다.");
//		room3.setbedType("더블/트윈");
//		room3.setview("시티뷰 / 리버뷰 / 시티뷰 (전망욕실) / 리버뷰 (전망욕실)");
//		room3.setroomArea("46~60 ㎡");
//		room3.setguestsCount(3);
//		room3.setamenityList("55” HD TV / 60” HD TV / 미니바 / 티포트 / 사무용 데스크 (문구류 포함) / 전화기 / 우산 / 구둣주걱");
//		room3.setCheckInTime("15:00");
//		room3.setCheckOutTime("11:00");
//		room3.setRoomPrice(200000);
//		
//		listOfRooms.add(room1);
//		listOfRooms.add(room2);
//		listOfRooms.add(room3);
//		
//	}
//	public ArrayList<Room> getAllRooms() {
//		return listOfRooms;
//	}
//	public Room getRoomById(String RoomId) {
//		Room RoomById = null;
//		
//		for (int i = 0; i <listOfRooms.size(); i++) {
//			Room Room = listOfRooms.get(i);
//			if(Room!=null && Room.getRoomId()!=null && Room.getRoomId().equals(RoomId)) {
//				RoomById=Room;
//				break;
//			}
//		}
//		return RoomById;
//	}
//	public void addRoom(Room room) {
//		listOfRooms.add(room);
//	}
//}
package dao;


