package com.human.unicorn.service;

import java.util.List;
import java.util.Map;

import com.human.unicorn.dto.ProductDTO;

public interface ProductService {

	List<ProductDTO> productList();

	List<ProductDTO> getTop10List();

	void increasePopularity(int productNo);
}
