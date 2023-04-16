DROP TABLE IF EXISTS "video";

CREATE TABLE "video" (
  id SERIAL PRIMARY KEY,
  url varchar(255),
  owner_id integer NULL,
  description TEXT default NULL,
  uploaded_at varchar(255),
  size integer NULL
);

INSERT INTO video (url,owner_id,description,uploaded_at,size)
VALUES
  ('http://guardian.co.uk/sub',26,'at,','Oct 5, 2022',145),
  ('https://twitter.com/one',99,'orci. Phasellus dapibus quam','Sep 17, 2022',380),
  ('https://youtube.com/settings',35,'Cras eget','Jul 27, 2022',911),
  ('http://bbc.co.uk/group/9',65,'ornare, facilisis eget, ipsum.','Aug 5, 2023',822),
  ('https://google.com/sub',40,'Lorem ipsum dolor sit amet,','Dec 11, 2022',746),
  ('https://zoom.us/group/9',4,'et','May 11, 2022',958),
  ('https://zoom.us/group/9',78,'Nunc mauris. Morbi non sapien','Dec 8, 2022',597),
  ('https://youtube.com/settings',33,'dolor egestas rhoncus.','Sep 7, 2023',549),
  ('https://cnn.com/one',87,'dui, nec','Feb 6, 2023',111),
  ('https://ebay.com/user/110',99,'ipsum primis in faucibus','Nov 28, 2022',359);
INSERT INTO video (url,owner_id,description,uploaded_at,size)
VALUES
  ('https://instagram.com/site',71,'et, eros.','Aug 8, 2022',498),
  ('https://yahoo.com/en-us',72,'tortor, dictum','Apr 13, 2024',763),
  ('http://cnn.com/en-us',97,'eu metus. In','Jun 13, 2022',992),
  ('https://facebook.com/one',28,'a sollicitudin orci','Feb 16, 2024',825),
  ('https://nytimes.com/fr',68,'lectus quis','Nov 28, 2022',990),
  ('https://instagram.com/en-ca',7,'suscipit, est ac','Feb 14, 2024',873),
  ('https://naver.com/sub',44,'ac nulla. In tincidunt congue','Mar 7, 2024',839),
  ('https://wikipedia.org/settings',24,'a, scelerisque sed, sapien.','Nov 30, 2022',474),
  ('http://reddit.com/settings',31,'interdum. Nunc sollicitudin commodo','Feb 21, 2023',495),
  ('http://naver.com/en-us',3,'sapien. Aenean massa. Integer vitae','Feb 18, 2024',539);
INSERT INTO video (url,owner_id,description,uploaded_at,size)
VALUES
  ('https://google.com/en-us',36,'et risus. Quisque libero','Dec 18, 2023',187),
  ('https://bbc.co.uk/fr',41,'ante, iaculis','Jul 1, 2022',974),
  ('https://pinterest.com/settings',84,'tellus id nunc','Jan 7, 2024',354),
  ('http://bbc.co.uk/en-ca',63,'magna. Nam ligula elit, pretium','Feb 13, 2023',347),
  ('http://baidu.com/group/9',54,'ornare, elit elit','Jul 7, 2023',352),
  ('http://ebay.com/settings',40,'ornare, libero at','May 14, 2023',222),
  ('https://twitter.com/sub/cars',99,'Nunc commodo auctor','Jul 4, 2022',215),
  ('http://walmart.com/group/9',11,'vitae, posuere at,','Nov 21, 2023',996),
  ('http://reddit.com/sub',7,'elit. Aliquam auctor, velit','Oct 19, 2022',634),
  ('http://netflix.com/settings',5,'vel turpis. Aliquam','Mar 12, 2023',162);
INSERT INTO video (url,owner_id,description,uploaded_at,size)
VALUES
  ('https://yahoo.com/settings',69,'vel arcu. Curabitur ut odio','Apr 2, 2023',315),
  ('https://reddit.com/en-ca',50,'vitae sodales nisi','Feb 21, 2023',419),
  ('https://pinterest.com/one',96,'ornare lectus justo','Aug 29, 2022',721),
  ('http://google.com/user/110',51,'velit egestas lacinia.','Feb 3, 2023',843),
  ('https://walmart.com/en-us',90,'sit amet metus.','Apr 17, 2022',630),
  ('https://yahoo.com/group/9',50,'bibendum sed, est. Nunc','Apr 16, 2023',744),
  ('https://naver.com/one',2,'Proin non','Feb 18, 2024',258),
  ('http://facebook.com/sub',32,'Vivamus','Sep 24, 2022',344),
  ('https://twitter.com/en-us',8,'viverra. Maecenas','Apr 4, 2023',573),
  ('https://ebay.com/one',64,'hendrerit a, arcu.','Jun 23, 2023',605);
INSERT INTO video (url,owner_id,description,uploaded_at,size)
VALUES
  ('http://pinterest.com/fr',82,'vitae,','Jan 17, 2023',227),
  ('https://nytimes.com/group/9',36,'risus. Morbi metus. Vivamus','May 11, 2022',498),
  ('https://ebay.com/sub',59,'risus. Donec egestas. Aliquam','Jul 19, 2023',913),
  ('http://instagram.com/group/9',48,'ligula.','Dec 19, 2022',970),
  ('https://netflix.com/user/110',65,'malesuada malesuada.','Apr 28, 2023',710),
  ('http://bbc.co.uk/group/9',77,'mi enim, condimentum eget,','Apr 15, 2023',401),
  ('https://pinterest.com/en-us',14,'erat. Etiam','Jun 16, 2023',637),
  ('https://bbc.co.uk/sub',18,'cursus et,','Feb 20, 2024',683),
  ('http://netflix.com/sub/cars',19,'Aliquam auctor,','Aug 25, 2022',492),
  ('https://bbc.co.uk/user/110',77,'urna. Vivamus','Apr 28, 2023',699);
INSERT INTO video (url,owner_id,description,uploaded_at,size)
VALUES
  ('http://wikipedia.org/sub/cars',93,'semper rutrum.','Oct 23, 2023',421),
  ('https://naver.com/fr',20,'leo. Cras vehicula aliquet libero.','Jan 8, 2024',738),
  ('http://twitter.com/user/110',55,'Nunc laoreet lectus quis','Apr 15, 2022',474),
  ('https://whatsapp.com/user/110',56,'rhoncus. Donec est.','May 23, 2022',529),
  ('https://reddit.com/user/110',55,'eu tempor erat neque non','Sep 16, 2022',448),
  ('https://whatsapp.com/group/9',53,'ut, sem. Nulla interdum.','Aug 4, 2022',640),
  ('https://yahoo.com/one',88,'Maecenas libero est, congue','Aug 30, 2023',158),
  ('http://cnn.com/one',4,'eleifend egestas. Sed pharetra,','Feb 3, 2024',622),
  ('http://cnn.com/user/110',57,'eu dolor egestas rhoncus. Proin','Nov 11, 2023',319),
  ('http://zoom.us/group/9',7,'eu, eleifend','Nov 9, 2022',244);
INSERT INTO video (url,owner_id,description,uploaded_at,size)
VALUES
  ('https://bbc.co.uk/en-us',73,'dictum cursus. Nunc mauris elit,','May 24, 2022',135),
  ('https://zoom.us/fr',41,'velit justo nec','Jun 22, 2022',241),
  ('http://guardian.co.uk/en-ca',66,'id magna et','Jul 15, 2023',880),
  ('https://reddit.com/sub',44,'accumsan interdum','Jul 23, 2023',715),
  ('http://guardian.co.uk/en-ca',87,'rutrum magna. Cras','Jan 15, 2023',489),
  ('http://pinterest.com/group/9',8,'sapien, cursus in,','Dec 13, 2023',744),
  ('http://reddit.com/sub',32,'magna. Suspendisse tristique neque','Oct 18, 2022',152),
  ('https://zoom.us/sub',82,'sociis natoque','Oct 12, 2023',704),
  ('https://guardian.co.uk/en-us',9,'vel, venenatis','Aug 23, 2023',785),
  ('http://walmart.com/en-ca',23,'Sed malesuada augue ut','Mar 19, 2023',647);
INSERT INTO video (url,owner_id,description,uploaded_at,size)
VALUES
  ('http://walmart.com/fr',56,'scelerisque neque. Nullam','Apr 9, 2023',120),
  ('http://facebook.com/sub/cars',77,'in faucibus','Jul 20, 2022',873),
  ('https://ebay.com/fr',22,'fames ac','Oct 20, 2022',607),
  ('https://wikipedia.org/user/110',67,'a tortor. Nunc','Dec 22, 2023',106),
  ('https://reddit.com/en-ca',79,'arcu et','Oct 30, 2022',292),
  ('https://baidu.com/settings',18,'amet lorem','Oct 4, 2022',701),
  ('http://bbc.co.uk/sub',17,'enim. Sed nulla ante,','Nov 20, 2022',104),
  ('http://reddit.com/sub',44,'nascetur ridiculus mus.','May 15, 2023',892),
  ('http://nytimes.com/user/110',37,'nec ligula consectetuer','Oct 1, 2022',564),
  ('http://baidu.com/sub/cars',64,'Maecenas iaculis aliquet','Nov 3, 2022',571);
INSERT INTO video (url,owner_id,description,uploaded_at,size)
VALUES
  ('http://google.com/fr',14,'diam lorem,','Aug 30, 2023',878),
  ('https://walmart.com/user/110',90,'in sodales','Jan 19, 2024',835),
  ('http://bbc.co.uk/en-ca',92,'venenatis lacus. Etiam bibendum','Jun 30, 2022',405),
  ('https://bbc.co.uk/fr',76,'euismod mauris eu','Apr 2, 2023',338),
  ('http://instagram.com/sub',26,'est. Nunc laoreet lectus','Feb 16, 2024',531),
  ('http://netflix.com/group/9',61,'Suspendisse dui. Fusce diam','Sep 15, 2022',671),
  ('http://facebook.com/sub',98,'erat semper rutrum. Fusce','Oct 28, 2022',415),
  ('http://facebook.com/sub/cars',97,'non, bibendum sed,','Jun 13, 2022',608),
  ('http://naver.com/settings',20,'lorem,','Mar 5, 2023',569),
  ('https://reddit.com/en-us',7,'tortor. Nunc','Aug 9, 2023',262);
INSERT INTO video (url,owner_id,description,uploaded_at,size)
VALUES
  ('https://instagram.com/en-ca',40,'nisl. Quisque fringilla','May 23, 2022',487),
  ('https://wikipedia.org/en-us',41,'ut,','May 21, 2022',876),
  ('https://yahoo.com/group/9',41,'purus, in','Aug 14, 2023',650),
  ('http://pinterest.com/one',8,'Aenean sed pede nec ante','Sep 5, 2023',941),
  ('https://netflix.com/group/9',4,'Phasellus vitae mauris','Apr 14, 2024',457),
  ('https://nytimes.com/en-ca',14,'nisl arcu iaculis','Jun 15, 2023',380),
  ('https://wikipedia.org/sub/cars',70,'amet, risus.','Apr 1, 2023',158),
  ('https://cnn.com/en-us',56,'ut odio','Apr 22, 2022',826),
  ('https://ebay.com/fr',64,'hendrerit consectetuer, cursus et, magna.','Jun 8, 2023',459),
  ('http://yahoo.com/en-ca',71,'Aliquam ultrices iaculis','Nov 11, 2023',308);
