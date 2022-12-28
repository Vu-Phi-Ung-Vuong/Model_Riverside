package com.Model.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Model.entity.Order;
@Repository
public interface OrderRepository extends JpaRepository<Order, Integer>{

}
