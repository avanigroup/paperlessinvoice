package org.main;

import org.customer.details.CustomerDetails;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.products.details.ProductDetails;
import org.retailer.details.RetailerDetails;

public class Registration {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try{
		CustomerDetails customer = new CustomerDetails();
		customer.setCustomerId(1);
		boolean cusRegStatus = CustomerRegistration(customer);
		RetailerDetails retailer = new RetailerDetails();
		retailer.setRetailerId(1);
		boolean retRegStatus = RetailerRegistration(retailer);
		ProductDetails products = new ProductDetails();
		products.setProductId(1);
		boolean prodRegStatus = ProductRegistration(products);
			if (cusRegStatus == true)
				System.out.println("----Customer Registration successful");
				else
				System.out.println("----Customer Registration NOT successful");
			if (retRegStatus == true)
				System.out.println("----Retailer Registration successful");
				else
				System.out.println("----Retailer Registration NOT successful");
			if (prodRegStatus == true)
				System.out.println("----Product Registration successful");
				else
				System.out.println("----Product Registration NOT successful");
		}catch(Exception e)
				{
					throw e;
				}
	}
	
	public static boolean CustomerRegistration(CustomerDetails customer) {
		try{
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(customer);
        session.getTransaction().commit();
		return true;
		}
		catch (Exception e)
		{
			return false;
		}
		
	}
	
	public static boolean RetailerRegistration(RetailerDetails retailer) {
		try{
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(retailer);
        session.getTransaction().commit();
		return true;
		}
		catch (Exception e)
		{
			return false;
		}
		
	}

	public static boolean ProductRegistration(ProductDetails products)
	{
		try{
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(products);
        session.getTransaction().commit();
		return true;
		}
		catch(Exception e)
		{
			return false;
		}
		
	}
}
