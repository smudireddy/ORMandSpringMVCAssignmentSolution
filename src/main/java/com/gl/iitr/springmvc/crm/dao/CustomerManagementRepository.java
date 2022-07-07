package com.gl.iitr.springmvc.crm.dao;

import java.util.List;

import com.gl.iitr.springmvc.crm.entities.Customer;

public interface CustomerManagementRepository {

	public List<Customer> listCustomers();

	public Customer getCustomerById(long customerId);

	public void addCustomer(Customer theCustomer);

	public void updateCustomer(Customer theCustomer);

	public void removeCustomerById(long customerId);
}
