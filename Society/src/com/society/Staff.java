package com.society;

public class Staff {
	int Id;
	
	String SocietyName,Name,WorkerD,IdProof,Phone;
	
	byte[] Image;

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getSocietyName() {
		return SocietyName;
	}

	public void setSocietyName(String societyName) {
		SocietyName = societyName;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getWorkerD() {
		return WorkerD;
	}

	public void setWorkerD(String workerD) {
		WorkerD = workerD;
	}

	public String getIdProof() {
		return IdProof;
	}

	public void setIdProof(String idProof) {
		IdProof = idProof;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public byte[] getImage() {
		return Image;
	}

	public void setImage(byte[] image) {
		Image = image;
	}

	
	
}
