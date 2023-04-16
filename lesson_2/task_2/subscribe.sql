DROP TABLE IF EXISTS "subscribe";

CREATE TABLE "subscribe" (
  id SERIAL PRIMARY KEY,
  owner_id integer NULL,
  to_community_id integer NULL,
  to_user_id integer NULL
);

INSERT INTO subscribe (owner_id,to_community_id,to_user_id)
VALUES
  (5,69,68),
  (26,41,24),
  (27,59,26),
  (99,53,1),
  (16,22,84),
  (68,97,3),
  (98,26,3),
  (50,55,6),
  (71,94,2),
  (65,40,71);
INSERT INTO subscribe (owner_id,to_community_id,to_user_id)
VALUES
  (25,7,9),
  (75,18,17),
  (77,93,39),
  (73,62,98),
  (73,52,64),
  (62,20,35),
  (13,9,40),
  (86,62,63),
  (52,11,51),
  (8,80,31);
INSERT INTO subscribe (owner_id,to_community_id,to_user_id)
VALUES
  (92,8,35),
  (31,56,71),
  (93,84,26),
  (82,50,65),
  (91,31,55),
  (86,11,46),
  (90,77,7),
  (62,50,73),
  (19,21,35),
  (30,86,51);
INSERT INTO subscribe (owner_id,to_community_id,to_user_id)
VALUES
  (5,62,39),
  (82,7,76),
  (13,96,86),
  (16,59,45),
  (1,23,10),
  (2,89,2),
  (61,65,41),
  (75,22,27),
  (11,68,29),
  (7,98,31);
INSERT INTO subscribe (owner_id,to_community_id,to_user_id)
VALUES
  (45,18,60),
  (79,35,20),
  (39,11,29),
  (64,47,95),
  (30,44,97),
  (22,75,16),
  (90,68,76),
  (97,91,38),
  (87,27,91),
  (87,82,48);
INSERT INTO subscribe (owner_id,to_community_id,to_user_id)
VALUES
  (41,7,76),
  (47,28,38),
  (97,88,22),
  (78,48,5),
  (23,92,6),
  (91,34,90),
  (93,58,86),
  (67,28,68),
  (75,43,59),
  (9,68,40);
INSERT INTO subscribe (owner_id,to_community_id,to_user_id)
VALUES
  (89,62,4),
  (92,2,20),
  (29,38,3),
  (50,91,48),
  (76,36,12),
  (73,67,81),
  (82,29,61),
  (62,78,18),
  (94,98,81),
  (87,71,77);
INSERT INTO subscribe (owner_id,to_community_id,to_user_id)
VALUES
  (13,32,39),
  (58,33,95),
  (26,87,81),
  (38,72,26),
  (2,30,52),
  (82,39,97),
  (34,35,79),
  (7,47,37),
  (71,59,36),
  (54,6,42);
INSERT INTO subscribe (owner_id,to_community_id,to_user_id)
VALUES
  (21,93,83),
  (35,47,54),
  (3,1,8),
  (90,39,33),
  (99,5,65),
  (51,46,49),
  (44,77,32),
  (51,52,41),
  (68,23,26),
  (71,74,43);
INSERT INTO subscribe (owner_id,to_community_id,to_user_id)
VALUES
  (41,71,49),
  (33,54,54),
  (20,32,50),
  (19,15,18),
  (52,90,55),
  (26,62,85),
  (80,54,44),
  (62,60,69),
  (78,2,73),
  (27,20,58);
