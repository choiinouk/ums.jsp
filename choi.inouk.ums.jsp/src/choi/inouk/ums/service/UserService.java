package choi.inouk.ums.service;

import java.util.List;

import choi.inouk.ums.domain.User;

public interface UserService {
	List<User>listUsers();
	User findUser(int userNo);
	boolean join(String userName);
	public boolean correctUser(User user);
	boolean secede(int userNo);
}
