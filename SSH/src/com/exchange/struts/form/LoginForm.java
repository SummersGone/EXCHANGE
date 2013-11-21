package com.exchange.struts.form;

import org.apache.struts.action.ActionForm;

public class LoginForm extends ActionForm {

	public String getIdcardno() {
		return idcardno;
	}
	public void setIdcardno(String idcardno) {
		this.idcardno = idcardno;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
	private String idcardno;
	private String password;
	private String reminderquestion;
	private String answerforreminder;
}
