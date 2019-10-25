package web.mongo.db.modal;

public class Zip {
	private String option;
	private String ptitle;
	private String city;
	private String pcode;
	private String description;
	private String email;
	private String phone;
	
	public Zip(String a, String b, String c, String d, String e, String f, String g){
		this.option=a;
		this.ptitle=b;
		this.city=c;
		this.pcode=d;
		this.description=e;
		this.email=f;
		this.phone= g;
	}

	public String getOption() {
		return option;
	}

	public void setOption(String option) {
		this.option = option;
	}

	public String getPtitle() {
		return ptitle;
	}

	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPcode() {
		return pcode;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
}
