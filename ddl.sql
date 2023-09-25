CREATE TABLE invoice (
    invoice_id SERIAL PRIMARY KEY, 
    date NUMERIC (5,2), 
    salesman_id INTEGER , 
    customer_id INTEGER NOT NULL, 
    serv_mech_id INTEGER , 
    car_total NUMERIC(10,2), 
    part_total NUMERIC (10,2),
    quote BOOLEAN,
    car_id INTEGER, 
    FOREIGN KEY (salesman_id) REFERENCES salesman(salesman_id) ON DELETE CASCADE, 
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE, 
    FOREIGN KEY (serv_mech_id) REFERENCES service_mechanic(serv_mech_id) ON DELETE CASCADE, 
    FOREIGN KEY (car_id) REFERENCES car(car_id) ON DELETE CASCADE
);

CREATE TABLE salesman( 
    salesman_id SERIAL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL , 
    last_name VARCHAR(30) NOT NULL
); 

CREATE TABLE car ( 
    car_id SERIAL PRIMARY KEY, 
    car_model VARCHAR (50), 
    car_make VARCHAR (50), 
    car_year INTEGER, 
    car_color VARCHAR (50)
); 

CREATE TABLE customer ( 
    customer_id SERIAL PRIMARY KEY, 
    first_name VARCHAR (30) NOT NULL, 
    last_name VARCHAR (30) NOT NULL, 
    phone_number VARCHAR(15) NOT NULL UNIQUE, 
    address VARCHAR (50) NOT NULL
); 

CREATE TABLE parts( 
    part_id SERIAL PRIMARY KEY,
    part_name VARCHAR (50) NOT NULL, 
    price  NUMERIC(8,2) NOT NULL,
    comment VARCHAR (50) 
); 

CREATE TABLE service_mechanic (
    serv_mech_id SERIAL PRIMARY KEY, 
    hours NUMERIC(5,2),
    rate NUMERIC (7,2),
    comment VARCHAR(50), 
    first_name VARCHAR (50), 
    last_name VARCHAR (50), 
    part_id INTEGER, 
    FOREIGN KEY (part_id) REFERENCES parts(part_id) 
); 

