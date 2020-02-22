package com.society;

public class RentFlat {
	int Id, FlatId;
	String RentId, RenterPass, SocietyName, EntryDate, Agreement, leaveDate;

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getRentId() {
		return RentId;
	}

	public void setRentId(String rentId) {
		RentId = rentId;
	}

	public String getRenterPass() {
		return RenterPass;
	}

	public void setRenterPass(String renterPass) {
		RenterPass = renterPass;
	}

	public int getFlatId() {
		return FlatId;
	}

	public void setFlatId(int flatId) {
		FlatId = flatId;

	}

	public String getSocietyName() {
		return SocietyName;
	}

	public void setSocietyName(String societyName) {
		SocietyName = societyName;
	}

	public String getEntryDate() {
		return EntryDate;
	}

	public void setEntryDate(String entryDate) {
		EntryDate = entryDate;
	}

	public String getAgreement() {
		return Agreement;
	}

	public void setAgreement(String agreement) {
		Agreement = agreement;
	}

	public String getLeaveDate() {
		return leaveDate;
	}

	public void setLeaveDate(String leaveDate) {
		this.leaveDate = leaveDate;
	}

}
