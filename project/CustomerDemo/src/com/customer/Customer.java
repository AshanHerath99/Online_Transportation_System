package com.customer;

public class Customer {
    private int id;
    private String name;
    private String email;
    private String Phone;
    private String userName;
    private String password;
    
    public Customer(int id, String name, String email, String phone, 
    		String userName, String password) {
	this.id = id;
	this.name = name;
	this.email = email;
	this.Phone = phone;
	this.userName = userName;
	this.password = password;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPhone() {
        return Phone;
    }

    public String getUserName() {
        return userName;
    }

    public String getPassword() {
        return password;
    }    
}

