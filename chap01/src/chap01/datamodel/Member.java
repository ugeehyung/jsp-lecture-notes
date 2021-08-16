package chap01.datamodel;

public class Member {

	private String name;		
	private String id;	
	private String pw;

	public Member(String name, String id, String pw) {
		this.name = name;
		this.id = id;
		this.pw = pw;
	}
	
	public String getName() { 
		return this.name;
	}
	public String getId() {
		return this.id;
	}
	public String getPw() {
		return this.pw;
	}
}	