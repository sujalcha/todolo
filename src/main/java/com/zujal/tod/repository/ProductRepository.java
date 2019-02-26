package com.zujal.tod.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.zujal.tod.model.user;

@Repository("productRepository")
public interface ProductRepository extends CrudRepository<user, Integer> {

	@Query(value="SELECT firstname FROM mytable where firstname like %:keyword%",nativeQuery = true)
	public List<String> nameautocomplete(@Param("keyword") String keyword);
}