package com.web.server.ibatis.dao;

import com.web.server.ibatis.model.Consommablemateriel;

public interface ConsommablematerielDAO {
    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table consommablemateriel
     *
     * @ibatorgenerated Thu Jul 04 11:24:21 CEST 2013
     */
    int deleteByPrimaryKey(Integer idConsommable);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table consommablemateriel
     *
     * @ibatorgenerated Thu Jul 04 11:24:21 CEST 2013
     */
    void insert(Consommablemateriel record);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table consommablemateriel
     *
     * @ibatorgenerated Thu Jul 04 11:24:21 CEST 2013
     */
    void insertSelective(Consommablemateriel record);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table consommablemateriel
     *
     * @ibatorgenerated Thu Jul 04 11:24:21 CEST 2013
     */
    Consommablemateriel selectByPrimaryKey(Integer idConsommable);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table consommablemateriel
     *
     * @ibatorgenerated Thu Jul 04 11:24:21 CEST 2013
     */
    int updateByPrimaryKeySelective(Consommablemateriel record);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table consommablemateriel
     *
     * @ibatorgenerated Thu Jul 04 11:24:21 CEST 2013
     */
    int updateByPrimaryKey(Consommablemateriel record);
}