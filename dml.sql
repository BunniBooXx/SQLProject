INSERT INTO customer ( 
    first_name, 
    last_name, 
    phone_number, 
    address
) VALUES (
    'Jaqueline', 
    'Smith', 
    (123)-456-7899,
    '123 court square street'
), ( 
    'Dan', 
    'Lee', 
    (124)-457-7829,
    '124 main street'
);
SELECT * FROM customer;

INSERT INTO salesman( 
    first_name, 
    last_name
) VALUES (
    'John', 
    'Smith'
), (
    'Kyle', 
    'Kittleson'
), (
    'Megan', 
    'Fox'
), (
    'Bugs', 
    'Bunny'
);
SELECT * FROM salesman;
INSERT INTO car (
    car_model, 
    car_make,
    car_year, 
    car_color
) VALUES (
    'A-Class',
    'Mercedes-Benz', 
    2022, 
    'Lavender'
), (
    'A3', 
    'Audi',
    2024,
    'Baby blue'
), (
    'Accord Hybrid', 
    'Honda', 
    2024, 
    'Charcoal black'
);
SELECT * FROM car;

INSERT INTO parts(
    part_name, 
    price,
    comment
) VALUES (
    'Hammer', 
    19.99,
    'wow wow wow'
), (
    'Nails', 
    20.00,
    'Looking nice or looking for a hammer?'
), (
    'Tire Iron',
    50.00,
    'For the zombies'
);
SELECT * FROM parts;


INSERT INTO service_mechanic(
    hours, 
    rate, 
    comment, 
    first_name,
    last_name,
    part_id
) VALUES (
    01.30, 
    100.00,
    'nice job!',
    'James', 
    'Smith', 
    2
), (
    2.00,
    100.00,
    'great job!', 
    'Stacy',
    'Jones',
    3
),(
    3.00, 
    300.00, 
    'spectaculur!', 
    'Adams', 
    'Macintire',
    1
);
SELECT * FROM service_mechanic;


INSERT INTO invoice (
    date,
    salesman_id, --fk
    customer_id,  --fk
    serv_mech_id, --fk
    car_total, 
    part_total, 
    qoute,
    car_id --fk
) VALUES (
    3.12,
    2,
    1,
    1, 
    20,500,
    20, 
    TRUE,
    3
);


