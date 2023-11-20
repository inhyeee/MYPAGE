package com.human.unicorn.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.unicorn.dto.WishlistDTO;

@Repository
public class WishlistDAOImpl implements WishlistDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List selectWishlist(WishlistDTO dto) {

		List wishlist = sqlSession.selectList("wishlist_info.selectWishlist", dto);
		
		return wishlist;
	}

	@Override
	public int deleteWishlist(int wishlistno) {

		int result = sqlSession.delete("wishlist_info.deleteWishlist", wishlistno);
		
		return result;
	}

	@Override
	public int wishlistCnt() {
		int cnt = sqlSession.selectOne("wishlist_info.wishlistCnt");
		return cnt;
	}

}
