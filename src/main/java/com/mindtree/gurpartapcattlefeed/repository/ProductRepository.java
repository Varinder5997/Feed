package com.mindtree.gurpartapcattlefeed.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.gurpartapcattlefeed.entity.Products;

@Repository
public interface ProductRepository extends JpaRepository<Products, Integer> {

}
