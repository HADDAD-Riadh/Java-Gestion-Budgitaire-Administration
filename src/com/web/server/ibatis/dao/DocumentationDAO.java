package com.web.server.ibatis.dao;

import com.web.server.ibatis.model.Documentation;

public interface DocumentationDAO {
    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table documentation
     *
     * @ibatorgenerated Thu Jul 04 11:24:21 CEST 2013
     */
    int deleteByPrimaryKey(Integer iddocumentation);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table documentation
     *
     * @ibatorgenerated Thu Jul 04 11:24:21 CEST 2013
     */
    void insert(Documentation record);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table documentation
     *
     * @ibatorgenerated Thu Jul 04 11:24:21 CEST 2013
     */
    void insertSelective(Documentation record);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table documentation
     *
     * @ibatorgenerated Thu Jul 04 11:24:21 CEST 2013
     */
    Documentation selectByPrimaryKey(Integer iddocumentation);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table documentation
     *
     * @ibatorgenerated Thu Jul 04 11:24:21 CEST 2013
     */
    int updateByPrimaryKeySelective(Documentation record);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table documentation
     *
     * @ibatorgenerated Thu Jul 04 11:24:21 CEST 2013
     */
    int updateByPrimaryKey(Documentation record);
}