package com.Model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Model.entity.OrderDetail;

public interface OrderDetailRepository extends JpaRepository<OrderDetail, Integer>{

}
