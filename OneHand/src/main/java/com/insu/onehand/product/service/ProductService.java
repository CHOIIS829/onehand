package com.insu.onehand.product.service;

import java.util.ArrayList;

import com.insu.onehand.common.vo.PageInfo;
import com.insu.onehand.product.vo.Product;
import com.insu.onehand.product.vo.ProductAtta;

public interface ProductService {
	
	int inserProduct(Product p, ArrayList<ProductAtta> list);
	int selectListCount();
	ArrayList<Product> selectList(int areaId, int categoryNo, String sortOption, PageInfo pi);
	Product selectProduct(int productNo);
	ArrayList<ProductAtta> selectAtta(int productNo);
	int updateCount(int productNo);

}
