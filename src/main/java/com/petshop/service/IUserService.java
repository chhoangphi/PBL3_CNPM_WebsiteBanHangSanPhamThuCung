package com.petshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petshop.entity.Order;
import com.petshop.entity.User;

@Service
public interface IUserService {
	@Autowired
	public List<User> GetDataUser();
	public int AddUser(User user);
	public boolean CheckUser(User user);
	public User GetUser(User user);
	public User findByUserNameAndPasswordAndStatus(User user);
	public int changePassword(String password,User user);
	public int changeInfomation(String fullname,String email,String phoneNumber,User user);
	public List<User> GetDataUserPaginate(int start, int end);
	public int DeleteUser(User user);
	public int UpdateUser(User user);
}
