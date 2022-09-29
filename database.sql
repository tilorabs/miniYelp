create table city (
    id serial primary key,
    name varchar(255)
);

create table restaurant (
    id serial primary key,
    name varchar(255),
    picture varchar(255),
    city_id int,
    FOREIGN KEY (city_id) REFERENCES city(id)
);

create table comment (
    id serial primary key,
    text text,
    date timestamp,
    restaurant_id int,
    FOREIGN KEY (restaurant_id) REFERENCES restaurant(id)
);

create table tag (
    id serial primary key,
    name varchar(255)
);

create table restaurant_has_tags (
    id_restaurant int,
    id_tag int,
    FOREIGN KEY (id_restaurant) REFERENCES restaurant(id),
    FOREIGN KEY (id_tag) REFERENCES tag(id)
);

drop table restaurant;
drop table comment;
drop table city;
drop table restaurant_has_tags;

insert into city (name) values ('Berlin');
insert into city (name) values ('Amsterdam');
insert into city (name) values ('Oslo');
insert into city (name) values ('Peking');

insert into restaurant (name, city_id) values ('', 1);
insert into restaurant (name, city_id) values ('', 2);
insert into restaurant (name, city_id) values ('', 3);
insert into restaurant (name, city_id) values ('', 4);
insert into restaurant (name, city_id) values ('', 1);
insert into restaurant (name, city_id) values ('', 2);

insert into comment (text, date, restaurant_id) values ('', '2022-03-12', 1);