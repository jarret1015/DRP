/**
 * 
 */
package com.drp.repository;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.drp.pojo.FlowCardMain;
import java.lang.String;

/** 
 * @ClassName: FlowCardMainRepository 
 * @Description: 流向单主信息持久层
 * @author 小灰灰
 * @date 2017年11月1日 下午3:25:55 
 *  
 */
public interface FlowCardMainRepository extends org.springframework.data.jpa.repository.JpaSpecificationExecutor<FlowCardMain>, org.springframework.data.jpa.repository.JpaRepository<FlowCardMain, Integer> {

	/**
	 * 保存分销商的id
	 * @param client_id
	 */
	@Query(value = "insert into t_flowcardmain (client_id) values(?)",nativeQuery=true)
	void saveClientId(Integer client_id);

	/**
	 * 更新主菜单信息
	 * 供方分销商id, 主键
	 * @param client_id
	 * @param id
	 */
	@Modifying
	@Query(value="update t_flowcardmain set client_id = ?1 where id = ?2", nativeQuery = true)
	void update(Integer client_id, Integer id);
	
	/**
	 * 通过流向单单号进项查询
	 * @param flowcardnum
	 * @return
	 */
	@Query("select fm from FlowCardMain fm where fm.flowCardNum = ?1")
	FlowCardMain findByFlowCardNum(String flowcardnum);
	
	
}
