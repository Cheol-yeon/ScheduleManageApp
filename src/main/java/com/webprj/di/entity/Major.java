package com.webprj.di.entity;

public class Major {
	private int majorno;
	private String mojorname;
	
	public Major() {}

	public Major(int majorno, String mojorname) {
		this.majorno = majorno;
		this.mojorname = mojorname;
	}

	public int getMajorno() {
		return majorno;
	}

	public void setMajorno(int majorno) {
		this.majorno = majorno;
	}

	public String getMojorname() {
		return mojorname;
	}

	public void setMojorname(String mojorname) {
		this.mojorname = mojorname;
	}

	@Override
	public String toString() {
		return "Major [majorno=" + majorno + ", mojorname=" + mojorname + "]";
	}
	
}
