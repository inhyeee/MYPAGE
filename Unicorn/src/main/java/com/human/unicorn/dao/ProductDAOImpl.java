package com.human.unicorn.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.unicorn.dto.ProductDTO;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<ProductDTO> productList() {
		List<ProductDTO> productList = sqlSession.selectList("product.selectProductList");
		return productList;
	}

	@Override
	public List<ProductDTO> selectTop10List() {
		List<ProductDTO> top10List = sqlSession.selectList("product.selectTop10Products");
		return top10List;
	}

	@Override
	public void increasePopularity(int productNo) {
		sqlSession.update("product.increasePopularity", productNo);
	}
}
