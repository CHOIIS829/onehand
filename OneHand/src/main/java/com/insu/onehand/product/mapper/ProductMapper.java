package com.insu.onehand.product.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.insu.onehand.product.vo.Product;
import com.insu.onehand.product.vo.ProductAtta;

@Mapper
public interface ProductMapper {
	
	int insertProduct(Product p);
	int insertProductAtta(ProductAtta at);

}
