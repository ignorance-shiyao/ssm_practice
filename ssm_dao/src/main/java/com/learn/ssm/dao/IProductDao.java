package com.learn.ssm.dao;

import com.learn.ssm.domain.Product;

import java.util.List;

public interface IProductDao {
    public List<Product> findAll() throws Exception;
}
