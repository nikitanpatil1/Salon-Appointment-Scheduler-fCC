# Salon Appointment Scheduler

*This project consists of creating an interactive Bash program that uses PostgreSQL to track the customers and appointments for the salon.*

## Problem Statement

Create a bash script which will take appointment information from user as a input and save that information in the database according to the conditions below:

### Part 1: Create the database 

  Create your database structure according to the user stories below. 
  - Create a database named **salon** and then create tables named **customers**, **appointments**, and **services**.
  - Each table should have a primary key column that automatically increments. Each primary key column should follow the naming convention, **table_name_id**. For example, the customers table should have a **customer_id** key.
  - The *appointments* table should have a **customer_id** foreign key that references the **customer_id** column from the *customers* table. The *appointments* table should have a **service_id** foreign key that references the **service_id** column from the *services* table .
  - The *customers* table should have **phone** column that is a *VARCHAR* and must be *unique*. The *customers* and *services* tables should have a **name** column.
  - The *appointments* table should have a **time** column that is a **VARCHAR**.
  - There should be at least three rows in The *services* table for the different services offered, one with a **service_id** of **1**.
  

### Part 2: Create bash script

  Complete the script file to interact with user.
  -  Create a script file named **salon.sh** in the project folder. File should have a "shebang" that uses bash when the file is executed.
  - Display a numbered list of the services salon offers before the first prompt for input, each with the format **#) ‹service>**. For example, **1) cut** , where 1 is the *service_id*.
  -  If user pick a service that doesn't exist, then they should be shown the same list of services again.
  - The script should prompt users to enter a *service_id*, *phone number*, a *name* if they aren't already a customer, and a *time*. Use **read** to read these inputs into variables named *SERVICE_TO_SELECTED*, *CUSTOMER_PHONE*, *CUSTOMER_NAME*, and *SERVICE_TIME*.
  -  If a **phone number** entered doesn't exist, Then get the *customers* **name** and phone number and enter it into the *customers table*.
  - A row should get created in the appointents table by running the script and entering the respective inputs at each request for input if that phone number isn't in the customers table. The row should have the *customer_id* for that customer, and the *service_id* for the service entered .
  - The another row should get added in the appointments table by running your script and entering the respective inputs at each request for input if that phone number is already in the customers table. The row should have the customer_id for that customer, and the service_id for the service entered .
  -  After an appointment is successfully added, There should be an output message "*I have put you down for a ‹service› at ‹time>, ‹name›."* For example, if the user chooses cut as the service, 10:30 is entered for the time, and their name is Fabio in the database the output would be "I have put you down for a cut at 10:38, Fabio."
  -  Make sure the script finishes running after completing any of the tasks above.


## Solution

### Part 1: Create the database 

  The database and tables were created according to the above conditions, the queries are present in  [*salon.sql*](https://github.com/nikitanpatil1/Salon-Appointment-Scheduler-fCC/blob/main/salon.sql) file.
  
  #### Create the database output:
  
  ![Image](https://github.com/user-attachments/assets/1369e4a9-6aeb-473e-a196-ac6833fb419e)

![Image](https://github.com/user-attachments/assets/5da6e54b-69b2-41fb-a3f4-44b5e1aa8940)

  ![Image](https://github.com/user-attachments/assets/7d24eded-bedb-43ac-85fa-616301637f4d)

  ![Image](https://github.com/user-attachments/assets/d2735918-fb3f-443d-97d8-0bb0c1cf7f0c)

  ![Image](https://github.com/user-attachments/assets/b8c42db7-e948-489e-8b82-4af24c5a9d11)

  ![Image](https://github.com/user-attachments/assets/f5203242-a5a7-41ba-a997-9fc399446d50)
  
  
### Part 2: Create bash script 
  
   According to the above conditions a *bash script* was created which is in the file named  [*salon.sh*](https://github.com/nikitanpatil1/Salon-Appointment-Scheduler-fCC/blob/main/salon.sh)  which when executed gets the required information from the users and inserts it in the database into the respective tables.
  
  #### Output of how the script works:
  
  - **Output when there is new user**:
  
     Whenever there is new user the script asks user for it's "name" and updates the **users** table by adding that respective user in database and updates appointment details.

     ![Image](https://github.com/user-attachments/assets/2793e11e-0034-4d98-ae96-5650bd7d7a99)
    
     ![Image](https://github.com/user-attachments/assets/3cb6c596-7e3d-4f89-b752-caea27125305)
  
  - **Output when user already exists**:
  
     When the user already exists then the script just updates the appointment table by inserting the appointment details.
    
    ![Image](https://github.com/user-attachments/assets/4fc33069-57e9-4cc4-92e7-7beb1324e4df)

    ![Image](https://github.com/user-attachments/assets/02d93349-5d46-4e7a-916e-6a09924596f4)
  
  
  - **Output when user enter wrong service number**:
     
	  Whenever user enters the wrong service number the script keeps on asking the user to enter the right service number from the above service list present.
  
    ![Image](https://github.com/user-attachments/assets/36165d4d-74d0-4a89-a38e-4b84fd294dba)

  
  - **Output of database after updating information in its respective tables**:
  
    ![Image](https://github.com/user-attachments/assets/9250c3e4-f3ca-4a86-a76e-8fe2efc19d09)

