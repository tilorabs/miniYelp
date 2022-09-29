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


insert into city (name) values ('Berlin');
insert into city (name) values ('Amsterdam');
insert into city (name) values ('Oslo');
insert into city (name) values ('Peking');



insert into restaurant (name, picture, city_id) values (
    'Sboccondivino',
    'https://s3-media0.fl.yelpcdn.com/bphoto/914Shzdhxn3w_8bbmHiBsw/o.jpg',
    1
    );
insert into restaurant (name, picture, city_id) values (
    'Steel Vintage Bikes Café',
    'https://s3-media0.fl.yelpcdn.com/bphoto/RL1b6QScsLQKXbYSfSGZKw/o.jpg', 
    1
    );
insert into restaurant (name, picture, city_id) values (
    'Zollpackhof',
    'https://s3-media0.fl.yelpcdn.com/bphoto/o3EWtmAt-UFBTxSi2hj_ig/o.jpg', 
    1);
insert into restaurant (name, picture, city_id) values (
    'Nguyen Kitchen Sushi & More',
    'https://s3-media0.fl.yelpcdn.com/bphoto/VPGXAwzkvAmxFa8DHiQl8Q/o.jpg',
    2
    );
insert into restaurant (name, picture, city_id) values ('Sampurna','https://s3-media0.fl.yelpcdn.com/bphoto/i6mPn3NRB8rYKXsuFsmoyw/o.jpg', 2);
insert into restaurant (name, picture, city_id) values ('Café De Klos','https://s3-media0.fl.yelpcdn.com/bphoto/y5dzj3AbNoSHvrQfg4dTdw/o.jpg', 2);
insert into restaurant (name, picture, city_id) values ('RED','https://s3-media0.fl.yelpcdn.com/bphoto/5pvjDGML_Zp8IaXRSFmxtg/o.jpg', 3);
insert into restaurant (name, picture, city_id) values ('Wurst & Schnitzelhaus - WuSH','https://s3-media0.fl.yelpcdn.com/bphoto/34Yj3Gs06LgmtBBnQUZbrg/o.jpg', 3);
insert into restaurant (name, picture, city_id) values ('King/s Joy', 'https://youimg1.tripcdn.com/target/01067120008rrnyk81A4A.jpg',4);
insert into restaurant (name, picture, city_id) values ('Pantry', 'https://s3-media0.fl.yelpcdn.com/bphoto/kAI1aJQg_BwCCYdQPkKs6g/o.jpg',4);


insert into comment (text, date, restaurant_id) values ('', '2022-03-12', 1);