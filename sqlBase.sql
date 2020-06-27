SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- 创建一张包含id（主键），studentId,subjectId和score的表
-- 定义了两个外键，分别指向student表中的id和subject表中的id
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_score_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  CONSTRAINT `FK_score_subject` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- 初始化数据，用于更新入score表
INSERT INTO `score` VALUES (1, 1, 1001, 80);
INSERT INTO `score` VALUES (2, 2, 1002, 60);
INSERT INTO `score` VALUES (3, 1, 1001, 70);
INSERT INTO `score` VALUES (4, 2, 1002, 61);

-- 创建一张名为student的表，其中包含的字段有：id（主键），name，age和sex
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'name',
  `age` int(11) NOT NULL,
  `sex` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB CHARACTER SET = utf8mb4;

-- 初始化数据，用于更新入student表
INSERT INTO `student` VALUES (1, 'zhangsan', 18, 'male');
INSERT INTO `student` VALUES (2, 'lisi', 20, 'female');

-- 创建一张名为subject的表，其中包含的字段有：id（主键），subject，teacher和description
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `teacher` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4;

-- 初始化数据，用于更新入subject表
INSERT INTO `subject` VALUES (1001, 'Chinese', 'Mr. Wang', 'the exam is easy');
INSERT INTO `subject` VALUES (1002, 'math', 'Miss Liu', 'the exam is difficult');

SET FOREIGN_KEY_CHECKS = 1;