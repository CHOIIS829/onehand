package com.insu.onehand.product.service;

import java.util.ArrayList;

import com.insu.onehand.product.vo.Product;
import com.insu.onehand.product.vo.ProductAtta;

public interface ProductService {
	
	int inserProduct(Product p, ArrayList<ProductAtta> list);

}
