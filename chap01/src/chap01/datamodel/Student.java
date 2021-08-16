package chap01.datamodel;

public class Student {
	
	private String name;		
	private int kor;

	public Student(String name, int kor) {
		this.name = name;
		this.kor = kor;
	}
	
	public String getName() { 
		return this.name;
	}
	public int getKor() {
		return this.kor;
	}
	
	@Override
	public String toString() {
		return "[이름: " + name +"/국어점수: " + kor + "]";
	}
}	

