package com.exchange.model;

import java.util.Date;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */

public class Users implements java.io.Serializable {

	// Fields

	private String idcardno;
	private String name;
	private String contact;
	private String bankcardno;
	private String password;
	private String reminderquestion;
	private String answerforreminder;
	private Date lastlogontime;
	private Byte continuewrongcount;
	private String islockon;

	// Constructors

	/** default constructor */
	public Users() {
	}

	/** minimal constructor */
	public Users(String idcardno, String name, String contact,
			String bankcardno, String password, String reminderquestion,
			String answerforreminder) {
		this.idcardno = idcardno;
		this.name = name;
		this.contact = contact;
		this.bankcardno = bankcardno;
		this.password = password;
		this.reminderquestion = reminderquestion;
		this.answerforreminder = answerforreminder;
	}

	/** full constructor */
	public Users(String idcardno, String name, String contact,
			String bankcardno, String password, String reminderquestion,
			String answerforreminder, Date lastlogontime,
			Byte continuewrongcount, String islockon) {
		this.idcardno = idcardno;
		this.name = name;
		this.contact = contact;
		this.bankcardno = bankcardno;
		this.password = password;
		this.reminderquestion = reminderquestion;
		this.answerforreminder = answerforreminder;
		this.lastlogontime = lastlogontime;
		this.continuewrongcount = continuewrongcount;
		this.islockon = islockon;
	}

	// Property accessors

	public String getIdcardno() {
		return this.idcardno;
	}

	public void setIdcardno(String idcardno) {
		this.idcardno = idcardno;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContact() {
		return this.contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getBankcardno() {
		return this.bankcardno;
	}

	public void setBankcardno(String bankcardno) {
		this.bankcardno = bankcardno;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getReminderquestion() {
		return this.reminderquestion;
	}

	public void setReminderquestion(String reminderquestion) {
		this.reminderquestion = reminderquestion;
	}

	public String getAnswerforreminder() {
		return this.answerforreminder;
	}

	public void setAnswerforreminder(String answerforreminder) {
		this.answerforreminder = answerforreminder;
	}

	public Date getLastlogontime() {
		return this.lastlogontime;
	}

	public void setLastlogontime(Date lastlogontime) {
		this.lastlogontime = lastlogontime;
	}

	public Byte getContinuewrongcount() {
		return this.continuewrongcount;
	}

	public void setContinuewrongcount(Byte continuewrongcount) {
		this.continuewrongcount = continuewrongcount;
	}

	public String getIslockon() {
		return this.islockon;
	}

	public void setIslockon(String islockon) {
		this.islockon = islockon;
	}

}