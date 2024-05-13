-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'user'
-- 
-- ---

DROP TABLE IF EXISTS `user`;
		
CREATE TABLE `user` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` INTEGER NULL DEFAULT NULL,
  `email` INTEGER NULL DEFAULT NULL,
  `password` INTEGER NULL DEFAULT NULL,
  `nacionality` INTEGER NULL DEFAULT NULL,
  `time_zone` INTEGER NULL DEFAULT NULL,
  `age` INTEGER NULL DEFAULT NULL,
  `gender` INTEGER NULL DEFAULT NULL,
  `status` INTEGER NULL DEFAULT NULL,
  `curiosity` INTEGER NULL DEFAULT NULL,
  `hapiness_meter` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'files'
-- 
-- ---

DROP TABLE IF EXISTS `files`;
		
CREATE TABLE `files` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `file` INTEGER NULL DEFAULT NULL,
  `type` INTEGER NULL DEFAULT NULL,
  `size_file` INTEGER NULL DEFAULT NULL,
  `datetime` INTEGER NULL DEFAULT NULL,
  `description` INTEGER NULL DEFAULT NULL,
  `id_user` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'comments'
-- 
-- ---

DROP TABLE IF EXISTS `comments`;
		
CREATE TABLE `comments` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `text` INTEGER NULL DEFAULT NULL,
  `datetime` INTEGER NULL DEFAULT NULL,
  `id_user` INTEGER NULL DEFAULT NULL,
  `id_feedback_receiver` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'decision_making'
-- 
-- ---

DROP TABLE IF EXISTS `decision_making`;
		
CREATE TABLE `decision_making` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id user` INTEGER NULL DEFAULT NULL,
  `id_feedback_receiver` INTEGER NULL DEFAULT NULL,
  `id_decision_making` INTEGER NULL DEFAULT NULL,
  `id_pe_dm` INTEGER NULL DEFAULT NULL,
  `id_final_dm` INTEGER NULL DEFAULT NULL
);

-- ---
-- Table 'pre_game_dm'
-- 
-- ---

DROP TABLE IF EXISTS `pre_game_dm`;
		
CREATE TABLE `pre_game_dm` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `question` INTEGER NULL DEFAULT NULL,
  `option` INTEGER NULL DEFAULT NULL,
  `answer` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'peer_evalution_dm'
-- 
-- ---

DROP TABLE IF EXISTS `peer_evalution_dm`;
		
CREATE TABLE `peer_evalution_dm` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `question` INTEGER NULL DEFAULT NULL,
  `option` INTEGER NULL DEFAULT NULL,
  `answer` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'end_game_dm'
-- 
-- ---

DROP TABLE IF EXISTS `end_game_dm`;
		
CREATE TABLE `end_game_dm` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `question` INTEGER NULL DEFAULT NULL,
  `option` INTEGER NULL DEFAULT NULL,
  `answer` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `files` ADD FOREIGN KEY (id_user) REFERENCES `user` (`id`);
ALTER TABLE `comments` ADD FOREIGN KEY (id_user) REFERENCES `user` (`id`);
ALTER TABLE `comments` ADD FOREIGN KEY (id_feedback_receiver) REFERENCES `user` (`id`);
ALTER TABLE `decision_making` ADD FOREIGN KEY (id user) REFERENCES `user` (`id`);
ALTER TABLE `decision_making` ADD FOREIGN KEY (id_feedback_receiver) REFERENCES `user` (`id`);
ALTER TABLE `decision_making` ADD FOREIGN KEY (id_decision_making) REFERENCES `pre_game_dm` (`id`);
ALTER TABLE `decision_making` ADD FOREIGN KEY (id_pe_dm) REFERENCES `peer_evalution_dm` (`id`);
ALTER TABLE `decision_making` ADD FOREIGN KEY (id_final_dm) REFERENCES `end_game_dm` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `user` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `files` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `comments` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `decision_making` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `pre_game_dm` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `peer_evalution_dm` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `end_game_dm` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `user` (`id`,`name`,`email`,`password`,`nacionality`,`time_zone`,`age`,`gender`,`status`,`curiosity`,`hapiness_meter`) VALUES
-- ('','','','','','','','','','','');
-- INSERT INTO `files` (`id`,`file`,`type`,`size_file`,`datetime`,`description`,`id_user`) VALUES
-- ('','','','','','','');
-- INSERT INTO `comments` (`id`,`text`,`datetime`,`id_user`,`id_feedback_receiver`) VALUES
-- ('','','','','');
-- INSERT INTO `decision_making` (`id`,`id user`,`id_feedback_receiver`,`id_decision_making`,`id_pe_dm`,`id_final_dm`) VALUES
-- ('','','','','','');
-- INSERT INTO `pre_game_dm` (`id`,`question`,`option`,`answer`) VALUES
-- ('','','','');
-- INSERT INTO `peer_evalution_dm` (`id`,`question`,`option`,`answer`) VALUES
-- ('','','','');
-- INSERT INTO `end_game_dm` (`id`,`question`,`option`,`answer`) VALUES
-- ('','','','');
