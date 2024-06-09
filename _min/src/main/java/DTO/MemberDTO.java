package DTO;

public class MemberDTO {
	
	private String id;
	private String name;
	private String email;
	private String password;
	private String phone_num;
	
	public MemberDTO() {
		// TODO Auto-generated constructor stub
		super();
	}
	
	public MemberDTO(String id) {
		this.id = id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone_num() {
		return phone_num;
	}
	
	public String getFormattedPhoneNum() {
	    if (phone_num == null || phone_num.length() != 11) {
	        return ""; 
	    }
	    // 전화번호를 3자리 - 4자리 - 4자리 형식으로 변환하여 반환
	    return phone_num.substring(0, 3) + "-" + phone_num.substring(3, 7) + "-" + phone_num.substring(7);
	}


	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}

}
