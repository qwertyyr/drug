package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.bean.Store;


@Repository
public interface StoreMapper {
	List<Store> QueryByNCP(@Param("drugname")String drugname,@Param("changshang")String changshang,@Param("pihao")String pihao);//����name,changshang,pihao��ѯ
	void AddStore(Store store);
	void UpdateStoreCount(@Param("count")String count,@Param("drugname")String drugname,@Param("changshang")String changshang,@Param("pihao")String pihao);
	void DeleteStore(@Param("drugname")String drugname,@Param("changshang")String changshang,@Param("pihao")String pihao);
	List<Store> GetAllStore();
	List<Store> QueryBySTiao(String tiao);
	List<Store> QueryBySName(String name);  //����drugnameģ����ѯ
	/**
	 * ����ȱ����Ϣ�Ǳ�
	 */
	void DeleteCountZero();
	/**
	 * ʹ��ʱ�������ʱע��,��ԭ����pihao�͸�ֵ��Store.guige,
	 * Ȼ���Ҫ�ĵ�����pihao��ֵ��Store.pihao
	 */
	void UpdateStoreSomeInfo(Store store);
}