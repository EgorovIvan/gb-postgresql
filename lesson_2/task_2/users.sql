DROP TABLE IF EXISTS "users";

CREATE TABLE "users" (
  id SERIAL PRIMARY KEY,
  first_name varchar(255) default NULL,
  last_name varchar(255) default NULL,
  email varchar(255) default NULL,
  phone varchar(100) default NULL,
  main_photo_id integer NULL,
  created_at varchar(255)
);

INSERT INTO users (first_name,last_name,email,phone,main_photo_id,created_at)
VALUES
  ('Randall','Harrison','sagittis.duis@aol.couk','224-1243',4,'Jun 16, 2023'),
  ('Kimberly','English','fusce.mollis@outlook.com','1-682-540-1772',62,'Feb 9, 2023'),
  ('Ulla','Mcneil','nec.luctus.felis@hotmail.edu','207-9874',87,'Jun 16, 2023'),
  ('McKenzie','Chandler','aliquam.nec@google.org','831-2113',7,'Dec 31, 2023'),
  ('Stone','Mcbride','feugiat.sed@hotmail.couk','745-7685',70,'Jul 27, 2022'),
  ('Xanthus','Hill','lorem.tristique@aol.org','684-0580',33,'Sep 6, 2022'),
  ('Ginger','Bishop','mollis@google.net','231-0082',7,'Jan 30, 2024'),
  ('Curran','Hess','non@icloud.com','1-551-684-7825',7,'Apr 10, 2024'),
  ('Graiden','Callahan','tempus.risus@icloud.net','286-7927',62,'Feb 18, 2023'),
  ('Aaron','Cruz','sapien.cursus@outlook.com','244-2434',92,'Sep 5, 2023');
INSERT INTO users (first_name,last_name,email,phone,main_photo_id,created_at)
VALUES
  ('Hammett','Turner','proin.vel.arcu@icloud.edu','312-7072',14,'May 25, 2022'),
  ('Margaret','Travis','dolor.nulla.semper@yahoo.couk','1-751-508-7254',8,'Dec 12, 2022'),
  ('Ivan','Mcneil','curabitur@yahoo.net','254-3730',43,'Nov 27, 2023'),
  ('Kermit','Morrow','arcu.iaculis@yahoo.edu','468-3184',24,'May 10, 2023'),
  ('Carlos','Carson','tempus.lorem@icloud.edu','665-4123',39,'Nov 27, 2023'),
  ('Slade','Goodman','id.libero@hotmail.com','702-8815',67,'Dec 19, 2023'),
  ('Lani','Ortega','eleifend.cras.sed@icloud.edu','1-337-527-8781',1,'Nov 25, 2023'),
  ('Chaim','Fry','phasellus.vitae@google.edu','726-5147',88,'May 24, 2022'),
  ('Galena','Ford','hendrerit@outlook.com','213-9453',14,'Sep 10, 2023'),
  ('Colt','Shaw','libero.proin@google.ca','670-2786',37,'Feb 7, 2023');
INSERT INTO users (first_name,last_name,email,phone,main_photo_id,created_at)
VALUES
  ('Igor','Bray','ligula@hotmail.org','475-8467',22,'Jan 19, 2024'),
  ('Warren','Stuart','ipsum@icloud.com','1-825-226-1455',58,'Sep 19, 2022'),
  ('Hiroko','Holland','tempor.lorem@icloud.edu','437-8377',91,'Dec 31, 2023'),
  ('Gwendolyn','O''connor','enim.nunc.ut@yahoo.org','826-4396',99,'Jul 26, 2022'),
  ('Indira','Pate','purus.maecenas@aol.couk','433-7789',99,'Dec 20, 2023'),
  ('Macaulay','Contreras','nullam.feugiat@google.couk','969-7921',58,'Jan 11, 2023'),
  ('Jena','Harris','arcu.vel@icloud.org','420-0561',97,'Nov 12, 2022'),
  ('Lael','Copeland','quis.diam@outlook.org','1-344-856-8178',59,'May 5, 2023'),
  ('Steel','Hodges','sed.consequat@hotmail.com','1-775-575-1069',25,'Sep 2, 2023'),
  ('Germane','Beasley','metus.facilisis@outlook.edu','1-824-228-5398',62,'May 25, 2022');
INSERT INTO users (first_name,last_name,email,phone,main_photo_id,created_at)
VALUES
  ('Armando','Stanley','mauris.quis.turpis@protonmail.couk','637-5637',90,'May 30, 2022'),
  ('Summer','Nolan','a.neque@aol.net','234-0605',69,'Jul 1, 2023'),
  ('Lyle','Bray','venenatis.lacus.etiam@google.net','1-364-744-2338',97,'Apr 30, 2022'),
  ('Tucker','Shaw','proin@google.org','1-629-727-2766',46,'Jun 19, 2022'),
  ('Idona','Hanson','in@icloud.ca','1-327-572-8285',82,'Jul 26, 2022'),
  ('Lara','Hammond','nisl@yahoo.com','1-509-462-0486',63,'Mar 1, 2023'),
  ('Kaseem','Eaton','luctus@google.ca','1-841-322-5135',28,'Jun 7, 2022'),
  ('Gil','Miles','ipsum.suspendisse@icloud.org','697-4118',7,'Feb 27, 2023'),
  ('Whitney','Chandler','dis.parturient@yahoo.com','435-2817',4,'Feb 19, 2023'),
  ('Clinton','Ramsey','neque.nullam@outlook.couk','1-734-854-2321',36,'Aug 25, 2022');
INSERT INTO users (first_name,last_name,email,phone,main_photo_id,created_at)
VALUES
  ('Raven','Hancock','tristique.senectus@yahoo.net','428-3420',20,'Mar 15, 2024'),
  ('Kessie','Griffith','erat.vivamus@hotmail.couk','1-610-715-1042',88,'Jan 22, 2023'),
  ('Vera','Burke','id.magna.et@protonmail.org','1-368-794-5646',22,'Feb 12, 2024'),
  ('Fritz','Carey','donec.vitae.erat@icloud.net','600-5277',56,'Dec 21, 2022'),
  ('Deacon','Roth','laoreet.posuere@outlook.com','1-516-344-2402',84,'Feb 1, 2023'),
  ('Irene','Hickman','lectus.convallis@outlook.edu','1-516-721-3232',48,'Dec 11, 2023'),
  ('Summer','Ingram','ante.bibendum@yahoo.net','721-2645',68,'Apr 3, 2024'),
  ('Xantha','Allen','in.magna@yahoo.couk','1-922-931-4436',34,'May 6, 2023'),
  ('Chiquita','Cantrell','purus.ac@outlook.com','568-4535',83,'Jul 6, 2022'),
  ('Lareina','Ashley','donec.sollicitudin@protonmail.org','265-2237',61,'Jan 27, 2024');
INSERT INTO users (first_name,last_name,email,phone,main_photo_id,created_at)
VALUES
  ('Maite','Rivera','curabitur.vel@outlook.com','564-7811',4,'Jul 15, 2022'),
  ('Alana','Hunter','dolor.nonummy@google.edu','1-681-714-6484',14,'Feb 13, 2024'),
  ('Colette','Newton','morbi.tristique@aol.com','1-378-808-5265',53,'Dec 26, 2023'),
  ('Leila','Richmond','integer.sem@aol.ca','1-481-480-7133',37,'May 28, 2022'),
  ('Brent','Mckenzie','mauris.morbi@google.org','1-863-507-4395',34,'Jun 9, 2022'),
  ('Elmo','Gamble','sit.amet@google.edu','958-6782',88,'Jul 28, 2022'),
  ('Kellie','Hogan','donec.egestas.aliquam@google.net','871-7625',62,'Dec 6, 2022'),
  ('Kylie','Hill','convallis.dolor@icloud.org','535-8260',99,'Aug 22, 2022'),
  ('Karen','Burton','arcu@hotmail.couk','1-281-447-3157',18,'Mar 22, 2023'),
  ('Cairo','Ball','dictum.placerat@outlook.couk','1-614-220-9311',63,'Jul 2, 2022');
INSERT INTO users (first_name,last_name,email,phone,main_photo_id,created_at)
VALUES
  ('Kirk','Nichols','sem.eget@yahoo.ca','976-2298',9,'Jun 8, 2022'),
  ('Xandra','Anthony','in@aol.edu','435-9861',47,'Apr 23, 2022'),
  ('Giacomo','Farley','sed.nulla.ante@icloud.ca','1-615-211-8616',8,'Oct 8, 2022'),
  ('Kellie','Lang','suspendisse@protonmail.couk','1-421-717-0817',70,'Aug 27, 2023'),
  ('Byron','Hendricks','vestibulum.accumsan.neque@google.couk','665-3492',66,'Nov 7, 2023'),
  ('Luke','Goodman','vestibulum@google.net','1-927-902-2075',49,'Jan 16, 2024'),
  ('Aaron','Puckett','at.pretium@outlook.ca','762-8726',16,'Dec 5, 2023'),
  ('Portia','Knapp','sed.diam@aol.couk','1-256-993-8861',50,'Jan 19, 2024'),
  ('Ulla','Alford','cursus.luctus@hotmail.net','605-7541',52,'Jun 2, 2023'),
  ('Cruz','Strickland','tincidunt.dui.augue@hotmail.org','1-433-235-6943',52,'Mar 20, 2024');
INSERT INTO users (first_name,last_name,email,phone,main_photo_id,created_at)
VALUES
  ('Kyle','Stevenson','in.faucibus@yahoo.edu','1-534-491-5884',37,'Mar 5, 2024'),
  ('Jenette','Knight','eu@hotmail.edu','687-4191',67,'Dec 2, 2023'),
  ('Arden','Mcgee','cras.vulputate@hotmail.ca','425-3161',83,'Mar 6, 2023'),
  ('Yasir','Norton','phasellus.fermentum.convallis@outlook.couk','214-2359',42,'Mar 18, 2023'),
  ('Alma','Pittman','lorem.luctus@aol.com','1-481-835-2212',97,'Nov 5, 2022'),
  ('Tashya','Mccarty','turpis.aliquam@protonmail.net','198-2117',98,'Mar 31, 2024'),
  ('Lars','Hale','sit.amet@protonmail.couk','233-8502',48,'Mar 27, 2023'),
  ('Paloma','Briggs','nulla@aol.couk','1-822-906-8046',23,'Dec 23, 2023'),
  ('Karly','Mills','pede.cum.sociis@outlook.com','710-6588',8,'Dec 8, 2023'),
  ('Ulysses','Hinton','malesuada.id.erat@hotmail.org','1-352-245-0603',74,'May 17, 2022');
INSERT INTO users (first_name,last_name,email,phone,main_photo_id,created_at)
VALUES
  ('Cadman','Dotson','tortor.dictum.eu@protonmail.couk','1-927-412-7563',97,'Oct 8, 2023'),
  ('Jessica','Gibbs','sit@aol.couk','1-713-744-4821',64,'Jul 23, 2023'),
  ('Noah','Barlow','eu@outlook.couk','1-411-544-9568',85,'Aug 18, 2022'),
  ('Shad','Wolf','feugiat.metus@aol.ca','1-397-883-0861',21,'Jul 27, 2023'),
  ('Evan','Garza','libero@hotmail.couk','825-7114',28,'Jun 16, 2022'),
  ('Seth','Hubbard','urna.vivamus@google.ca','1-418-317-4113',44,'Apr 8, 2023'),
  ('Yvonne','Shannon','semper.dui@google.net','350-1577',58,'Apr 13, 2023'),
  ('Malachi','Hammond','eleifend.nunc@google.ca','517-7273',38,'Nov 20, 2022'),
  ('Alyssa','Mckee','aliquam.eu@outlook.edu','1-773-320-3350',21,'Jan 6, 2024'),
  ('Sean','Taylor','malesuada@hotmail.com','163-4334',43,'May 4, 2022');
INSERT INTO users (first_name,last_name,email,phone,main_photo_id,created_at)
VALUES
  ('Robert','Holden','nec@outlook.com','1-871-361-7719',77,'Sep 6, 2022'),
  ('Avye','Suarez','dignissim.lacus@icloud.org','238-3883',29,'Oct 11, 2023'),
  ('Oren','Sandoval','pellentesque.ut@google.org','651-1837',15,'Oct 29, 2022'),
  ('Holly','Mcdonald','vestibulum.nec@aol.edu','794-0575',26,'Aug 5, 2022'),
  ('Fitzgerald','Maddox','morbi@google.ca','1-429-755-4829',6,'Mar 23, 2024'),
  ('Wayne','Crawford','cras@yahoo.edu','476-6142',48,'Feb 7, 2023'),
  ('Oprah','Dillard','pede.suspendisse.dui@hotmail.couk','1-791-705-9163',55,'Nov 22, 2023'),
  ('Maxwell','Merrill','dui.cras@aol.ca','1-837-188-0185',22,'Mar 10, 2023'),
  ('Marshall','Brock','blandit@google.com','578-6127',67,'Apr 24, 2023'),
  ('Patricia','Castaneda','donec.porttitor@icloud.com','1-466-764-4861',53,'Jun 11, 2023');
