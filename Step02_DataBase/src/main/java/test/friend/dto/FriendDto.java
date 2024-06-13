package test.friend.dto;

public class FriendDto {
	private int num;
	private String name;
	private int phone;
	
	public FriendDto () {}

	public FriendDto(int num, String name, int phone) {
		super();
		this.num = num;
		this.name = name;
		this.phone = phone;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}
	
	
}
