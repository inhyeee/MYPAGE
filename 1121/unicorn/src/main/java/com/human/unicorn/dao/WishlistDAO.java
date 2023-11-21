package com.human.unicorn.dao;

import java.util.List;

import com.human.unicorn.dto.WishlistDTO;

public interface WishlistDAO {
	
	List selectWishlist(WishlistDTO dto);
		
	int deleteWishlist(int wishlistno);
	
	int wishlistCnt();

}
