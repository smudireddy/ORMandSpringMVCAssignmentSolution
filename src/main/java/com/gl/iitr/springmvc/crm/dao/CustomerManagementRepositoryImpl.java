package com.gl.iitr.springmvc.crm.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.gl.iitr.springmvc.crm.entities.Customer;

@Component
@Repository
public class CustomerManagementRepositoryImpl implements CustomerManagementRepository {

	@PersistenceContext
	private EntityManager entityManager;

	public CustomerManagementRepositoryImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public List<Customer> listCustomers() {

		Query query = entityManager.createQuery("from Customer");
		List<Customer> resultList = (List<Customer>) query.getResultList();
		return resultList;
	}

	@Override
	public Customer getCustomerById(long customerId) {
		Customer customer = entityManager.find(Customer.class, customerId);
		return customer;
	}

	@Override
	public void addCustomer(Customer theCustomer) {
		entityManager.persist(theCustomer);
		entityManager.flush();
	}

	@Override
	public void updateCustomer(Customer theCustomer) {
		entityManager.merge(theCustomer);
		entityManager.flush();
	}

	@Override
	public void removeCustomerById(long customerId) {
		
		Customer customer = entityManager.find(Customer.class, customerId);
		if(customer != null) {
			entityManager.remove(customer);
		}
	}
}
