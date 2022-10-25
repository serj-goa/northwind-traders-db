CREATE TABLE IF NOT EXISTS suppliers (
    id SERIAL PRIMARY KEY,
    company_name varchar(100),
    contact varchar(100),
    country varchar(50),
    city varchar(50),
    address varchar(100),      
    phone varchar(50),
    fax varchar(50),
    homepage varchar(100)
);

INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Exotic Liquids$$, $$Charlotte Cooper, Purchasing Manager$$, 'UK', 'London', $$EC1 4SD, 49 Gilbert St.$$, '(171) 555-2222', '', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$New Orleans Cajun Delights$$, $$Shelley Burke, Order Administrator$$, 'USA', 'New Orleans', $$70117, LA, P.O. Box 78934$$, '(100) 555-4822', '', 'CAJUN.HTM');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Grandma Kelly's Homestead$$, $$Regina Murphy, Sales Representative$$, 'USA', 'Ann Arbor', $$48104, MI, 707 Oxford Rd.$$, '(313) 555-5735', '(313) 555-3349', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Tokyo Traders$$, $$Yoshi Nagase, Marketing Manager$$, 'Japan', 'Tokyo', $$100, 9-8 Sekimai Musashino-shi$$, '(03) 3555-5011', '', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Cooperativa de Quesos 'Las Cabras'$$, $$Antonio del Valle Saavedra, Export Administrator$$, 'Spain', 'Oviedo', $$33007, Asturias, Calle del Rosal 4$$, '(98) 598 76 54', '', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Mayumi's$$, $$Mayumi Ohno, Marketing Representative$$, 'Japan', 'Osaka', $$545, 92 Setsuko Chuo-ku$$, '(06) 431-7877', '', 'http://www.microsoft.com/accessdev/sampleapps/mayumi.htm');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Pavlova, Ltd.$$, $$Ian Devling, Marketing Manager$$, 'Australia', 'Melbourne', $$3058, Victoria, 74 Rose St. Moonie Ponds$$, '(03) 444-2343', '(03) 444-6588', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Specialty Biscuits, Ltd.$$, $$Peter Wilson, Sales Representative$$, 'UK', 'Manchester', $$M14 GSD, 29 King's Way$$, '(161) 555-4448', '', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$PB Knäckebröd AB$$, $$Lars Peterson, Sales Agent$$, 'Sweden', 'Göteborg', $$S-345 67, Kaloadagatan 13$$, '031-987 65 43', '031-987 65 91', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Refrescos Americanas LTDA$$, $$Carlos Diaz, Marketing Manager$$, 'Brazil', 'Sao Paulo', $$5442, Av. das Americanas 12.890$$, '(11) 555 4640', '', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Heli Süßwaren GmbH & Co. KG$$, $$Petra Winkler, Sales Manager$$, 'Germany', 'Berlin', $$10785, Tiergartenstraße 5$$, '(010) 9984510', '', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Plutzer Lebensmittelgroßmärkte AG$$, $$Martin Bein, International Marketing Mgr.$$, 'Germany', 'Frankfurt', $$60439, Bogenallee 51$$, '(069) 992755', '', 'http://www.microsoft.com/accessdev/sampleapps/plutzer.htm');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Nord-Ost-Fisch Handelsgesellschaft mbH$$, $$Sven Petersen, Coordinator Foreign Markets$$, 'Germany', 'Cuxhaven', $$27478, Frahmredder 112a$$, '(04721) 8713', '(04721) 8714', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Formaggi Fortini s.r.l.$$, $$Elio Rossi, Sales Representative$$, 'Italy', 'Ravenna', $$48100, Viale Dante, 75$$, '(0544) 60323', '(0544) 60603', 'FORMAGGI.HTM');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Norske Meierier$$, $$Beate Vileid, Marketing Manager$$, 'Norway', 'Sandvika', $$1320, Hatlevegen 5$$, '(0)2-953010', '', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Bigfoot Breweries$$, $$Cheryl Saylor, Regional Account Rep.$$, 'USA', 'Bend', $$97101, OR, 3400 - 8th Avenue Suite 210$$, '(503) 555-9931', '', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Svensk Sjöföda AB$$, $$Michael Björn, Sales Representative$$, 'Sweden', 'Stockholm', $$S-123 45, Brovallavägen 231$$, '08-123 45 67', '', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Aux joyeux ecclésiastiques$$, $$Guylène Nodier, Sales Manager$$, 'France', 'Paris', $$75004, 203, Rue des Francs-Bourgeois$$, '(1) 03.83.00.68', '(1) 03.83.00.62', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$New England Seafood Cannery$$, $$Robb Merchant, Wholesale Account Agent$$, 'USA', 'Boston', $$02134, MA, Order Processing Dept. 2100 Paul Revere Blvd.$$, '(617) 555-3267', '(617) 555-3389', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Leka Trading$$, $$Chandra Leka, Owner$$, 'Singapore', 'Singapore', $$0512, 471 Serangoon Loop, Suite #402$$, '555-8787', '', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Lyngbysild$$, $$Niels Petersen, Sales Manager$$, 'Denmark', 'Lyngby', $$2800, Lyngbysild Fiskebakken 10$$, '43844108', '43844115', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Zaanse Snoepfabriek$$, $$Dirk Luchte, Accounting Manager$$, 'Netherlands', 'Zaandam', $$9999 ZZ, Verkoop Rijnweg 22$$, '(12345) 1212', '(12345) 1210', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Karkki Oy$$, $$Anne Heikkonen, Product Manager$$, 'Finland', 'Lappeenranta', $$53120, Valtakatu 12$$, '(953) 10956', '', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$G'day, Mate$$, $$Wendy Mackenzie, Sales Representative$$, 'Australia', 'Sydney', $$2042, NSW, 170 Prince Edward Parade Hunter's Hill$$, '(02) 555-5914', '(02) 555-4873', 'http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Ma Maison$$, $$Jean-Guy Lauzon, Marketing Manager$$, 'Canada', 'Montréal', $$H1J 1C3, Québec, 2960 Rue St. Laurent$$, '(514) 555-9022', '', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Pasta Buttini s.r.l.$$, $$Giovanni Giudici, Order Administrator$$, 'Italy', 'Salerno', $$84100, Via dei Gelsomini, 153$$, '(089) 6547665', '(089) 6547667', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Escargots Nouveaux$$, $$Marie Delamare, Sales Manager$$, 'France', 'Montceau', $$71300, 22, rue H. Voiron$$, '85.57.00.07', '', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Gai pâturage$$, $$Eliane Noz, Sales Representative$$, 'France', 'Annecy', $$74000, Bat. B 3, rue des Alpes$$, '38.76.98.06', '38.76.98.58', '');
INSERT INTO suppliers (company_name, contact, country, city, address, phone, fax, homepage) VALUES ($$Forêts d'érables$$, $$Chantal Goulet, Accounting Manager$$, 'Canada', 'Ste-Hyacinthe', $$J2S 7S8, Québec, 148 rue Chasseur$$, '(514) 555-2955', '(514) 555-2921', '');

ALTER TABLE products ADD COLUMN IF NOT EXISTS fk_suppliers int REFERENCES suppliers(id);

UPDATE products SET fk_suppliers = 1 WHERE product_name in ($$Chang$$, $$Aniseed Syrup$$);
UPDATE products SET fk_suppliers = 2 WHERE product_name in ($$Chef Anton's Cajun Seasoning$$, $$Chef Anton's Gumbo Mix$$, $$Louisiana Fiery Hot Pepper Sauce$$, $$Louisiana Hot Spiced Okra$$);
UPDATE products SET fk_suppliers = 3 WHERE product_name in ($$Grandma's Boysenberry Spread$$, $$Uncle Bob's Organic Dried Pears$$, $$Northwoods Cranberry Sauce$$);
UPDATE products SET fk_suppliers = 4 WHERE product_name in ($$Mishi Kobe Niku$$, $$Ikura$$, $$Longlife Tofu$$);
UPDATE products SET fk_suppliers = 5 WHERE product_name in ($$Queso Cabrales$$, $$Queso Manchego La Pastora$$);
UPDATE products SET fk_suppliers = 6 WHERE product_name in ($$Konbu$$, $$Tofu$$, $$Genen Shouyu$$);
UPDATE products SET fk_suppliers = 7 WHERE product_name in ($$Pavlova$$, $$Alice Mutton$$, $$Carnarvon Tigers$$, $$Vegie-spread$$, $$Outback Lager$$);
UPDATE products SET fk_suppliers = 8 WHERE product_name in ($$Chai$$, $$Teatime Chocolate Biscuits$$, $$Sir Rodney's Marmalade$$, $$Sir Rodney's Scones$$, $$Scottish Longbreads$$);
UPDATE products SET fk_suppliers = 9 WHERE product_name in ($$Gustaf's Knäckebröd$$, $$Tunnbröd$$);
UPDATE products SET fk_suppliers = 10 WHERE product_name in ($$Guaraná áFantástica$$);
UPDATE products SET fk_suppliers = 11 WHERE product_name in ($$NuNuCa Nuß-Nougat-Creme$$, $$Gumbär Gummibärchen$$, $$Schoggi Schokolade$$);
UPDATE products SET fk_suppliers = 12 WHERE product_name in ($$Rössle Sauerkraut$$, $$Thüringer Rostbratwurst$$, $$Wimmers gute Semmelknödel$$, $$Rhönbräu Klosterbier$$, $$Original Frankfurter grüne Soße$$);
UPDATE products SET fk_suppliers = 13 WHERE product_name in ($$Nord-Ost Matjeshering$$);
UPDATE products SET fk_suppliers = 14 WHERE product_name in ($$Gorgonzola Telino$$, $$Mascarpone Fabioli$$, $$Mozzarella di Giovanni$$);
UPDATE products SET fk_suppliers = 15 WHERE product_name in ($$Geitost$$, $$Gudbrandsdalsost$$, $$Flotemysost$$);
UPDATE products SET fk_suppliers = 16 WHERE product_name in ($$Sasquatch Ale$$, $$Steeleye Stout$$, $$Laughing Lumberjack Lager$$);
UPDATE products SET fk_suppliers = 17 WHERE product_name in ($$Inlagd Sill$$, $$Gravad lax$$, $$Röd Kaviar$$);
UPDATE products SET fk_suppliers = 18 WHERE product_name in ($$Côte de Blaye$$, $$Chartreuse verte$$);
UPDATE products SET fk_suppliers = 19 WHERE product_name in ($$Boston Crab Meat$$, $$Jack's New England Clam Chowder$$);
UPDATE products SET fk_suppliers = 20 WHERE product_name in ($$Singaporean Hokkien Fried Mee$$, $$Ipoh Coffee$$, $$Gula Malacca$$);
UPDATE products SET fk_suppliers = 21 WHERE product_name in ($$Rogede sild$$, $$Spegesild$$);
UPDATE products SET fk_suppliers = 22 WHERE product_name in ($$Zaanse koeken$$, $$Chocolade$$);
UPDATE products SET fk_suppliers = 23 WHERE product_name in ($$Maxilaku$$, $$Valkoinen suklaa$$, $$Lakkalikööri$$);
UPDATE products SET fk_suppliers = 24 WHERE product_name in ($$Manjimup Dried Apples$$, $$Filo Mix$$, $$Perth Pasties$$);
UPDATE products SET fk_suppliers = 25 WHERE product_name in ($$Tourtière$$, $$Pâté chinois$$);
UPDATE products SET fk_suppliers = 26 WHERE product_name in ($$Gnocchi di nonna Alice$$, $$Ravioli Angelo$$);
UPDATE products SET fk_suppliers = 27 WHERE product_name in ($$Escargots de Bourgogne$$);
UPDATE products SET fk_suppliers = 28 WHERE product_name in ($$Raclette Courdavault$$, $$Camembert Pierrot$$);
UPDATE products SET fk_suppliers = 29 WHERE product_name in ($$Sirop d'érable$$, $$Tarte au sucre$$);
