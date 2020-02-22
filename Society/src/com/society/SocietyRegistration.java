package com.society;

public class SocietyRegistration {
	
	int Id,Pincode,FlatT;
	String SID,SPass,SocietyName,Address,City,EntryDate;
	byte[] Image;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public int getPincode() {
		return Pincode;
	}
	public void setPincode(int pincode) {
		Pincode = pincode;
	}
	public int getFlatT() {
		return FlatT;
	}
	public void setFlatT(int flatT) {
		FlatT = flatT;
	}
	public String getSID() {
		return SID;
	}
	public void setSID(String sID) {
		SID = sID;
	}
	public String getSPass() {
		return SPass;
	}
	public void setSPass(String sPass) {
		SPass = sPass;
	}
	public String getSocietyName() {
		return SocietyName;
	}
	public void setSocietyName(String societyName) {
		SocietyName = societyName;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getEntryDate() {
		return EntryDate;
	}
	public void setEntryDate(String entryDate) {
		EntryDate = entryDate;
	}
	public byte[] getImage() {
		return Image;
	}
	public void setImage(byte[] image) {
		Image = image;
	}

	
}