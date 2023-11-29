package com.human.unicorn.service;

import java.util.List;
import java.util.Map;

import com.human.unicorn.dto.WishlistDTO;

public interface WishlistService {
	
	Map selectWishlist(int pageNum, int countPerPage, WishlistDTO dto);

	int deleteWishlist(int wishlistno);

}
