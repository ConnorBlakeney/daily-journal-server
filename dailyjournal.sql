CREATE TABLE `Entries` (
	`id`  INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`date`  DATE NOT NULL,
	`concept`  TEXT NOT NULL,
	`entry`	 TEXT NOT NULL,
	`mood_id`  INTEGER NOT NULL,
    FOREIGN KEY(`mood_id`) REFERENCES`Moods`(`id`)
);

CREATE TABLE `Moods` (
    `id`  INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `label`  TEXT NOT NULL
);

CREATE TABLE `Tags` (
	`id`  INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`subject`  TEXT NOT NULL
);


CREATE TABLE `EntryTags` (
	`id`  INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`entry_id`  INTEGER NOT NULL,
	`tag_id`  INTEGER NOT NULL,
	FOREIGN KEY(`entry_id`) REFERENCES `Entries`(`id`),
	FOREIGN KEY(`tag_id`) REFERENCES `Tags`(`id`)
);

INSERT INTO `Entries` VALUES (null, '10/8/2020', "Python", "Started learning Python, can't wait for server side!", "4");
INSERT INTO `Entries` VALUES (null, '10/13/2020', "SQL", "Learning SQL to complement Python", "5");

INSERT INTO `Moods` VALUES (null, 'Clap Along With Pharrell');
INSERT INTO `Moods` VALUES (null, 'Okay');
INSERT INTO `Moods` VALUES (null, 'Unimpressed Mckayla Maroney');
INSERT INTO `Moods` VALUES (null, 'Crying Jordan');
INSERT INTO `Moods` VALUES (null, 'Alert');

INSERT INTO `Tags` VALUES (null, 'Python');
INSERT INTO `Tags` VALUES (null, 'SQL');

INSERT INTO `EntryTags` VALUES (null, 1, 1);
INSERT INTO `EntryTags` VALUES (null, 2, 2);

SELECT
    *
FROM `entries`;

