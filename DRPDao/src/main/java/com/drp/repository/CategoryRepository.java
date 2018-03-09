/**   
 * @Title: TypeRepository.java
 * @Package com.drp.repository 
 * @author 小灰灰	日期：2017年11月1日 
 * @version V1.0   
 */
package com.drp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.drp.pojo.Category;

/**
 * @ClassName: CategoryRepository
 * @Description: 类型（静态字典）持久层
 * @author 小灰灰
 * @date 2017年11月1日 下午3:57:42
 * 
 */

@Repository
public interface CategoryRepository extends BaseRepository<Category,Integer> {

	@Query("select c from Category c where c.category = ?1")
	List<Category> queryByCategory(Integer category);
	
	@Query("select c from Category c where c.category = ?1")
	List<Category> findCategoryByCategory(Integer category);
}
