package dao;

import java.util.ArrayList;

import dto.FacilityDTO;

public class FacilityDAO {
	
	private ArrayList<FacilityDTO> listOfFacility = new ArrayList<FacilityDTO>();
	
	public FacilityDAO() {
		FacilityDTO fac1 = new FacilityDTO("스파");
		fac1.setDescription("호텔 스파는 휴식과 몸과 마음의 치유를 위한 특별한 장소입니다. 이곳은 숙박 고객들에게만 제공되는 것이 아니라 외부 손님들에게도 열려 있을 수 있습니다. 호텔 스파는 전문적인 마사지 서비스, 피부 관리, 목욕 시설 등을 제공하여 방문객들이 일상 생활에서 벗어나 편안함을 느낄 수 있도록 합니다.");
		fac1.setImagePATH("fac1.jpg");
		fac1.setPrice("30,000원");
		
		FacilityDTO fac2 = new FacilityDTO("피트니스 센터");
		fac2.setDescription("호텔 피트니스 센터는 숙박 고객들에게 운동 및 건강 관리 시설을 제공하는 곳입니다. 이는 일상 생활에서 스트레스를 해소하고 건강을 유지하기 위한 이상적인 장소로 여겨집니다. 호텔 피트니스 센터는 현대적인 운동기구 및 시설을 갖추고 있으며, 전문적인 트레이너나 인스트럭터의 지도를 받을 수도 있습니다.");
		fac2.setImagePATH("fac2.jpg");
		fac2.setPrice("30,000원");
		
		FacilityDTO fac3 = new FacilityDTO("인피니티 풀장");
		fac3.setDescription("호텔의 인피니티 풀장은 투숙객들에게 제공되는 특별한 휴양 시설 중 하나입니다. 이 풀장은 그 아름다운 경치와 함께 현대적이고 고급스러운 디자인으로 꾸며져 있습니다. 인피니티 풀장은 일반적인 수영장과는 다르게 수면과 수평선이 하나로 연결되어 있는 독특한 디자인을 가지고 있어, 물의 표면이 끝없이 펼쳐진 듯한 환상적인 경험을 선사합니다.");
		fac3.setImagePATH("fac3.jpg");
		fac3.setPrice("30,000원");
		
		listOfFacility.add(fac1);
		listOfFacility.add(fac2);
		listOfFacility.add(fac3);
	}
	public ArrayList<FacilityDTO> getAllfacility() {
		return listOfFacility;
	}
	
}
