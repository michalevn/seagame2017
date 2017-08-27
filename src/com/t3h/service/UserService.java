package com.t3h.service;

import com.t3h.util.AppUtils;

public class UserService {

	public boolean checkLogin(String username, String password) {
		return AppUtils.checkLogin(username, password);
	}
}
