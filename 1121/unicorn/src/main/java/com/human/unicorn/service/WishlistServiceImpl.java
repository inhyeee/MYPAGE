package com.human.unicorn.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.unicorn.dao.WishlistDAO;
import com.human.unicorn.dto.WishlistDTO;

@Service
public class WishlistServiceImpl implements WishlistService {

	@Autowired
	WishlistDAO wishlistDAO;
	
	@Override
	public Map selectWishlist(int pageNum, int countPerPage) {
		
		int startNum = 0, endNum = 0;
		
		startNum = ( (pageNum-1) * countPerPage ) +1;
		endNum = pageNum * countPerPage;
		
		WishlistDTO dto = new WishlistDTO();
		dto.setStartNum(startNum);
		dto.setEndNum(endNum);
		
		// 실제 보여줄 list
		List wishlist = wishlistDAO.selectWishlist(dto);
		System.out.println("wishlist result : " + wishlist);
		
		// 전체 개수 cnt
		int total = wishlistDAO.wishlistCnt();
		
		Map map = new HashMap();
		map.put("wishlist", wishlist);
		map.put("total", total);
		
		return map;
	}

	@Override
	public int deleteWishlist(int wishlistno) {

		int result = wishlistDAO.deleteWishlist(wishlistno);
		System.out.println("delete result : " + result);
		
		return result;
	}

}
