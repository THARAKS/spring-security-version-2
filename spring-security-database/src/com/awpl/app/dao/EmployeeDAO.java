package com.awpl.app.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;

import com.awpl.app.dto.EmployeeDTO;
@Repository
public class EmployeeDAO {
	LocalSessionFactoryBean bean;
	@Autowired
SessionFactory sessionFactory;

@SuppressWarnings("unchecked")
public List<EmployeeDTO > viewRecords(EmployeeDTO dto ){
	String hql="from EmployeeDTO";
	Session session=sessionFactory.openSession();
	Query  query2=session.createQuery(hql);
	return query2.list();
	
	
	
	
	
}


}
