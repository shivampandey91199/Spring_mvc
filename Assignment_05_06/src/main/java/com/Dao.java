package com;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;

public class Dao {

	 private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	 @Transactional
	public void insertData(data d) {
		this.hibernateTemplate.saveOrUpdate(d);
	}
	 
	 public data getDataById(int id) {
		 data d=this.hibernateTemplate.get(data.class,id);
	     return d;
	 }
	
	 public List<data> getAllData(){
     		return this.hibernateTemplate.loadAll(data.class);
	 }
	 @Transactional
	 public void updateData(data d) {
		 this.hibernateTemplate.update(d);
	 }
	 
	 @Transactional
	 public void deleteData(int id) {
		data d= this.hibernateTemplate.get(data.class,id);
	      this.hibernateTemplate.delete(d);
	 
	 }
	
}
