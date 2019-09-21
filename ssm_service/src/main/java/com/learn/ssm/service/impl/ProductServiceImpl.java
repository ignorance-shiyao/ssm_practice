package com.learn.ssm.service.impl;

import com.learn.ssm.dao.IProductDao;
import com.learn.ssm.domain.Product;
import com.learn.ssm.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ProductServiceImpl implements IProductService {

    @Autowired
    private IProductDao productDao;
    @Autowired
    public List<Product> findAll() throws Exception {
        return productDao.findAll();
    }
}