package com.exchange.struts.form;

import org.apache.struts.action.ActionForm;

public class RegisterForm extends ActionForm 
{
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIdcardno() {
		return idcardno;
	}
	public void setIdcardno(String idcardno) {
		this.idcardno = idcardno;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getBankcardno() {
		return bankcardno;
	}
	public void setBankcardno(String bankcardno) {
		this.bankcardno = bankcardno;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmpsd() {
		return confirmpsd;
	}
	public void setConfirmpsd(String confirmpsd) {
		this.confirmpsd = confirmpsd;
	}
	public String getReminderquestion() {
		return reminderquestion;
	}
	public void setReminderquestion(String reminderquestion) {
		this.reminderquestion = reminderquestion;
	}
	public String getAnswerforreminder() {
		return answerforreminder;
	}
	public void setAnswerforreminder(String answerforreminder) {
		this.answerforreminder = answerforreminder;
	}
	private String name;
	private String idcardno;
	private String contact;
	private String bankcardno;
	private String password;
	private String confirmpsd;
	private String reminderquestion;
	private String answerforreminder;
}
