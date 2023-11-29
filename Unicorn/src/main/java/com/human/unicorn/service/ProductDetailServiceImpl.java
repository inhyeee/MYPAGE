package com.human.unicorn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.unicorn.dao.ProductDetailDAO;
import com.human.unicorn.dto.CartDTO;
import com.human.unicorn.dto.ImgDTO;
import com.human.unicorn.dto.OptionDTO;
import com.human.unicorn.dto.PaymentDTO;
import com.human.unicorn.dto.WishlistDTO;
import com.human.unicorn.dto.ProductDTO;

@Service
public class ProductDetailServiceImpl implements ProductDetailService {

	
	@Autowired 
	ProductDetailDAO productDetailDAO;
	
	
	
	@Override
	public List product(ProductDTO dto) {
		List list = productDetailDAO.product(dto);
		return list;
	}

	@Override
	public List productOption(OptionDTO dto) {
		List list = productDetailDAO.productOption(dto);
		return list;
	}

	@Override
	public List productImg(ImgDTO dto) {
		List list = productDetailDAO.productImg(dto);
		return list;
	}

	@Override
	public int cartinfo(CartDTO dto) {
		int cart = productDetailDAO.cartinfo(dto);
		return cart;
	}

	@Override
	public int wishinfo(CartDTO dto) {
		int wishlist = productDetailDAO. wishinfo(dto);
		return wishlist;
	}

	@Override
	public PaymentDTO orderinfo(CartDTO dto) {
		PaymentDTO order = productDetailDAO. orderinfo(dto);
		return order;
	}


}
	

	



