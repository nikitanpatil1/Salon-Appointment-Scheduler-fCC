# Salon Appointment Scheduler

*This project consists of creating an interactive Bash program that uses PostgreSQL to track the customers and appointments for the salon.*

## Problem Statement

Create a bash script which will take appointment information from user as a input and save that information in the database according to the conditions below:

- Part 1: Create the database 

  Create your database structure according to the user stories below. 
  - Create a database named ** salon** and then create tables named **customers**, **appointments**, and **services**.
  - Each table should have a primary key column that automatically increments. Each primary key column should follow the naming convention, **table_name_id**. For example, the customers table should have a **customer_id** key.
  - The *appointments* table should have a **customer_id** foreign key that references the **customer_id** column from the *customers* table. The *appointments* table should have a **service_id** foreign key that references the **service_id** column from the *services* table .
  - The *customers* table should have **phone** column that is a *VARCHAR* and must be *unique*. The *customers* and *services* tables should have a **name** column.
  - The *appointments* table should have a **time** column that is a **VARCHAR**.
  - There should be at least three rows in The *services* table for the different services offered, one with a **service_id** of **1**.
  

- Part 2: Create bash script

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



[*salon.sql*](https://github.com/nikitanpatil1/Salon-Appointment-Scheduler-fCC/blob/main/salon.sql)
[*salon.sh*](https://github.com/nikitanpatil1/Salon-Appointment-Scheduler-fCC/blob/main/salon.sh)

![Image](https://github.com/user-attachments/assets/c907d3e5-90a5-4e85-a338-f693c32042de)

![Image](https://github.com/user-attachments/assets/22d824e9-681e-494d-aef1-6246b76140ea)

![Image](https://github.com/user-attachments/assets/805fddbc-b9cc-48f1-b6d5-d2a6d20bde0a)

![Image](https://github.com/user-attachments/assets/3cb6c596-7e3d-4f89-b752-caea27125305)

![Image](https://github.com/user-attachments/assets/2793e11e-0034-4d98-ae96-5650bd7d7a99)

![Image](https://github.com/user-attachments/assets/4fc33069-57e9-4cc4-92e7-7beb1324e4df)

![Image](https://github.com/user-attachments/assets/02d93349-5d46-4e7a-916e-6a09924596f4)

![Image](https://github.com/user-attachments/assets/1c4ce74e-f361-4169-8a10-a38066d13b36)

![Image](https://github.com/user-attachments/assets/4b20ca60-c5db-4e3c-a402-b14c0c3e70aa)

![Image](https://github.com/user-attachments/assets/36165d4d-74d0-4a89-a38e-4b84fd294dba)

![Image](https://github.com/user-attachments/assets/9250c3e4-f3ca-4a86-a76e-8fe2efc19d09)

![Image](https://github.com/user-attachments/assets/6d07786d-2547-476f-94ab-75e94581a2d5)

![Image](https://github.com/user-attachments/assets/b0cc4bb3-29c1-4579-af47-249e1fb05df6)

![Image](https://github.com/user-attachments/assets/e70327d2-7ac9-4c9c-a6b1-1b1f14215568)

![Image](https://github.com/user-attachments/assets/f9f04f8b-4f0d-46f3-b679-0c1bc69cac21)

![Image](https://github.com/user-attachments/assets/6b3e8a0e-f75a-498e-9b7d-fd04ebfd030f)

![Image](https://github.com/user-attachments/assets/b206ea2c-5189-4faf-b586-455adcbf242e)
