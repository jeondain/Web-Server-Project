package DAO;

import java.sql.Date;
import java.util.ArrayList;

import DTO.inquiryDTO;

public class inquiryDAO {
	
	private ArrayList<inquiryDTO> listOfInquiries = new ArrayList<inquiryDTO>();
	private static inquiryDAO instance = new inquiryDAO();
	private int lastId = 0;
	
	public static inquiryDAO getInstance() {
		return instance;
	}
	
	public ArrayList<inquiryDTO> getAllInquiries() {
		return listOfInquiries;
	}
	
	public inquiryDAO() {
		// TODO Auto-generated constructor stub
		inquiryDTO inquiry1 = new inquiryDTO(1);
		inquiry1.setSubject("룸 변경하고 싶어요");
		inquiry1.setContent("디럭스룸에서 스위트룸으로 변경하고 싶어요. !!!!!!!");
		inquiry1.setCreationDate(Date.valueOf("2024-03-27"));
		inquiry1.setWriter("오햄민");
		inquiry1.setResponse("변경해드렸습니다.");
		inquiry1.setStatus("answered");
		
		inquiryDTO inquiry2 = new inquiryDTO(2);
		inquiry2.setSubject("환불 문의");
		inquiry2.setContent("디럭스룸에서 스위트룸으로 변경하고 싶어요. !!!!!!!");
		inquiry2.setCreationDate(Date.valueOf("2024-04-12"));
		inquiry2.setWriter("김긍현");
		inquiry2.setStatus("pending");
		
		listOfInquiries.add(inquiry1);
		listOfInquiries.add(inquiry2);
		
		// 마지막 id 설정
		if (!listOfInquiries.isEmpty()) {
			lastId = listOfInquiries.get(listOfInquiries.size() - 1).getId();
		}
	}
		
	public inquiryDTO getInquiryById(int id) {
	    inquiryDTO inquiryById = null;
	    
	    for(int i=0; i<listOfInquiries.size(); i++) {
	        inquiryDTO inquiry = listOfInquiries.get(i);
	        if(inquiry != null && inquiry.getId() == id) {
	            inquiryById = inquiry;
	            break;
	        }
	    }
	    return inquiryById;
	}

	public void addInquiry(inquiryDTO newInquiry) {
		if (newInquiry != null) {
			lastId++;
			newInquiry.setId(lastId);
			
			listOfInquiries.add(newInquiry);
		}
	}
}
