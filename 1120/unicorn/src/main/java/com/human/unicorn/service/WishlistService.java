package com.human.unicorn.service;

import java.util.List;
import java.util.Map;

public interface WishlistService {
	
	Map selectWishlist(int pageNum, int countPerPage);

	int deleteWishlist(int wishlistno);

}
