package com.web.server.ibatis.daoImpl;

import com.web.server.ibatis.dao.ManifestationsientifiqueDAO;
import com.web.server.ibatis.model.Manifestationsientifique;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public class ManifestationsientifiqueDAOImpl extends SqlMapClientDaoSupport implements ManifestationsientifiqueDAO {

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table manifestationsientifique
     *
     * @ibatorgenerated Thu Jul 04 11:24:21 CEST 2013
     */
    public ManifestationsientifiqueDAOImpl() {
        super();
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table manifestationsientifique
     *
     * @ibatorgenerated Thu Jul 04 11:24:21 CEST 2013
     */
    public int deleteByPrimaryKey(Integer idmanifastationSientifique) {
        Manifestationsientifique key = new Manifestationsientifique();
        key.setIdmanifastationSientifique(idmanifastationSientifique);
        int rows = getSqlMapClientTemplate().delete("manifestationsientifique.ibatorgenerated_deleteByPrimaryKey", key);
        return rows;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table manifestationsientifique
     *
     * @ibatorgenerated Thu Jul 04 11:24:21 CEST 2013
     */
    public void insert(Manifestationsientifique record) {
        getSqlMapClientTemplate().insert("manifestationsientifique.ibatorgenerated_insert", record);
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table manifestationsientifique
     *
     * @ibatorgenerated Thu Jul 04 11:24:21 CEST 2013
     */
    public void insertSelective(Manifestationsientifique record) {
        getSqlMapClientTemplate().insert("manifestationsientifique.ibatorgenerated_insertSelective", record);
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table manifestationsientifique
     *
     * @ibatorgenerated Thu Jul 04 11:24:21 CEST 2013
     */
    public Manifestationsientifique selectByPrimaryKey(Integer idmanifastationSientifique) {
        Manifestationsientifique key = new Manifestationsientifique();
        key.setIdmanifastationSientifique(idmanifastationSientifique);
        Manifestationsientifique record = (Manifestationsientifique) getSqlMapClientTemplate().queryForObject("manifestationsientifique.ibatorgenerated_selectByPrimaryKey", key);
        return record;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table manifestationsientifique
     *
     * @ibatorgenerated Thu Jul 04 11:24:21 CEST 2013
     */
    public int updateByPrimaryKeySelective(Manifestationsientifique record) {
        int rows = getSqlMapClientTemplate().update("manifestationsientifique.ibatorgenerated_updateByPrimaryKeySelective", record);
        return rows;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table manifestationsientifique
     *
     * @ibatorgenerated Thu Jul 04 11:24:21 CEST 2013
     */
    public int updateByPrimaryKey(Manifestationsientifique record) {
        int rows = getSqlMapClientTemplate().update("manifestationsientifique.ibatorgenerated_updateByPrimaryKey", record);
        return rows;
    }
}