package board;

import java.sql.Time;

import com.sun.jmx.snmp.Timestamp;

public class BoardDTO {
private String name,pass,subject,content;
private int readcount, num,re_ref,re_lev,re_seq;
private Timestamp date;  


public int getRe_ref() {
	return re_ref;
}
public void setRe_ref(int re_ref) {
	this.re_ref = re_ref;
}
public int getRe_lev() {
	return re_lev;
}
public void setRe_lev(int re_lev) {
	this.re_lev = re_lev;
}
public int getRe_seq() {
	return re_seq;
}
public void setRe_seq(int re_seq) {
	this.re_seq = re_seq;
}
public String getName() {
	return name;
}
public int getNum() {
	return num;
}
public void setNum(int num) {
	this.num = num;
}
public Timestamp getDate() {
	return date;
}
public void setDate(Timestamp date) {
	this.date = date;
}
public void setName(String name) {
	this.name = name;
}
public String getPass() {
	return pass;
}
public void setPass(String pass) {
	this.pass = pass;
}
public String getSubject() {
	return subject;
}
public void setSubject(String subject) {
	this.subject = subject;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public int getReadcount() {
	return readcount;
}
public void setReadcount(int readcount) {
	this.readcount = readcount;
}
}
