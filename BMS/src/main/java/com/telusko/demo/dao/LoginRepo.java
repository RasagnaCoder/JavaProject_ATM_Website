package com.telusko.demo.dao;

import org.springframework.data.repository.CrudRepository;

import com.telusko.demo.model.Login;

public interface LoginRepo extends CrudRepository<Login,Integer>{
	boolean existsByCardNo(long cardNo);
	Login getByCardNo(Long cardNo);

}
