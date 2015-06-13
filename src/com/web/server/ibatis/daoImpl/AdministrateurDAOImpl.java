package com.web.server.ibatis.daoImpl;

import javax.xml.ws.BindingType;

import com.web.server.ibatis.dao.AdministrateurDAO;
import com.web.server.ibatis.model.Administrateur;



import org.springframework.beans.factory.InitializingBean;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public class AdministrateurDAOImpl extends SqlMapClientDaoSupport implements AdministrateurDAO{

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table administrateur
     *
     * @ibatorgenerated Tue Jul 09 18:42:29 CEST 2013
     */
    public AdministrateurDAOImpl() {
        super();
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table administrateur
     *
     * @ibatorgenerated Tue Jul 09 18:42:29 CEST 2013
     */
    public int deleteByPrimaryKey(Integer id_admin) {
        Administrateur key = new Administrateur();
        key.setId_admin(id_admin);
        int rows = getSqlMapClientTemplate().delete("administrateur.ibatorgenerated_deleteByPrimaryKey", key);
        return rows;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table administrateur
     *
     * @ibatorgenerated Tue Jul 09 18:42:29 CEST 2013
     */
    public void insert(Administrateur record) {
        getSqlMapClientTemplate().insert("administrateur.ibatorgenerated_insert", record);
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table administrateur
     *
     * @ibatorgenerated Tue Jul 09 18:42:29 CEST 2013
     */
    public void insertSelective(Administrateur record) {
        getSqlMapClientTemplate().insert("administrateur.ibatorgenerated_insertSelective", record);
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table administrateur
     *
     * @ibatorgenerated Tue Jul 09 18:42:29 CEST 2013
     */
    public Administrateur selectByPrimaryKey(Integer id_admin) {
        Administrateur key = new Administrateur();
        key.setId_admin(id_admin);
        Administrateur record = (Administrateur) getSqlMapClientTemplate().queryForObject("administrateur.ibatorgenerated_selectByPrimaryKey", key);
        return record;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table administrateur
     *
     * @ibatorgenerated Tue Jul 09 18:42:29 CEST 2013
     */
    public int updateByPrimaryKeySelective(Administrateur record) {
        int rows = getSqlMapClientTemplate().update("administrateur.ibatorgenerated_updateByPrimaryKeySelective", record);
        return rows;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table administrateur
     *
     * @ibatorgenerated Tue Jul 09 18:42:29 CEST 2013
     */
    public int updateByPrimaryKey(Administrateur record) {
        int rows = getSqlMapClientTemplate().update("administrateur.ibatorgenerated_updateByPrimaryKey", record);
        return rows;
    }
    
    
    public Administrateur isExiste(String login,String pwd){
    	Administrateur rv =new Administrateur();
			rv.setLogin(login);
			rv.setPassword(pwd);
			
			return (Administrateur)getSqlMapClientTemplate().queryForObject("administrateur.isExiste",rv);
			
		}
}