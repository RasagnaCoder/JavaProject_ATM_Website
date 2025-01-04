package com.telusko.demo.dao;

import org.springframework.data.repository.CrudRepository;

import com.telusko.demo.model.BankUsers;

public interface SignUpRepo extends CrudRepository<BankUsers,Integer> {
	BankUsers getByCardNo(Long cardNo);

}
