package com.mindtree.gurpartapcattlefeed.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mindtree.gurpartapcattlefeed.entity.User;

public interface UserRepository extends JpaRepository<User,Integer >{

	User findByuserEmail(String email);

}
