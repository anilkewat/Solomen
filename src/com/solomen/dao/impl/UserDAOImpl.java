/**
 * 
 */
package com.solomen.dao.impl;

import java.awt.datatransfer.Clipboard;

import loggingpackage.LoggerClass;

import org.springframework.jdbc.core.JdbcTemplate;

import com.solomen.dao.IUser;
import com.solomen.dataobject.User;

/**
 * @author Administrator
 *
 */
public class UserDAOImpl implements IUser {
private JdbcTemplate jdbcTemplate;
	
	/**
 * @return the jdbcTemplate
 */
public JdbcTemplate getJdbcTemplate() {
	return jdbcTemplate;
}

/**
 * @param jdbcTemplate the jdbcTemplate to set
 */
public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	this.jdbcTemplate = jdbcTemplate;
}

	@Override
	public boolean saveUser(User user) {
		final String insertQuery="insert into User_Info(user_name,user_password,user_email_id)values(?,?,?)";
		boolean userSaved;
		try{
			getJdbcTemplate().update(insertQuery, user.getUserName(),user.getPassword(),user.getEmailId());
			userSaved=true;
		}catch(Exception e){
			LoggerClass.writeLog(this.getClass(),e.getLocalizedMessage());
			userSaved=false;
		}
		return userSaved;
	}

}
