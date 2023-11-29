package com.human.unicorn.dao;

import java.util.List;

import com.human.unicorn.dto.ProductDTO;

public interface ProductDAO {

	List<ProductDTO> productList();

	List<ProductDTO> selectTop10List();

	void increasePopularity(int productNo);
	

}
