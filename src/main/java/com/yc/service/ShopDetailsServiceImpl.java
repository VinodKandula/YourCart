package com.yc.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.yc.dao.ShopDetailsRepository;
import com.yc.exception.ShopNotFoundException;
import com.yc.model.ShopDetails;

public class ShopDetailsServiceImpl implements ShopDetailsService {
	
	@Autowired
	private ShopDetailsRepository shopDetailsRepository;

	@Override
	public ShopDetails get(int id) {
		return shopDetailsRepository.findOne(id);
	}

	@Override
	public ShopDetails save(ShopDetails shopDetails) {
		return shopDetailsRepository.save(shopDetails);
	}

	@Override
	public ShopDetails update(ShopDetails shopDetails)
			throws ShopNotFoundException {
		ShopDetails detailsToUpdate = get(shopDetails.getShopId());
		if (detailsToUpdate == null)
			throw new ShopNotFoundException();
		detailsToUpdate.update(shopDetails);
		return shopDetails;
	}

}
