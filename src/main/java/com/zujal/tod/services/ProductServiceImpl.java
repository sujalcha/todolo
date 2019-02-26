package com.zujal.tod.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zujal.tod.repository.ProductRepository;


@Transactional
@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductRepository productRepository;

	@Override
	public List<String> nameautocomplete(String keyword) {
		return productRepository.nameautocomplete(keyword);
	}

}