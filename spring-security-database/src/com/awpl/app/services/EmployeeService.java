package com.awpl.app.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.awpl.app.dao.EmployeeDAO;
import com.awpl.app.dto.EmployeeDTO;
@Service
public class EmployeeService {
	@Autowired
	EmployeeDAO  employeeDAO;
	
	public List<EmployeeDTO > viewRecords(EmployeeDTO dto ){
		
		return	employeeDAO.viewRecords(dto);
		
		 
		
	}

}
