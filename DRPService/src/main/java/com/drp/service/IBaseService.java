package com.drp.service;

import java.io.Serializable;
import java.util.List;


/**
 * @author 王春
 * @ClassName: IBaseService
 * @Description: 业务逻辑层：基类
 * @date 2017年11月1日 上午10:43:58
 */
public interface IBaseService<T extends Serializable> {
    /**
     * 添加
     *
     * @param t 对象
     * @return
     */
    Object add(T t);

    /**
     * 删除
     *
     * @param ids id集合
     */
    void delete(List<Integer> ids);

    /**
     * 修改
     *
     * @param t 对象
     * @return
     */
    Object update(T t);

    /**
     * 通过id查询
     *
     * @param id id
     * @return
     */
    T findById(Integer id);

    /**
     * 通过条件查找
     *
     * @param pageNo   当前的页码数
     * @param pageSize 每页显示的数据条数
     * @param objects  查询条件
     * @return
     */
    List<T> findByConditions(Integer pageNo, Integer pageSize, final Object... objects);

    /**
     * 查找所有
     *
     * @return
     */
    List<T> findAll();
}
