package com.bkap.dao;

import com.bkap.entities.Account;

public interface AccountDao extends GenericDao<Account, Integer>{
	public Account getAccount(String username);
	boolean isUsernameExists(String username);
}