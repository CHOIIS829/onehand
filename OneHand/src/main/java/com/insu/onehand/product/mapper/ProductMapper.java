package com.insu.onehand.product.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.insu.onehand.common.vo.PageInfo;
import com.insu.onehand.product.vo.Product;
import com.insu.onehand.product.vo.ProductAtta;

@Mapper
public interface ProductMapper {
	
	int insertProduct(Product p);
	int insertProductAtta(ProductAtta at);
	int selectListCount();
	ArrayList<Product> selectList(@Param("areaId") int areaId,
								  @Param("categoryNo") int categoryNo, 
								  @Param("sortOption") String sortOption, 
								  @Param("pi") PageInfo pi);
	Product selectProduct(int productNo);
	ArrayList<ProductAtta> selectAtta(int productNo);
	int updateCount(int productNo);

}
