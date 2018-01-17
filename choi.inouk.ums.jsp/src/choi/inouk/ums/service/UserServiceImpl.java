package choi.inouk.ums.service;

import java.util.List;
import choi.inouk.ums.dao.UserDao;
import choi.inouk.ums.domain.User;

public class UserServiceImpl implements UserService{
	private UserDao userDao;
	
	public UserServiceImpl(UserDao userDao){
		this.userDao = userDao;
	}
	
	@Override
	public List<User>listUsers(){
		return userDao.getUsers();
	}
	
	@Override
	public User findUser(int userNo){
		return userDao.getUser(userNo);
	}
	
	@Override
	public boolean join(String userName){
		return userDao.addUser(userName);
	}
	
	@Override
	public boolean correctUser(User user){
		return userDao.updateUser(user);
	}
	
	@Override
	public boolean secede(int userNo){
		return userDao.delUser(userNo);
	}
}
