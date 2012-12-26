/**
 * 
 */
package com.solomen.service.impl;

import com.solomen.dao.IUser;
import com.solomen.dataobject.User;
import com.solomen.service.IUserService;

/**
 * @author Administrator
 *
 */
public class UserService implements IUserService {
private IUser user;
	/**
 * @return the user
 */
public IUser getUser() {
	return user;
}
/**
 * @param user the user to set
 */
public void setUser(IUser user) {
	this.user = user;
}
	@Override
	public boolean saveUser(final User user) {
		return getUser().saveUser(user);
		
	}

}
