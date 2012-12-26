/**
 * 
 */
package com.solomen.dataobject;

/**
 * @author Administrator
 *
 */
public class User {
private String userName;
private String Password;
private String emailId;
/**
 * @return the userName
 */
public String getUserName() {
	return userName!=null?userName:"";
}
/**
 * @param userName the userName to set
 */
public void setUserName(final String userName) {
	this.userName = userName;
}
/**
 * @return the password
 */
public String getPassword() {
	return Password!=null?Password:"";
}
/**
 * @param password the password to set
 */
public void setPassword(final String password) {
	Password = password;
}
/**
 * @return the emailId
 */
public String getEmailId() {
	return emailId!=null?emailId:"";
}
/**
 * @param emailId the emailId to set
 */
public void setEmailId(final String emailId) {
	this.emailId = emailId;
}

public String toString(){
	return "UserName: "+getUserName();
}

}
