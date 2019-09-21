package com.learn.ssm.service;

import com.learn.ssm.domain.Product;

import java.util.List;

public interface IProductService {
    public List<Product> findAll() throws Exception;
}
