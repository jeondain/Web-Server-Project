package dto;

import java.io.Serializable;

public class FacilityDTO implements Serializable {

	private static final long serialVersionUID = -2323698022929224917L;

	private String name;
	private String imagePATH;
	private String description;
	private String price;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getImagePATH() {
		return imagePATH;
	}

	public void setImagePATH(String imagePATH) {
		this.imagePATH = imagePATH;
	}
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
	
	public FacilityDTO() {
		super();
	}
	
	public FacilityDTO(String name) {
		this.name = name;
	}
}
