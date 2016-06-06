package hemi.pojo;

import java.io.Serializable;

public class Depart implements Serializable{
/**
	 * 
	 */
	private static final long serialVersionUID = 5712641250046059266L;
private Integer id;
private String name;
private String pwd;
private String statement;
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
public String getPwd() {
	return pwd;
}
public void setPwd(String pwd) {
	this.pwd = pwd;
}
public String getStatement() {
	return statement;
}
public void setStatement(String statement) {
	this.statement = statement;
}
@Override
public String toString() {
	return "Depart [id=" + id + ", name=" + name + ", pwd=" + pwd + ", statement=" + statement + "]";
}

}
