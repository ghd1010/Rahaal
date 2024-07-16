:- style_check(-singleton).

rahaal:-
 nl,write(""),nl,
 writeln('✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️'),
 tab(18),
 writeln('_____ Welcome to Rahaal Travel Planner System!_____'),
 writeln('✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️'),
 nl,
 tab(55),
 write('Hello! I am Rahaal 👨🏻‍✈️✈️'),nl,nl,
 write('I am here to help you find your best travel destination in Saudi Arabia and Gulf Countries'),nl,
menu.

menu:-
tab(20),
write('Please answer the following questions, enter (1) for Yes, (2) for No'),nl,
 nl,nl,
 write(" 👨🏻‍✈️: Would you like to travel to the kingdom of Saudi Arabia ?"),nl,
 write('1- Yes'),nl,
 write('2- No'),nl,nl,
 
 read(Q1),
    (
        Q1 =:= 1 -> family_saudi(Q1) ;
        Q1 =:= 2 -> gulf_countries(Q1) ;
        tab(20),
        writeln('⚠️ Invalid Input! You must enter either 1 or 2'),nl,
        menu
    ).

family_saudi(Q1):-
nl,nl,
write(" 👨🏻‍✈️: Would you like to go for a family trip?"),nl,
write('1- Yes'),nl,
write('2- No'),nl,nl,
read(Q2),
    (
        Q2 =:= 1 -> nature_saudi(Q1,Q2) ;
        Q2 =:= 2 -> nature_saudi(Q1,Q2) ;
        tab(20),
        writeln('⚠️ Invalid Input! You must enter either 1 or 2'),nl,
        family_saudi(Q1)
    ).

nature_saudi(Q1,Q2):-
nl,nl,
write(" 👨🏻‍✈️: Would you like to explore places with nature?"),nl,
write('1- Yes'),nl,
write('2- No'),nl,nl,
read(Q3),
(   
        Q3 =:= 1 -> relaxing(Q1,Q2,Q3) ;
        Q3 =:= 2 -> restaurants_entertainment(Q1,Q2,Q3);
        tab(20),
        writeln('⚠️ Invalid Input! You must enter either 1 or 2'),nl,
        nature_saudi(Q1,Q2)
    ).

restaurants_entertainment(Q1,Q2,Q3):-
nl,nl,
write(" 👨🏻‍✈️: Would you like to go restaurants and entertainment places at the same time?"),nl,
write('1- Yes'),nl,
write('2- No'),nl,nl,
read(Q7),

(   
        Q7 =:= 1 -> shopping(Q1,Q2,Q3,Q7) ;
        Q7 =:= 2 -> adventure2(Q1,Q2,Q3,Q7);
        tab(20),
        writeln('⚠️ Invalid Input! You must enter either 1 or 2'),nl,
        restaurants_entertainment(Q1,Q2,Q3)
    ).

relaxing(Q1,Q2,Q3):-
nl,nl,
write(" 👨🏻‍✈️: Would you like a relaxing place?"),nl,
write('1- Yes'),nl,
write('2- No'),nl,nl,
read(Q4),
(   
        Q4 =:= 1 -> dest_umluj(Q1,Q2,Q3,Q4) ;
        Q4 =:= 2 -> adventure(Q1,Q2,Q3,Q4);
        tab(20),
        writeln('⚠️ Invalid Input! You must enter either 1 or 2'),nl,
        relaxing(Q1,Q2,Q3)
    ).

adventure(Q1,Q2,Q3,Q4):-
nl,nl,
write(" 👨🏻‍✈️: Would you like to have an adventure?"),nl,
write('1- Yes'),nl,
write('2- No'),nl,nl,
read(Q5),
(   
        Q5 =:= 1 -> dest_abha(Q1,Q2,Q3,Q4,Q5) ;
        Q5 =:= 2 ->  historical(Q1,Q2,Q3,Q4,Q5);
        tab(20),
        writeln('⚠️ Invalid Input! You must enter either 1 or 2'),nl,
        adventure(Q1,Q2,Q3,Q4)
    ).

historical(Q1,Q2,Q3,Q4,Q5):-
nl,nl,
write(" 👨🏻‍✈️: Would you like historical places?"),nl,
write('1- Yes'),nl,
write('2- No'),nl,nl,
read(Q6), 
(   
        Q6 =:= 1 -> dest_ula(Q1,Q2,Q3,Q4,Q5,Q6) ;
        Q6 =:= 2 ->  dest_taif(Q1,Q2,Q3,Q4,Q5,Q6);        
        tab(20),
        writeln('⚠️ Invalid Input! You must enter either 1 or 2'),nl,
        historical(Q1,Q2,Q3,Q4,Q5)
    ).


shopping(Q1,Q2,Q3,Q7):-
nl,nl,
write(" 👨🏻‍✈️: Would you like to go shopping?"),nl,
write('1- Yes'),nl,
write('2- No'),nl,nl,
read(Q8),
(   
        Q8 =:= 1 -> dest_riyadh(Q1,Q2,Q3,Q7,Q8) ;
        Q8 =:= 2 ->  dest_khobar(Q1,Q2,Q3,Q7,Q8);
        tab(20),
        writeln('⚠️ Invalid Input! You must enter either 1 or 2'),nl,
        shopping(Q1,Q2,Q3,Q7)
    ).
    
adventure2(Q1,Q2,Q3,Q7):-
nl,nl,
write(" 👨🏻‍✈️: Would you like to have an adventure?"),nl,
write('1- Yes'),nl,
write('2- No'),nl,nl,
read(Q9),
(   
        Q9 =:= 1 -> dest_jeddah(Q1,Q2,Q3,Q7,Q9) ;
        Q9 =:= 2 ->  dest_makkah(Q1,Q2,Q3,Q7,Q9);
        tab(20),
        writeln('⚠️ Invalid Input! You must enter either 1 or 2'),nl,
       adventure2(Q1,Q2,Q3,Q7)
    ).


%Gulf Countries 
gulf_countries(Q1):-
nl,nl,
 write(" 👨🏻‍✈️: Would you like to travel to the Gulf countries"),nl,
 write('1- Yes'),nl,
 write('2- No'),nl,nl,
 read(Q10),
(   
        Q10 =:= 1 -> family_gulf(Q1,Q10) ;
        Q10 =:= 2 ->  exit;
        tab(20),
        writeln('⚠️ Invalid Input! You must enter either 1 or 2'),nl,
       gulf_countries(Q1)
    ).

family_gulf(Q1,Q10):-
nl,nl,
write(" 👨🏻‍✈️: Would you like to go for a family trip?"),nl,
write('1- Yes'),nl,
write('2- No'),nl,nl,
read(Q11),
(   
        Q11 =:= 1 -> nature_gulf(Q1,Q10,Q11) ;
        Q11 =:= 2 ->  entertainment(Q1,Q10,Q11);
        tab(20),
        writeln('⚠️ Invalid Input! You must enter either 1 or 2'),nl,
      family_gulf(Q1,Q10)
    ).

nature_gulf(Q1,Q10,Q11):-
nl,nl,
write(" 👨🏻‍✈️: Would you like to explore places with nature?"),nl,
write('1- Yes'),nl,
write('2- No'),nl,nl,
read(Q12),
(   
        Q12 =:= 1 -> dest_oman(Q1,Q10,Q11,Q12) ;
        Q12 =:= 2 ->  dest_dubai(Q1,Q10,Q11,Q12);
        tab(20),
        writeln('⚠️ Invalid Input! You must enter either 1 or 2'),nl,
     nature_gulf(Q1,Q10,Q11)
    ).

entertainment(Q1,Q10,Q11):-
nl,nl,
write(" 👨🏻‍✈️: Would you like to go to entertainment places?"),nl,
write('1- Yes'),nl,
write('2- No'),nl,nl,
read(Q13),
(   
        Q13 =:= 1 -> dest_kuwait(Q1,Q10,Q11,Q13) ;
        Q13 =:= 2 ->  museums(Q1,Q10,Q11,Q13);
        tab(20),
        writeln('⚠️ Invalid Input! You must enter either 1 or 2'),nl,
     entertainment(Q1,Q10,Q11)
    ).

museums(Q1,Q10,Q11,Q13):-
nl,nl,
write(" 👨🏻‍✈️: Would you like to visit museums?"),nl,
write('1- Yes'),nl,
write('2- No'),nl,nl,
read(Q14),
(   
        Q14 =:= 1 -> dest_bahrain(Q1,Q10,Q11,Q13,Q14) ;
        Q14 =:= 2 ->  dest_qatar(Q1,Q10,Q11,Q13,Q14);
        tab(20),
        writeln('⚠️ Invalid Input! You must enter either 1 or 2'),nl,
     museums(Q1,Q10,Q11,Q13)
    ).
 
dest_umluj(Q1,Q2,Q3,Q4):-
 nl,
 tab(5),
 write("✈️ Based on your preferences,"),
 write(' Umlij'),
 write(" can be your destination ✈️"),nl,
 plan1.

dest_abha(Q1,Q2,Q3,Q4,Q5):-
 nl,
tab(5),
write("✈️ Based on your preferences,"),
 write(' Abha'),
 write(" can be your destination ✈️"),nl,
 plan2.

dest_ula(Q1,Q2,Q3,Q4,Q5,Q6):-
 nl,
 tab(5),
 write("✈️ Based on your preferences,"),
 write(' Al-Ula'),
 write(" can be your destination ✈️"),nl,
 plan3.

dest_taif(Q1,Q2,Q3,Q4,Q5,Q6):-
 nl,
 tab(5),
 write("✈️ Based on your preferences,"),
 write(' Taif'),
 write(" can be your destination ✈️"),nl,
 plan4.

dest_riyadh(Q1,Q2,Q3,Q7,Q8):-
 nl,
 tab(5),
 write("✈️ Based on your preferences,"),
 write(' Riyadh'),
 write(" can be your destination ✈️"),nl,
 plan5.

dest_khobar(Q1,Q2,Q3,Q7,Q8):-
 nl,
 tab(5),
 write("✈️ Based on your preferences,"),
 write(' Al-khobar'),
 write(" can be your destination ✈️"),nl,
 plan6.

dest_jeddah(Q1,Q2,Q3,Q7,Q9):-
 nl,
 tab(5),
 write("✈️ Based on your preferences,"),
 write(' Jeddah'),
 write(" can be your destination ✈️"),nl,
 plan7.

dest_makkah(Q1,Q2,Q3,Q7,Q9):-
 nl,
 tab(5),
 write("✈️ Based on your preferences,"),
 write(' Makkah'),
 write(" can be your destination ✈️"),nl,
 plan8.

dest_oman(Q1,Q10,Q11,Q12):-
 nl,
 tab(5),
 write("✈️ Based on your preferences,"),
 write(' Oman'),
 write(" can be your destination ✈️"),nl,
 plan9.

dest_dubai(Q1,Q10,Q11,Q12):-
 nl,
 tab(5),
 write("✈️ Based on your preferences,"),
 write(' Dubai'),
 write(" can be your destination ✈️"),nl,
 plan10.

dest_kuwait(Q1,Q10,Q11,Q13):-
 nl,
 tab(5),
 write("✈️ Based on your preferences,"),
 write(' Kuwait'),
 write(" can be your destination ✈️"),nl,
 plan11.

dest_bahrain(Q1,Q10,Q11,Q13,Q14):-
 nl,
 tab(5),
 write("✈️ Based on your preferences,"),
 write(' Bahrain'),
 write(" can be your destination ✈️"),nl,
 plan12.

dest_qatar(Q1,Q10,Q11,Q13,Q14):-
 nl,
 tab(5),
 write("✈️ Based on your preferences,"),
 write(' Qatar'),
 write(" can be your destination ✈️"),nl,
 plan13.

exit:-
writeln("Sorry :( , This system is just for Saudi Arabia and Gulf Countries."),nl.



% The Plan

plan1:-
nl,tab(5),
writeln('_____ Here is a seggested plan to do in Umluj 🏖️! _____'),
writeln(""),    
writeln("Starting with the Waves Hotel. Then, the silk sand beach or the Duqm island. And if you are a yoga lover"),
writeln("you can take yoga classes during the sunset while you are on the beach of Umluj."),
writeln('_______________________________________________________'),
thanks_message.

plan2:-
nl,
writeln('_____ Here is a seggested plan to do in Abha 🧗🏻‍♂️! _____'),
writeln(""),    
writeln("Starting from the Dabbab walkway, to the telefric. After that, hiking the Souda Mountain."),
writeln("Also, visit Al Masgi Park. Then, explore the Bees Tower Honey Refinery."),
writeln('___________________________________________________'),
thanks_message.

plan3:-
nl,
writeln('_____ Here is a seggested plan to do in Al-Ula 📜🪨! _____'),
writeln(""),    
writeln("starting from Al-Ula Old Town to the amazing Elephant Rock. After that,"), 
writeln("the Maraya Concert Hall, and then explore Madain Saleh."),
writeln('_______________________________________________'),
thanks_message.

plan4:-
nl,
writeln('_____ Here is a seggested plan to do in Taif ⛰️🌳! _____'),
writeln(""),    
writeln("Starting from La Fontaine Alshafa resort, then going to the Taif City Walk."), 
writeln("After that, exploring the strawberrys farm in Alhada."),
writeln('________________________________________________'),
thanks_message.

plan5:-
nl,
writeln('_____ Here is a seggested plan to do in Riyadh 🛍️🍽️! _____'),
writeln(""),    
writeln("Shopping and exploring restaurants at the Boulevard City and Riyadh Park mall. After that,"),
writeln("going to Murabba Historical Palace. Lastly, have an unforgettable adventure with the camel-back"),
writeln("safari at nofa ."),
writeln('_____________________________________________________'),
thanks_message.

plan6:-
nl,
writeln('_____ Here is a seggested plan to do in Al-khobar 🏙️! _____'),
writeln(""),    
writeln("Starting from exploring resturants in Ajdan Walk, then watching a movie in the cinema."), 
writeln("After that, going to the Escape Room which is a real-life experience, and then to Gravity trampolines."),
writeln('_______________________________________________________'),
thanks_message.

plan7:-
nl,
writeln('_____ Here is a seggested plan to do in Jeddah 🌊☀️! _____'),
writeln(""),    
writeln("Starting from Historic Jeddah, and then going on a Scuba Diving Tour. After that, going to Arabian horse-riding"),
writeln("at the red sea, and camping in the Al-Balaj camp."),
writeln('__________________________________________________________'),
thanks_message.

plan8:-
nl,
writeln('_____ Here is a seggested plan to do in Makkah 🕋! _____'),
writeln(""),    
writeln("Make umrah and explore nearby sites. Then, to Al Madinah Al Munawwarah to visit the Al Masjid Al Nabawi."),
writeln('_________________________________________________________'),
thanks_message.

plan9:-
nl,
writeln('_____ Here is a seggested plan to do in Oman 🇴🇲🌿! _____'),
writeln(""),    
writeln("Darbar Waterfall and wadi Shab are great places to enjoy the beauty of nature. Explore the breathtaking"),
writeln("canyons and valleys in the East Salalah Mountain and stay in Sheraton Oman Hotel or if you want an amazing"),
writeln("beach view, go to the InterContinental Muscat Hotel."),
writeln('_________________________________________________________'),
thanks_message.

plan10:-
nl,
writeln('_____ Here is a seggested plan to do in Dubai 🇦🇪👨‍👩‍👧‍👧! _____'),
writeln(""),    
writeln("Start with Discovering Dubai Mall, then dive into underwater adventure at Dubai Aquarium & Underwater Zoo."),
writeln("After that watch Dubai Fountain where water, music, and light come together creating a spectacular show."),
writeln("To further enrich your Dubai experience, make your way to Global Village to explore cultures, cuisines from"), 
writeln("around the world."),
writeln('__________________________________________________________'),
thanks_message.

plan11:-
nl,
writeln('_____ Here is a seggested plan to do in Kuwait 🇰🇼🎡🎢! _____'),
writeln(""),    
writeln("Visit the paintball Kuwait to play a high intensity game that give you the chance to shoot your friends"),
writeln("without causing harm. Then, play 'Escape the Room' where you and your team must work together to solve "), 
writeln("puzzles in Dream Factory. Also, enjoy the water slides in Aqua Park. Finally, attend a play in one of the"), 
writeln("largest theatres which is the JACC national theatre."),
writeln('_______________________________________________________'),
thanks_message.

plan12:-
nl,
writeln('_____ Here is a seggested plan to do in Bahrain 🇧🇭🏛️🏺! _____'),
writeln(""),    
writeln("Visit the Bahrain National Museum to explore the rich history and cultural of Bahrain. Also, the Busaad"),
writeln("Art Gallery to enjoy the contemporary artworks. Take a glimpse of the Bahrain's military history at the"), 
writeln("Bahrain Military Museum. Lastly, Enjoy the traditional food in Freej Bin Rashdan Bahraini Cuisine."),
writeln('________________________________________________________'),
thanks_message.

plan13:-
nl,
writeln('_____ Here is a seggested plan to do in Qatar 🇶🇦🌆! _____'),
writeln(""),    
writeln("Visit Souq waqif to see the traditional Qatari building and buy local products. Then go to Katara"), 
writeln("cultural village. Also, you can resides in The Pearl island that has luxurious outlets, restaurants,"), 
writeln("cafes, and entertainment venues. Moreover, you can visit Lusail Corniche, Banana Island, Mushaireb, "), 
writeln("and old Doha port."),
writeln('______________________________________________________'),
thanks_message.

thanks_message:-
nl,tab(8),writeln('__ Thank you for using Rahaal👨🏻‍✈️, enjoy your trip 🤩🩵! __').
