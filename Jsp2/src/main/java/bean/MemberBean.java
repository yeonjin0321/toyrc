package bean;

public class MemberBean {

	//클래스 단위로 넘기기 위해서 자바빈을 만들어 사용하는것임.
	//반드시 이름과 jsp 파일name 맞춰서 매핑 해줘야함. 자바빈즈와 jsp 만든곳에
	//get setProperty로 꺼내서 사용할것
	private String id;
	private String pass1;
	private String email;
	private String tel;
	private String address;
	
	//게터 세터 생성해줌.
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass1() {
		return pass1;
	}
	public void setPass1(String pass1) {
		this.pass1 = pass1;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	@Override
	public String toString() {
		return "MemberBean [id=" + id + ", pass1=" + pass1 + ", email=" + email + ", tel=" + tel + ", address="
				+ address + "]";
	}
	
	
	
}
