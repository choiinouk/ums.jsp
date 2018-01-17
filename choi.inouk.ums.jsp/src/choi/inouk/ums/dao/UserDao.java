package choi.inouk.ums.dao;

import java.util.List;

import choi.inouk.ums.domain.User;

public interface UserDao {
	List<User> getUsers();
	User getUser(int userNo);
	boolean addUser(String userName);
	boolean updateUser(User user);
	boolean delUser(int userNo);
}
