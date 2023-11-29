package com.human.unicorn.dao;

import java.util.List;

import com.human.unicorn.dto.CartDTO;
import com.human.unicorn.dto.ImgDTO;
import com.human.unicorn.dto.OptionDTO;
import com.human.unicorn.dto.PaymentDTO;
import com.human.unicorn.dto.WishlistDTO;
import com.human.unicorn.dto.ProductDTO;

public interface ProductDetailDAO {
	
	public List product(ProductDTO dto); 
	public List productOption(OptionDTO dto); 
	public List productImg (ImgDTO dto); 
	
	public int cartinfo (CartDTO dto);
	public int wishinfo(CartDTO dto); 
	public PaymentDTO orderinfo(CartDTO dto); 
	
 
}
