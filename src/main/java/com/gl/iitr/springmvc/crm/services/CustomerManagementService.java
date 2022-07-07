package com.gl.iitr.springmvc.crm.services;

import java.util.List;

import com.gl.iitr.springmvc.crm.entities.Customer;

public interface CustomerManagementService {

	public List<Customer> listCustomers();

	public Customer getCustomerById(long customerId);

	public void addCustomer(Customer theCustomer);

	public void updateCustomer(Customer theCustomer);

	public void removeCustomerById(long customerId);
}
