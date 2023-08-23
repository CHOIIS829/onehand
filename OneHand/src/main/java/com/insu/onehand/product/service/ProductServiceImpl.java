package com.insu.onehand.product.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.insu.onehand.common.vo.PageInfo;
import com.insu.onehand.product.mapper.ProductMapper;
import com.insu.onehand.product.vo.Product;
import com.insu.onehand.product.vo.ProductAtta;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService {
	
	private final ProductMapper productMapper;
	
	@Transactional
	@Override
	public int inserProduct(Product p, ArrayList<ProductAtta> list) {
		int result = productMapper.insertProduct(p);
		if(result > 0) {
			for(ProductAtta at : list) {
				result = productMapper.insertProductAtta(at);
			}
		}
		return result;
	}

	@Override
	public int selectListCount() {
		return productMapper.selectListCount();
	}

	@Override
	public ArrayList<Product> selectList(int areaId, int categoryNo, String sortOption, PageInfo pi) {
		return productMapper.selectList(areaId, categoryNo, sortOption, pi);
	}

	@Override
	public Product selectProduct(int productNo) {
		return productMapper.selectProduct(productNo);
	}

	@Override
	public ArrayList<ProductAtta> selectAtta(int productNo) {
		return productMapper.selectAtta(productNo);
	}

	@Override
	public int updateCount(int productNo) {
		return productMapper.updateCount(productNo);
	}

}
