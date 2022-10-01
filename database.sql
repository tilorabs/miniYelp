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

insert into comment (text, date, restaurant_id)
values ('The food is alright.  Wait staff is so rude. There are better Indian restaurants out there.',
        '2022-05-01',
        2);


insert into comment (text, date, restaurant_id)
values ('I came with great anticipation with friends who always rave about this restaurant.  It did not deliver. 
The food was good, but I expected awesome.  The service was terrible.  Our drinks came well after our food arrived.  We ordered rice which came after the meal 
was almost completed.  Our second orders of food never came and our server disappeared for 30 minutes.  While I suspect staffing shortages were apart of the 
challenges, for the price and expectation, I would not recommend this restaurant..',
        '2022-07-05',
        3);


insert into comment (text, date, restaurant_id)
values ('While the presentation and ambience were really nice and the chai during the wait was a nice touch 
the food was mediocre. The special pav Bhaji was volcanic with no flavor. The chefs special black dal was red, with an overpowering tomato base. Big let down 
considering the build up and the hour long wait...',
        '2022-08-12',
        4);


insert into comment (text, date, restaurant_id)
values ('I went here its amazing. Food was delicious, whatever we ordered there just arrived on time and it was 
all pleasantly decorated. Ambience was perfect and the customer support staff were highly accommodating too.',
        '2021-01-01',
        5);


insert into comment (text, date, restaurant_id)
values ('Wonderful dining experience when in London.  We went to the Covent Garden location.  It was fabulous! 
My husband likes Indian food but after Dishoom, he has changed his tune!  Our adult boys were with us, youngest was studying abroad in London & they love it too. 
Our son wished he would have discovered it while he was there, rather than on the last day of our visit to pick him up & bring him home!  Great food,
lots of variety for all tastes.  Definitely a crowd pleaser!', '2022-04-05', 6);
insert into comment (text, date, restaurant_id) values ('The food is alright.  Wait staff is not rude. There are better Chinese restaurants out there.', '2022-05-01', 2);

insert into tag (name) values ('Italian cuisine');
insert into tag (name) values ('German cuisine');
insert into tag (name) values ('Asian Cuisine');
insert into tag (name) values ('coffee light meal');
lots of variety for all tastes.  Definitely a crowd pleaser!',
        '2022-04-05',
        6);


insert into comment (text, date, restaurant_id)
values ('My partner and I were seated quickly on a Saturday evening and the service was quick.

The food was so delicious! My favorite was the tiki masala chicken and chili nann.',
        '2022-12-05',
        7);


insert into comment (text, date, restaurant_id)
values ('Cozy and pleasant atmosphere with attentive and helpful service. A group of 3 of us came here on a Friday evening around 7pm for dinner. We ordered samosas for appetizers, sag paneer, chicken tika masala, butter chicken, and acharri murgha. The food itself was bland and underwhelming. Not seasoned enough, sauce and meat included. If you are looking for a lot of flavor and authenticity, this aint it.

',
        '2022-1-09',
        8);


insert into comment (text, date, restaurant_id)
values ('Overpriced. Below average food. The taste is blended.
Not very attentive service, server seemed annoyed after couple questions about the menu from us.
Seems a lot of people come here for pre show dinner only, most of them finished meal really fast.
One positive star is their interior design is quite nice.',
        '2022-8-12',
        9);


insert into comment (text, date, restaurant_id)
values ('The fish and chips dinner was absolutely delicious. Very large portions. We could not have been happier!',
        '2022-12-12',
        10);


insert into comment (text, date, restaurant_id)
values ('First of all, let me start by saying I have been religiously following Bao on Instagram for years even before I have ever been to London. When I finally got to visit post-Covid in January, I went to their SoHo location and got to try their fried chicken and confit baos which I both loved! These are textbook amazing baos that are of quality and surprisingly filling for what it is. The bun of the fried chicken one is also somewhat made with sesame which I liked. I got one of their alcoholic spritz which complemented my order well.',
        '2022-01-11',
        11);


insert into comment (text, date, restaurant_id)
values ('But if you have a service/assistance dog, you will be turned away.

There is a MacDonalds across the street.',
        '2022-11-12',
        2);


insert into comment (text, date, restaurant_id)
values ('One word for the low mark: ketchup ... Tasted stronger than the meat and cheese ...
I will never repeat this enough NO KETCHUP in my burger!!!!
I cant believe this place ranks so high in every TOP burger in London.',
        '2022-11-01',
        3);


insert into comment (text, date, restaurant_id)
values ('I have been to the one on Oxford street and have to say the burgers there were much better. This was a bit bland and the hot chick burger was not spicy at all. Not sure if the quality has gone down but they need to buck up as everyone has high expectations from them.',
        '2022-01-07',
        3);


insert into comment (text, date, restaurant_id)
values ('Yummy food and reasonable price. We ordered three starters and a full rack of ribs to share, very tasty and both of us were full!! Defo will go again.',
        '2022-01-01',
        4);


insert into comment (text, date, restaurant_id)
values ('What can I say. Our food was great, service is great, atmosphere is great. If you want Steak go. If you want chicken wings go. If you want good food GO!',
        '2022-09-09',
        5);


insert into comment (text, date, restaurant_id)
values ('Great choice of food and best drink in town, great night out!!!! Food and drinks not very expensive as well. Definetely will keep going back!!!',
        '2022-01-04',
        6);


insert into comment (text, date, restaurant_id)
values ('Sadly, not as clean and pleasant as it once was. The food nowadays seems to be ready made frozen meals heated on-site. Waiters are always rushed off their feet and hard to find. Dishes are either too dry or too fat-laden.',
        '2022-04-01',
        7);


insert into comment (text, date, restaurant_id)
values ('It was incredible. We showed up unexpectedly with a party of 8, and they were able to seat us all together quickly. They were extremely busy, yet they got our food promptly. Pedro was our server. He did a remarkable job. I am a server, and I was still impressed by his witty, kind, and playful manor. If you go, ask for Pedro from Brazil!!',
        '2022-08-01',
        8);


insert into comment (text, date, restaurant_id)
values ('Very overrated. The bun is the weak point and I very much prefer GBKs burger.',
        '2022-09-12',
        9);


insert into comment (text, date, restaurant_id)
values ('This was the kind of meal that makes you think of going back through every review you have done and knocking a star off each of them so this one stands out enough.  The amazing thing about it was that it came from nowhere; I expected a simple average French bistro.  The reason for this is that Comptoir Gascons big brother, Club Gascon, despite its Michelin stars is thoroughly disappointing.  I therefore couldnt see how its competitively priced little brother could be any good.

I was wrong.

It was an excellent meal from start to finish.  It was the French equivalent of tapas with some memorable wines.  Highlights included (in order of brilliance) a cheesecake for pudding that was a defining moment in my experience of cheesecakes, "piggy treats" (or a great plate of charcuterie), a sauteed baby squid of such finesse and elegance even been left for a bit too long under a hot plate couldnt ruin it and cheese heaven.

I have found a new food home.',
        '2022-02-11',
        10);


insert into comment (text, date, restaurant_id)
values ('Unbeknownst to me, I had been to this restaurant before I came here to dine. Once upon a time, we were wandering around this area, and saw that they sold foie gras to go, so we picked some up to take home to have for part of a nice meal later that night.

Flash forward some amount of time, and my wonderful friend and co-worker was planning her leaving do to go back to France. As a French person (and based on recommendations from two separate people) she chose a lovely French meal at Comptor Gascon. They were quite willing to deal with our ridiculously large group of 18 (which unfortunately shrank to 13 day of, but they were still awesome about it) even though its not the largest of places. Of course we had to pre-order, but we are used to that.

The restaurant itself is quite cozy. Its reminiscent of those rustic French restaurants that I grew to love during my visit to Saint-Emilion. The waitstaff were very friendly and willing to deal with our indecisiveness about drinks. The wine menu has an interesting selection with varying price ranges from inexpensive to quite expensive.

There were a variety of starters around the table. I had the Piggy Treats. I am often drawn toward names that sound interesting but are completely ambiguous about what youre getting. I at least knew it was likely to be pork. And it was. It was similar to a charchuterie plate with different sliced meats, a bit of head cheese, and some pate. Very delicious! The other half had the duck hearts which were also tasty. The duck rillettes looked terrific as well.

For my main I had the cassoulet. I always wanted to try it, but never had the opportunity. Oh my it was tasty (and rich). Rich buttery beans with sausage and duck meat. I was incredibly happy. I also had some of the duck fat chips which were great as well. The other half had the duck burger deluxe. Theres nothing like a rich burger with a slab of foie gras on top to really make a good meal.

Desserts were good as well. The other half had cheese (as he does), and I had the fondant with raspberry sorbet. The fondant was rich and oozing with chocolate. The sorbet added a nice sharpness that contrasted well with the chocolate. We both had the red dessert wine. We liked it so well, we bought a bottle to take home.

Speaking of which, the restaurant also sells lots of bottles of wine to take home, as well as other delicious goods (as mentioned with the foie gras at the beginning). The food was also quite reasonably priced for the quality of food you get!

Im definitely a fan of this place, and would go back here for any event whether it is a big group event or a small intimate evening.',
        '2022-11-11',
        11);


insert into comment (text, date, restaurant_id)
values ('Good tasty foods..friendly staffs also willing to help. Love the deck here, it is very relaxing and calm restaurant. Like the main pork belly and the duck with sweet potatoes dish.',
        '2022-09-01',
        2);


insert into comment (text, date, restaurant_id)
values ('Fabulous food. Not expensive. Great music. The set lunch was delicious and I was surprised how quiet it was!',
        '2022-03-03',
        3);



select * from restaurant;
select * from city;
select * from comment;
select * from tag;