package com.gl.iitr.springmvc.crm.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gl.iitr.springmvc.crm.entities.Customer;
import com.gl.iitr.springmvc.crm.services.CustomerManagementService;

@Controller
@RequestMapping("/customer")
public class CustomerRelationMgmtController {

	@Autowired
	private CustomerManagementService crmService;

	public CustomerRelationMgmtController(CustomerManagementService crmService) {
		this.crmService = crmService;
	}

	@GetMapping("/list")
	public String showCustomerList(Model model) {

		List<Customer> customers = crmService.listCustomers();
		model.addAttribute("customerlist", customers);
		return "customerslist";
	}

	@GetMapping("/showAddFrom")
	public String showAddCustomerForm(Model model) {

		model.addAttribute("customer", new Customer());
		return "customer-form";
	}

	@GetMapping("/showUpdateFrom")
	public String showUpdateCustomerForm(@RequestParam("customerId") long customerId, Model model) {

		Customer customer = crmService.getCustomerById(customerId);
		model.addAttribute("customer", customer);
		return "customer-form";
	}

	@PostMapping("/saveCustomer")
	public String saveCustomer(@RequestParam("customerId") long custoemrId, @RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName, @RequestParam("email") String email, Model model) {

		Customer customer;

		if (custoemrId != 0) {

			customer = crmService.getCustomerById(custoemrId);
			if (customer != null) {

				customer.setEmail(email);
				customer.setFirstName(firstName);
				customer.setLastName(lastName);

				crmService.updateCustomer(customer);
			}
		} else {
			customer = new Customer(0, firstName, lastName, email);
			crmService.addCustomer(customer);
		}

		model.addAttribute("customer", customer);
		return "customer-form";
	}

	@GetMapping("/deleteCustomer")
	public String deleteCustomer(@RequestParam("customerId") long custoemrId, Model model) {

		Customer customer = crmService.getCustomerById(custoemrId);
		if (customer != null) {
			crmService.removeCustomerById(custoemrId);
			model.addAttribute("customerlist", crmService.listCustomers());
			return "customerslist";
		}
		return null;
	}

}
