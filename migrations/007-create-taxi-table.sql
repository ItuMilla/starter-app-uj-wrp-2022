insert into taxi_driver (drives_name, Contact_no)
    values ("Driver 1", "067 212 5000"),
           ("Driver 2", "072 832 5000"),
           ("Driver 3", "076 629 0000"),
           ("Driver 4", "083 512 3000");

insert into taxi (taxi_name)
    values ("Siyaya"),
        ("Inyathi"),
        ("Quantum"),
        ("Sprinter");


insert into route (route_name)
    values ("JHB"),
        ("PTA"),
        ("Soweto"),
        ("Midrand");

insert into  trips ("route_id", "taxi_id", "driver_id")
    values ("23","1", "16"),
        ("22", "2", "13"),
        ("22", "2", "12"),
        ("24", "3", "11");
