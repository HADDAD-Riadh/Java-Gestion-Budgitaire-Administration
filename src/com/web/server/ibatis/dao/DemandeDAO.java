package com.web.server.ibatis.dao;

import com.web.server.ibatis.model.Demande;

public interface DemandeDAO {

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table demande
	 * @ibatorgenerated  Tue Jul 09 23:48:58 CEST 2013
	 */
	int deleteByPrimaryKey(Integer iddemande);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table demande
	 * @ibatorgenerated  Tue Jul 09 23:48:58 CEST 2013
	 */
	void insert(Demande record);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table demande
	 * @ibatorgenerated  Tue Jul 09 23:48:58 CEST 2013
	 */
	void insertSelective(Demande record);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table demande
	 * @ibatorgenerated  Tue Jul 09 23:48:58 CEST 2013
	 */
	Demande selectByPrimaryKey(Integer iddemande);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table demande
	 * @ibatorgenerated  Tue Jul 09 23:48:58 CEST 2013
	 */
	int updateByPrimaryKeySelective(Demande record);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table demande
	 * @ibatorgenerated  Tue Jul 09 23:48:58 CEST 2013
	 */
	int updateByPrimaryKey(Demande record);
}