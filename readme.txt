ENSF 480 Final Project - Property Rental Application

Group 18
* @author         Chace Nielson - 30045674
* @author         Hao Nguyen - 30088094
* @author         John Francis Nacu - 30073869
* @author         Mohamed Numan - 30086940
* @version        9.2

Purpose of the program is to create a property rental site with access to a databse 
containing information about users, Lanlords, managers, and the properties.
The Application stores user information adn gives multiple rights of access depending
on which type of account is loged into


To Run the File:
First the application uses a mySQL database 

the sql source file is attached and names 
480_database.sql

This file can be used to create a database in mySQL by importing it.


Second navigate to the file in your terminal
The file requires 3 command line arguments:
	-The path to your database ex. jdbc:mysql://localhost/480_database
	-your Usernamefor mySQL
	

java -jar 480_Final.jar databasePath Username Password

the system will allow you to login to an account
for testing here is a list of account you could sign into
registered renters are abreviated with rrenter

1	Chace	c@shaw.ca	c_c	1	rrenter
2	Francis	f@gmail.com	f_f	12	manager
3	Lucas	l@Hotmail.com	l_l	123	landlord
4	Numan	n@yahoo.ca	n_n	1234	rrenter
5	Dave	d@mail.com	d_d	12345	rrenter
6	Jane	j@something.com	j_j	123456	landlord
7	Karl	k@mail.com	k_k	2	landlord
8	Adam	a@shaw.ca	a_a	23	landlord
9	Barry	b@yahoo.com	b_b	234	landlord
10	Erik	e@gmail.com	e_e	2345	manager
11	Liam	l@gmail.ca	l_l	23456	rrenter
