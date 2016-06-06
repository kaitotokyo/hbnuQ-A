package hemi.pojo;

import java.sql.Timestamp;

public class Question {
private Integer id;
private String name;
private Integer depart;
private Timestamp intime;
private Timestamp retime;
private Integer hit;
private String title;
private String content;
private String reply;
private String process;
private Integer isprivate;
private String qcode;
private String email;
private String phone;

public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public Integer getDepart() {
	return depart;
}
public void setDepart(Integer depart) {
	this.depart = depart;
}
public Timestamp getIntime() {
	return intime;
}
public void setIntime(Timestamp intime) {
	this.intime = intime;
}
public Timestamp getRetime() {
	return retime;
}
public void setRetime(Timestamp retime) {
	this.retime = retime;
}
public Integer getHit() {
	return hit;
}
public void setHit(Integer read) {
	this.hit = read;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getReply() {
	return reply;
}
public void setReply(String reply) {
	this.reply = reply;
}
public String getProcess() {
	return process;
}
public void setProcess(String process) {
	this.process = process;
}
public Integer getIsprivate() {
	return isprivate;
}
public void setIsprivate(Integer isprivate) {
	this.isprivate = isprivate;
}
public String getQcode() {
	return qcode;
}
public void setQcode(String qcode) {
	this.qcode = qcode;
}

}

