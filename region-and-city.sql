create table region
(
    id         serial
        primary key,
    name_ru    varchar(255),
    name_uz    varchar(255),
    status     smallint default 1 not null,
    created_at timestamp(0),
    updated_at timestamp(0)
);

alter table region
    owner to root;

create table city
(
    id         serial
        primary key,
    name_ru    varchar(255),
    name_uz    varchar(255),
    status     smallint default 1 not null,
    region_id  integer
        constraint fk_city_region
            references region,
    created_at timestamp(0),
    updated_at timestamp(0)
);

alter table city
    owner to root;



INSERT INTO public.region (id, name_ru, name_uz, status, created_at, updated_at) VALUES (12, 'Ферганская область', 'Farg‘ona viloyati', 1, null, null);
INSERT INTO public.region (id, name_ru, name_uz, status, created_at, updated_at) VALUES (14, 'Город Ташкент', 'Toshkent shahri', 1, null, null);
INSERT INTO public.region (id, name_ru, name_uz, status, created_at, updated_at) VALUES (5, 'Кашкадарьинская область', 'Qashqadaryo viloyati', 1, null, null);
INSERT INTO public.region (id, name_ru, name_uz, status, created_at, updated_at) VALUES (2, 'Андижанская область', 'Andijon viloyati', 1, null, null);
INSERT INTO public.region (id, name_ru, name_uz, status, created_at, updated_at) VALUES (3, 'Бухарская область', 'Buxoro viloyati', 1, null, null);
INSERT INTO public.region (id, name_ru, name_uz, status, created_at, updated_at) VALUES (8, 'Самаркандская область', 'Samarqand viloyati', 1, null, null);
INSERT INTO public.region (id, name_ru, name_uz, status, created_at, updated_at) VALUES (1, 'Республика Каракалпакстан', 'Qoraqalpog‘iston Respublikasi', 1, null, null);
INSERT INTO public.region (id, name_ru, name_uz, status, created_at, updated_at) VALUES (11, 'Ташкентская область', 'Toshkent viloyati', 1, null, null);
INSERT INTO public.region (id, name_ru, name_uz, status, created_at, updated_at) VALUES (6, 'Навоийская область', 'Navoiy viloyati', 1, null, null);
INSERT INTO public.region (id, name_ru, name_uz, status, created_at, updated_at) VALUES (13, 'Хорезмская область', 'Xorazm viloyati', 1, null, null);
INSERT INTO public.region (id, name_ru, name_uz, status, created_at, updated_at) VALUES (4, 'Джизакская область', 'Jizzax viloyati', 1, null, null);
INSERT INTO public.region (id, name_ru, name_uz, status, created_at, updated_at) VALUES (9, 'Сурхандарьинская область', 'Surxandaryo viloyati', 1, null, null);
INSERT INTO public.region (id, name_ru, name_uz, status, created_at, updated_at) VALUES (7, 'Наманганская область', 'Namangan viloyati', 1, null, null);
INSERT INTO public.region (id, name_ru, name_uz, status, created_at, updated_at) VALUES (10, 'Сырдарьинская область', 'Sirdaryo viloyati', 1, null, null);




INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (180, 'Суховский район', 'So‘x tumani', 1, 12, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (166, 'Юкагирчикский район', 'Yuqorichirchiq tumani', 1, 11, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (197, 'Янгибазарский район', 'Yangibozor tumani', 1, 13, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (111, 'Иштиханский район', 'Ishtixon tumani', 1, 8, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (155, 'Зангиотский район', 'Zangiota tumani', 1, 11, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (153, 'Бычий район', 'Bo‘ka tumani', 1, 11, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (78, 'Касбийский район', 'Kasbi tumani', 1, 5, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (162, 'Пискентский район', 'Piskent tumani', 1, 11, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (144, 'Сайхунабадский район', 'Sayxunobod tumani', 1, 10, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (108, 'Янгикурганский район', 'Yangiqo‘rg‘on tumani', 1, 7, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (75, 'Камашинский район', 'Qamashi tumani', 1, 5, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (106, 'Чартокский район', 'Chortoq tumani', 1, 7, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (181, 'Ташлакский район', 'Toshloq tumani', 1, 12, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (183, 'Узбекский район', 'O‘zbekiston tumani', 1, 12, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (82, 'Мубаракский район', 'Muborak tumani', 1, 5, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (105, 'Учкурганский район', 'Uchqo‘rg‘on tumani', 1, 7, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (103, 'Туракурганский район', 'To‘raqo‘rg‘on tumani', 1, 7, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (138, 'Шурчинский район', 'Sho‘rchi tumani', 1, 9, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (173, 'Кувский район', 'Quva tumani', 1, 12, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (204, 'Яшнабадский район', 'Yashnobod tumani', 1, 14, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (175, 'Город Кукон', 'Qo‘qon shahri', 1, 12, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (157, 'Кичирчикский район', 'Quyichirchiq tumani', 1, 11, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (167, 'Янгиульский район', 'Yangiyo‘l tumani', 1, 11, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (90, 'Конимехский район', 'Konimex tumani', 1, 6, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (127, 'Деновский район', 'Denov tumani', 1, 9, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (185, 'Город Фергана', 'Farg‘ona shahri', 1, 12, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (94, 'Томдинский район', 'Tomdi tumani', 1, 6, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (85, 'Шахрисабзский район', 'Shahrisabz tumani', 1, 5, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (210, 'Город Асака', 'Asaka shahri', 1, 2, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (217, 'Тюпский район', 'Tuproqqala tumani', 1, 13, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (134, 'Термезский район', 'Termiz tumani', 1, 9, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (79, 'Книжный район', 'Kitob tumani', 1, 5, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (206, 'Шайхантахурский район', 'Shayxontohur tumani', 1, 14, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (92, 'Город Навои', 'Navoiy shahri', 1, 6, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (32, 'Асакинский район', 'Asaka tumani', 1, 2, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (47, 'Город Бухара', 'Buxoro shahri', 1, 3, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (67, 'Зафарабадский район', 'Zafarobod tumani', 1, 4, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (16, 'Берунийский район', 'Beruniy tumani', 1, 1, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (56, 'Олотский район', 'Olot tumani', 1, 3, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (63, 'Район дружбы', 'Do‘stlik tumani', 1, 4, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (66, 'Зарбдорский район', 'Zarbdor tumani', 1, 4, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (68, 'Зоминский район', 'Zomin tumani', 1, 4, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (48, 'Бухарский район', 'Buxoro tumani', 1, 3, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (21, 'Муйнакский район', 'Mo‘ynoq tumani', 1, 1, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (39, 'Кургантепинский район', 'Qo‘rg‘ontepa tumani', 1, 2, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (22, 'Нукусский район', 'Nukus tumani', 1, 1, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (38, 'Город Карасув', 'Qorasuv shahri', 1, 2, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (65, 'Город Джизак', 'Jizzax shahri', 1, 4, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (44, 'Ханабадский район', 'Xonabod tumani', 1, 2, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (40, 'Район милосердия', 'Marhamat tumani', 1, 2, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (36, 'Джалакудукский район', 'Jalaquduq tumani', 1, 2, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (24, 'Тахтакупирский район', 'Taxtako‘pir tumani', 1, 1, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (49, 'Вобкентский район', 'Vobkent tumani', 1, 3, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (43, 'Улугнорский район', 'Ulug‘nor tumani', 1, 2, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (46, 'Шахриханский район', 'Shaxrixon tumani', 1, 2, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (60, 'Арнасойский район', 'Arnasoy tumani', 1, 4, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (17, 'Район кегейли', 'Kegayli tumani', 1, 1, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (54, 'Каракульский район', 'Qorako‘l tumani', 1, 3, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (50, 'Гиждуванский район', 'G‘ijduvon tumani', 1, 3, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (20, 'Кунгратский район', 'Qo‘ng‘irot tumani', 1, 1, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (52, 'Коганский район', 'Kogon tumani', 1, 3, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (45, 'Город ходжаабад', 'Xo‘jaobod shahri', 1, 2, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (29, 'Район элликкала', 'Ellikqal‘a tumani', 1, 1, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (51, 'Жондорский район', 'Jondor tumani', 1, 3, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (18, 'Конликульский район', 'Qonliko‘l tumani', 1, 1, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (23, 'Город Нукус', 'Nukus shahri', 1, 1, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (42, 'Пахтаабадский район', 'Paxtaobod tumani', 1, 2, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (19, 'Караузакский район', 'Qorao‘zak tumani', 1, 1, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (62, 'Галлаорольский район', 'G‘allaorol tumani', 1, 4, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (30, 'Город Андижан', 'Andijon shahri', 1, 2, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (59, 'Шафирканский район', 'Shofirkon tumani', 1, 3, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (55, 'Караульбазарский район', 'Qorovulbozor tumani', 1, 3, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (25, 'Павлодарский район', 'To‘rtko‘l tumani', 1, 1, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (34, 'Булакбашинский район', 'Buloqboshi tumani', 1, 2, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (53, 'Город Коган', 'Kogon shahri', 1, 3, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (15, 'Амударьинский район', 'Amudaryo tumani', 1, 1, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (28, 'Шуманайский район', 'SHumanay tumani', 1, 1, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (37, 'Избосганский район', 'Izbosgan tumani', 1, 2, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (26, 'Ходжалинский район', 'Xo‘jayli tumani', 1, 1, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (41, 'Алтынкульский район', 'Oltinko‘l tumani', 1, 2, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (31, 'Андижанский район', 'Andijon tumani', 1, 2, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (61, 'Бахмальский район', 'Baxmal tumani', 1, 4, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (58, 'Ромитанский район', 'Romitan tumani', 1, 3, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (64, 'Ш.Рашидовский район', 'Sh.Rashidov tumani', 1, 4, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (57, 'Пешкинский район', 'Peshku tumani', 1, 3, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (27, 'Чимбойский район', 'CHimboy tumani', 1, 1, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (35, 'Ледяной район', 'Bo‘z tumani', 1, 2, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (33, 'Балыкчинский район', 'Baliqchi tumani', 1, 2, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (87, 'Город Зарафшан', 'Zarafshon shahri', 1, 6, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (202, 'Сергелевский район', 'Sergeli tumani', 1, 14, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (209, 'Город тахиаташ', 'Taxiatosh shahri', 1, 1, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (124, 'Ургутский район', 'Urgut tumani', 1, 8, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (198, 'Бектимерский район', 'Bektimer tumani', 1, 14, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (170, 'Бувайдинский район', 'Buvayda tumani', 1, 12, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (96, 'Хатырчинский район', 'Xatirchi tumani', 1, 6, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (69, 'Мирзачульский район', 'Mirzacho‘l tumani', 1, 4, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (110, 'Джомбойский район', 'Jomboy tumani', 1, 8, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (114, 'Кушработский район', 'Qo‘shrabot tumani', 1, 8, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (186, 'Фуркат район', 'Furqat tumani', 1, 12, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (91, 'Навбахарский район', 'Navbahor tumani', 1, 6, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (112, 'Каттакурганский район', 'Kattaqo‘rg‘on tumani', 1, 8, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (161, 'Паркентский район', 'Parkent tumani', 1, 11, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (107, 'Чустский район', 'Chust tumani', 1, 7, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (121, 'Самаркандский район', 'Samarqand tumani', 1, 8, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (192, 'Хивинский район', 'Xiva tumani', 1, 13, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (208, 'Яккасарайский район', 'Yakkasaroy tumani', 1, 14, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (88, 'Кармановский район', 'Karmana tumani', 1, 6, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (216, 'Бузатовский район', 'Bo‘zatov tumani', 1, 1, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (200, 'Мирабадский район', 'Mirobod tumani', 1, 14, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (150, 'Город ангирен', 'Angiren shahri', 1, 11, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (159, 'Город Алмалык', 'Olmaliq shahri', 1, 11, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (196, 'Янгиарикский район', 'Yangiariq tumani', 1, 13, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (163, 'Уртачирчикский район', 'O‘rtachirchiq tumani', 1, 11, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (128, 'Джаркурганский район', 'Jarqo‘rg‘on tumani', 1, 9, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (126, 'Бойсунский район', 'Boysun tumani', 1, 9, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (178, 'Алтиарикский район', 'Oltiariq tumani', 1, 12, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (211, 'Бандихонский район', 'Bandixon tumani', 1, 9, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (74, 'Дехканабадский район', 'Dehqonobod tumani', 1, 5, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (164, 'Чинозский район', 'Chinoz tumani', 1, 11, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (174, 'Город кувасой', 'Quvasoy shahri', 1, 12, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (118, 'Пайарикский район', 'Payariq tumani', 1, 8, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (125, 'Ангорский район', 'Angor tumani', 1, 9, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (93, 'Нуротский район', 'Nurota tumani', 1, 6, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (143, 'Околтинский район', 'Oqoltin tumani', 1, 10, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (141, 'Город Гулистан', 'Guliston shahri', 1, 10, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (195, 'Шавотский район', 'Shavot tumani', 1, 13, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (133, 'Сариасийский район', 'Sariosiy tumani', 1, 9, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (117, 'Окдаринский район', 'Oqdaryo tumani', 1, 8, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (119, 'Пастаргомский район', 'Pastarg‘om tumani', 1, 8, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (154, 'Бустонликский район', 'Bo‘stonliq tumani', 1, 11, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (190, 'Ургенчский район', 'Urganch tumani', 1, 13, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (189, 'Кушкупирский район', 'Qo‘shko‘pir tumani', 1, 13, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (123, 'Тойлакский район', 'Toyloq tumani', 1, 8, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (212, 'Город тоннарон', 'Ohangaron shahri', 1, 11, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (168, 'Бешарикский район', 'Beshariq tumani', 1, 12, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (100, 'Город Наманган', 'Namangan shahri', 1, 7, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (142, 'Мирзаабадский район', 'Mirzaobod tumani', 1, 10, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (76, 'Каршинский район', 'Qarshi tumani', 1, 5, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (80, 'Косонский район', 'Koson tumani', 1, 5, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (73, 'Гузарский район', 'G‘uzor tumani', 1, 5, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (120, 'Пахтачинский район', 'Paxtachi tumani', 1, 8, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (139, 'Боярский район', 'Boyovut tumani', 1, 10, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (151, 'Бекабадский район', 'Bekabod tumani', 1, 11, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (99, 'Наманганский район', 'Namangan tumani', 1, 7, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (182, 'Учкуприкский район', 'Uchko‘prik tumani', 1, 12, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (171, 'Дангарский район', 'Dang‘ara tumani', 1, 12, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (104, 'Уичинский район', 'Uychi tumani', 1, 7, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (191, 'Город Ургенч', 'Urganch shahri', 1, 13, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (137, 'Шерабадский район', 'Sherobod tumani', 1, 9, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (122, 'Город Самарканд', 'Samarqand shahri', 1, 8, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (147, 'Гавосский район', 'Xavos tumani', 1, 10, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (207, 'Юнусабадский район', 'Yunusobod tumani', 1, 14, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (84, 'Чиракчи район', 'Chiroqchi tumani', 1, 5, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (203, 'Учтепинский район', 'Uchtepa tumani', 1, 14, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (135, 'Город Термез', 'Termiz shahri', 1, 9, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (179, 'Риштонский район', 'Rishton tumani', 1, 12, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (149, 'Город Янгиер', 'Yangier shahri', 1, 10, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (160, 'Тонгаронский район', 'Ohangaron tumani', 1, 11, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (98, 'Мингбулакский район', 'Mingbuloq tumani', 1, 7, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (71, 'Форишский район', 'Forish tumani', 1, 4, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (116, 'Нурабадский район', 'Nurabod tumani', 1, 8, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (72, 'Янгиабадский район', 'Yangiobod tumani', 1, 4, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (109, 'Булунгурский район', 'Bulung‘ur tumani', 1, 8, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (130, 'Кумкурганский район', 'Qo‘mqo‘rg‘on tumani', 1, 9, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (77, 'Город Карши', 'Qarshi shahri', 1, 5, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (89, 'Кизилтепинский район', 'Qiziltepa tumani', 1, 6, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (148, 'Город десертов', 'Shirin shahri', 1, 10, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (184, 'Ферганский район', 'Farg‘ona tumani', 1, 12, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (205, 'Чиланзарский район', 'Chilonzor tumani', 1, 14, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (188, 'Гурланский район', 'Gurlan tumani', 1, 13, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (193, 'Хазараспский район', 'Xazarasp tumani', 1, 13, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (113, 'Город Каттакурган', 'Kattaqo‘rg‘on shahri', 1, 8, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (152, 'Город Бекабад', 'Bekabod shahri', 1, 11, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (145, 'Сардобский район', 'Sardoba tumani', 1, 10, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (156, 'Кибрайский район', 'Qibray tumani', 1, 11, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (165, 'Город Чирчик', 'Chirchiq shahri', 1, 11, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (131, 'Музработский район', 'Muzrabot tumani', 1, 9, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (158, 'Оккурганский район', 'Oqqo‘rg‘on tumani', 1, 11, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (70, 'Пахтакорский район', 'Paxtakor tumani', 1, 4, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (86, 'Яккабагский район', 'Yakkabog‘ tumani', 1, 5, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (81, 'Миришкорский район', 'Mirishkor tumani', 1, 5, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (83, 'Район Мишон', 'Nishon tumani', 1, 5, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (132, 'Алтынсайский район', 'Oltinsoy tumani', 1, 9, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (199, 'M.Улугбекский район', 'M.Ulug‘bek tumani', 1, 14, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (97, 'Косонсайский район', 'Kosonsoy tumani', 1, 7, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (176, 'Куштепинский район', 'Qo‘shtepa tumani', 1, 12, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (172, 'Йозиовонский район', 'Yozyovon tumani', 1, 12, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (201, 'Алмазарский район', 'Olmazor tumani', 1, 14, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (177, 'Город Маргилан', 'Marg‘ilon shahri', 1, 12, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (129, 'Кизирикский район', 'Qiziriq tumani', 1, 9, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (115, 'Нарпайский район', 'Narpay tumani', 1, 8, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (146, 'Сырдарьинский район', 'Sirdaryo tumani', 1, 10, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (213, 'Город Янгиюль', 'Yangiyo‘l shahri', 1, 11, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (187, 'Боготский район', 'Bog‘ot tumani', 1, 13, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (95, 'Учкудукский район', 'Uchquduq tumani', 1, 6, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (215, 'Ташкентский район', 'Toshkent tumani', 1, 11, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (101, 'Норинский район', 'Norin tumani', 1, 7, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (136, 'Длинный район', 'Uzun tumani', 1, 9, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (169, 'Багдадский район', 'Bog‘dod tumani', 1, 12, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (102, 'Поп-район', 'Pop tumani', 1, 7, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (194, 'Район Хонки', 'Xonqa tumani', 1, 13, null, null);
INSERT INTO public.city (id, name_ru, name_uz, status, region_id, created_at, updated_at) VALUES (140, 'Гулистанский район', 'Guliston tumani', 1, 10, null, null);
