# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.12)
# Database: courses
# Generation Time: 2016-06-17 00:41:20 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table classes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `classes`;

CREATE TABLE `classes` (
  `id` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(1000) NOT NULL DEFAULT '',
  `enrollment_id` varchar(36) NOT NULL DEFAULT '',
  `term` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `professor_id` varchar(36) NOT NULL DEFAULT '',
  `grade` varchar(11) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `classes_professors_id_fk` (`professor_id`),
  KEY `classes_enrollment_id_fk` (`enrollment_id`),
  CONSTRAINT `classes_enrollment_id_fk` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollment` (`id`),
  CONSTRAINT `classes_professors_id_fk` FOREIGN KEY (`professor_id`) REFERENCES `professors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;

INSERT INTO `classes` (`id`, `name`, `description`, `enrollment_id`, `term`, `year`, `professor_id`, `grade`, `created_at`, `updated_at`)
VALUES
	('CISC 131','Intro-Programming&Prob Solving','This course is designed for students with majors in the Department of Computer and Information Sciences and focuses on logical thinking, the design and implementation of algorithms in a procedural language, testing, correctness, and the use of common programming structures such as arrays. In addition, basic machine concepts are covered including hardware organization and representation of information in the machine. The typical student will be adept at using the computer but will have no prior programming experience. Engineering and science majors should take CISC 130. Please see your academic advisor to ensure you select the appropriate class. Lab included. NOTE: Students who receive credit for CISC 131 may not receive credit for CISC 130','15867696-0b05-11e6-bbb5-e920e415be78','Fall',2011,'0d492c82-0b0d-11e6-bbb5-e920e415be78','A','2016-04-25 13:23:39','2016-04-25 13:55:42'),
	('CISC 210','Information Security','An introductory course in computer security. Topics include operating system security, cryptography, user authentication, application security, secure programming, web security and privacy issues, and ethical issues in the field of computer security. Emphasis is on understanding the technical aspects of how adversaries exploit systems and the techniques for defending against these attacks. Prerequisites: 1) MATH 128 or ENGR 230 or STAT 220(IDTH 220) (may be taken concurrently), and 2) a minimum grade of C- in CISC 130 or 131','15867696-0b05-11e6-bbb5-e920e415be78','Spring',2013,'abe820c8-0b0d-11e6-bbb5-e920e415be78','A','2016-04-25 13:44:24','2016-04-25 14:10:10'),
	('CISC 230','Object Oriented Design & Prog','(Formerly QMCS 281) Programming and problem solving using an object-oriented approach. Builds on the procedural language foundation developed in CISC 130 or 131. Topics include: how procedural design differs from object-oriented design, algorithms, modeling, design requirements and representation, Uniform Modeling Language specification, implementation of object-oriented models, testing, and verification, and elementary design patterns. Lab included Prerequisites: A minimum grade of C- in CISC 130 or 131\n\n','15867696-0b05-11e6-bbb5-e920e415be78','Spring',2012,'0d492c82-0b0d-11e6-bbb5-e920e415be78','A','2016-04-25 13:23:39','2016-04-25 14:10:03'),
	('CISC 231','Data Structures-Object Design','(Formerly QMCS 350) Presents the fundamental suite of data structures and the algorithms used to implement them. Topics include: abstract data types, algorithm development and representation, searching, sorting, stacks, queues, lists, trees, measuring algorithm complexity, object-oriented design and implementation of moderately large and complex systems. Course assumes the student has proficiency in object-oriented specification, design, and implementation. Prerequisites: A minimum grade of C- in CISC 230, MATH 128','15867696-0b05-11e6-bbb5-e920e415be78','Fall',2012,'2d8e6cf2-0b15-11e6-bbb5-e920e415be78','A','2016-04-25 13:42:31','2016-04-25 14:10:11'),
	('CISC 243','Individual Study Unity Game Development','','15867696-0b05-11e6-bbb5-e920e415be78','Summer',2014,'0d492c82-0b0d-11e6-bbb5-e920e415be78','A','2016-04-25 13:51:23','2016-04-25 13:51:23'),
	('CISC 269','Research Bitmap Compression Querying','','15867696-0b05-11e6-bbb5-e920e415be78','Fall',2014,'d929405e-0b0c-11e6-bbb5-e920e415be78','A','2016-04-25 13:51:23','2016-04-25 14:10:13'),
	('CISC 310','Operating Systems','(Formerly QMCS 360) The basic principles of designing and building operating systems. Sequential versus concurrent processes, synchronization and mutual exclusion, memory management techniques, CPU scheduling, input/output device handling, file systems design, security and protection. Prerequisite: A minimum grade of C- in CISC 230','15867696-0b05-11e6-bbb5-e920e415be78','Fall',2014,'2ac4da72-0b0d-11e6-bbb5-e920e415be78','A','2016-04-25 13:51:23','2016-04-25 14:10:04'),
	('CISC 340','Computer Architecture','(Formerly QMCS 300 and 340) Structure and organization of computer systems and components, including the design of central processors, memory, and input/output systems. Instruction sets and basic machine language programming. Prerequisites: CISC 231','15867696-0b05-11e6-bbb5-e920e415be78','Spring',2015,'d929405e-0b0c-11e6-bbb5-e920e415be78','A','2016-04-25 13:53:10','2016-04-25 13:56:53'),
	('CISC 342','Computer App-Experimental Sci','(Formerly QMCS 342) Introduction to the use of computers in the collection and analysis of scientific information. The course is designed to meet the needs of both natural science majors with an interest in scientific computing and computer science majors with an interest in laboratory science. Emphasis is placed on application of concepts and techniques in addition to LabVIEW programming. Topics include laboratory device interfacing, analog-signal acquisition and processing, frequency transformations, data analysis, image processing, and math modeling and simulation. Prerequisites: CISC 130 or 131; MATH 109 or 111 or 113; one course in a laboratory science','15867696-0b05-11e6-bbb5-e920e415be78','Fall',2012,'8d64b63e-0b0d-11e6-bbb5-e920e415be78','A','2016-04-25 13:42:31','2016-04-25 14:10:04'),
	('CISC 370','Computer Networking','(Formerly QMCS 370) An introduction to computer networking. covering theory and implementation of basic networking concepts including communication protocols, local area networks, http protocol and client-server and peer-to-peer computing. Prerequisites: A minimum grade of C- in CISC 230','15867696-0b05-11e6-bbb5-e920e415be78','Spring',2015,'0d492c82-0b0d-11e6-bbb5-e920e415be78','A','2016-04-25 13:53:10','2016-04-25 14:10:16'),
	('CISC 393','Individual Study Advanced Computer Topics','','15867696-0b05-11e6-bbb5-e920e415be78','Summer',2015,'d929405e-0b0c-11e6-bbb5-e920e415be78','S','2016-04-25 13:54:29','2016-04-25 13:54:29'),
	('CISC 440','Artfcl Intelligence & Robotics','(Formerly QMCS 380) Theory and implementation techniques using computers to solve problems, play games, prove theorems, recognize patterns, create artwork and musical scores, translate languages, read handwriting, speak and perform mechanical assembly. Emphasis placed on implementation of these techniques in robots. Prerequisites: CISC 230 and STAT 220 (IDTH 220)','15867696-0b05-11e6-bbb5-e920e415be78','Spring',2015,'2ac4da72-0b0d-11e6-bbb5-e920e415be78','A','2016-04-25 13:53:10','2016-04-25 14:10:05'),
	('CISC 450','Database Design I','(Formerly QMCS 450) Introduction to database management systems design philosophy. Design considerations for satisfying both availability and integrity requirements. Data models used to structure the logical view of the database. Schema, subschemas, and database administration. Emphasis on general purpose relational database management systems using SQL. Prerequisite: a minimum grade of C- in CISC 230','15867696-0b05-11e6-bbb5-e920e415be78','Fall',2013,'d929405e-0b0c-11e6-bbb5-e920e415be78','A','2016-04-25 13:47:22','2016-04-25 14:10:18'),
	('CISC 476','Experiential Learning Object-Oriented Implementation','','15867696-0b05-11e6-bbb5-e920e415be78','Summer',2013,'0d492c82-0b0d-11e6-bbb5-e920e415be78','S','2016-04-25 13:47:22','2016-04-25 13:47:22'),
	('CISC 490','Topics: Algorithms','','15867696-0b05-11e6-bbb5-e920e415be78','Spring',2014,'abe820c8-0b0d-11e6-bbb5-e920e415be78','A','2016-04-25 13:49:17','2016-04-25 13:49:17'),
	('MATH 113','Calculus I','An introductory course in calculus: limits; derivatives and integrals of algebraic, exponential, logarithmic and trigonometric functions of one real variable; applications of the derivative in engineering and the natural sciences. Offered Fall, Spring and Summer. Prerequisite: a grade of C- or above in MATH 105 or placement at MATH 113 or above. Four years of high school mathematics, including college algebra and trigonometry, also are recommended as background for this course. NOTE: Students who receive credit for MATH 113 may not receive credit for MATH 108, 109, or 111.','15867696-0b05-11e6-bbb5-e920e415be78','Fall',2010,'dfde04e2-0b0d-11e6-bbb5-e920e415be78','A','2016-04-25 13:16:29','2016-04-25 14:01:12'),
	('MATH 114','Calculus II','Techniques of integration; applications of integration; infinite series; parametric/polar equations. Offered Fall, Spring and Summer. Prerequisite: a grade of C- or above in MATH 111 and 112, or in MATH 113 or MATH 109','15867696-0b05-11e6-bbb5-e920e415be78','Spring',2011,'fdb677d8-0b0d-11e6-bbb5-e920e415be78','A','2016-04-25 13:20:25','2016-04-25 14:01:19'),
	('MATH 128','Intro to Discrete Math','A survey of basic discrete mathematical concepts. Topics include: Boolean algebra, logic, analysis of algorithms, mathematical induction and matrices. Focus on applications to computer science. Offered Fall and Spring. Prerequisite: MATH 111 or 113 or 109 (may be taken concurrently with consent of the instructor)','15867696-0b05-11e6-bbb5-e920e415be78','Spring',2012,'c7a12648-0b0d-11e6-bbb5-e920e415be78','A','2016-04-25 13:42:31','2016-04-25 14:01:32'),
	('MATH 200','Multi-Variable Calculus','Vector algebra in two and three dimensions, partial derivatives, multiple integrals, line integrals, surface integrals, Green\'s Theorem, Stokes\' Theorem, divergence theorem. Offered Fall and Spring. Prerequisite: a grade of C- or higher in MATH 114','15867696-0b05-11e6-bbb5-e920e415be78','Fall',2012,'371882dc-0b0e-11e6-bbb5-e920e415be78','A','2016-04-25 13:44:24','2016-04-25 14:01:41'),
	('MSRP 2015','MIT Summer Research Internship','Sketch','87cb9056-0b05-11e6-bbb5-e920e415be78','Summer',2015,'75527fa4-0b0d-11e6-bbb5-e920e415be78','','2016-04-25 14:08:45','2016-04-25 14:08:45'),
	('PHYS 111','Classical Physics I','This course and its continuation PHYS 112 serve as a two-semester introduction to classical physics. Applications are chosen that focus on engineering and the physical sciences. Topics include principles of classical mechanics: vectors, kinematics, particle and rigid body rotational dynamics and statics; conservation laws; and thermodynamics. The course meets three times a week for two consecutive periods consisting of integrated lecture, discussion and laboratory. Prerequisite: A minimum grade of C- in MATH 109 or MATH 113. NOTE: Students who receive credit for PHYS 111 may not receive credit for PHYS 109.','15867696-0b05-11e6-bbb5-e920e415be78','Spring',2011,'73e22240-0b0e-11e6-bbb5-e920e415be78','A','2016-04-25 13:20:25','2016-04-25 14:05:28'),
	('PHYS 112','Classical Physics II','Continuation of PHYS 111. Topics include waves and sound; electricity and magnetism; geometric and physical optics. The course meets three times a week for two consecutive periods consisting of integrated lecture, discussion and laboratory. Prerequisites: A minimum grade of C- in both PHYS 111 and MATH 114 NOTE: Students who receive credit for PHYS 112 may not receive credit for PHYS 110.','15867696-0b05-11e6-bbb5-e920e415be78','Fall',2011,'b98c700c-0b0e-11e6-bbb5-e920e415be78','A','2016-04-25 13:23:39','2016-04-25 14:10:19'),
	('PHYS 215','Modern Physics: Atom-Big Bang','This course connects the subatomic world of particle and nuclear physics to the evolution of the universe after the Big Bang through the study of relativity and the four fundamental forces of nature. The course consists of lecture, discussion and laboratory. This course fulfills the second-level Computer Competency requirement in the core curriculum. Prerequisite: A minimum grade of C- in either PHYS 110 or 112 and in MATH 114.','15867696-0b05-11e6-bbb5-e920e415be78','Fall',2013,'b98c700c-0b0e-11e6-bbb5-e920e415be78','A','2016-04-25 13:47:22','2016-04-25 14:10:06'),
	('PHYS 215-Lab','Modern Physics: Atom-Big Bang-Lab','This course connects the subatomic world of particle and nuclear physics to the evolution of the universe after the Big Bang through the study of relativity and the four fundamental forces of nature. The course consists of lecture, discussion and laboratory. This course fulfills the second-level Computer Competency requirement in the core curriculum. Prerequisite: A minimum grade of C- in either PHYS 110 or 112 and in MATH 114.','15867696-0b05-11e6-bbb5-e920e415be78','Fall',2013,'e74b08c8-0b0e-11e6-bbb5-e920e415be78','A','2016-04-25 13:49:17','2016-04-25 14:10:08'),
	('PHYS 225','Applications of Modern Physics','This course investigates the quantum theory of light, wave- particle duality, quantum mechanics in one-dimension, statistical physics, lasers, and solid state physics. The course consists of lecture, discussion and laboratory. Prerequisites: A minimum grade of C- in PHYS 112 and in either MATH 200 or MATH 210.','15867696-0b05-11e6-bbb5-e920e415be78','Spring',2014,'a3fa3148-0b0e-11e6-bbb5-e920e415be78','A','2016-04-25 13:49:17','2016-04-25 14:10:17'),
	('PHYS 323','Methods of Experiement Phys','Standard tools and techniques used in experimental physics are introduced while conducting an in-depth investigation of a non-linear system. Technical topics include: identifying and characterizing chaotic systems, data acquisition and instrument control using LabVIEW, signal conditioning, data and error analysis, and experimental design. This course consists of lecture and discussion. Offered fall semester. Prerequisite: A minimum grade of C- in either PHYS 112 and MATH 200','15867696-0b05-11e6-bbb5-e920e415be78','Spring',2013,'89949078-0b0e-11e6-bbb5-e920e415be78','A','2016-04-25 13:44:24','2016-04-25 14:10:07'),
	('STAT 220','Statistics I','Formerly IDTH 220 or QMCS 220 Introductory applied statistics. Work environment; population, sampling frame, random sample, type of variables and studies. Descriptive statistics: collecting, displaying, summarizing, and interpreting data to extract information. Probability; relative frequency definition of probability, conditional probability, independence, discrete and continuous random variables, probability distribution and probability density, binomial, normal, standard normal, t, chi-square, and F distributions. Inferential statistics; sampling distribution of the sample mean and sample proportion, central limit theorem, confidence intervals and hypothesis tests for one and two means and one and two proportions. Basic applications: tests of independence, analysis of variance and linear regression. A statistical package must be used as tool. This course fulfills the third course in natural Science and Mathematics and Quantitative Reasoning requirement in the core curriculum. Prereq','15867696-0b05-11e6-bbb5-e920e415be78','Spring',2011,'40ded88a-0b0d-11e6-bbb5-e920e415be78','A','2016-04-25 13:20:25','2016-04-25 13:59:44');

/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table enrollment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `enrollment`;

CREATE TABLE `enrollment` (
  `id` varchar(36) NOT NULL DEFAULT '',
  `degree` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(10) NOT NULL DEFAULT '',
  `university_id` varchar(36) NOT NULL DEFAULT '',
  `level` varchar(100) NOT NULL DEFAULT '',
  `start` date NOT NULL,
  `end` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `enrollment_universities_id_fk` (`university_id`),
  CONSTRAINT `enrollment_universities_id_fk` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `enrollment` WRITE;
/*!40000 ALTER TABLE `enrollment` DISABLE KEYS */;

INSERT INTO `enrollment` (`id`, `degree`, `alias`, `university_id`, `level`, `start`, `end`, `created_at`, `updated_at`)
VALUES
	('15867696-0b05-11e6-bbb5-e920e415be78','Bachelor of Arts','B.A.','d45e7e2c-0af3-11e6-bbb5-e920e415be78','undergraduate','2010-09-01','2015-12-18','2016-04-25 11:45:14','2016-04-25 11:52:23'),
	('87cb9056-0b05-11e6-bbb5-e920e415be78','Certificate of Attendance',' ','ce6af6ee-0af3-11e6-bbb5-e920e415be78','undergraduate','2015-06-01','2015-08-01','2016-04-25 11:48:26','2016-04-25 14:07:13');

/*!40000 ALTER TABLE `enrollment` ENABLE KEYS */;
UNLOCK TABLES;

DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `enrollment_default_uuid` BEFORE INSERT ON `enrollment` FOR EACH ROW begin
if NEW.id is null OR NEW.id = '' then
set NEW.id=UUID();
end if;
end */;;
DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;


# Dump of table professors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `professors`;

CREATE TABLE `professors` (
  `id` varchar(36) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `department` varchar(100) NOT NULL,
  `university_id` varchar(36) NOT NULL DEFAULT '',
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `office` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `professors_universities_id_fk` (`university_id`),
  CONSTRAINT `professors_universities_id_fk` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `professors` WRITE;
/*!40000 ALTER TABLE `professors` DISABLE KEYS */;

INSERT INTO `professors` (`id`, `name`, `department`, `university_id`, `phone`, `email`, `office`, `created_at`, `updated_at`)
VALUES
	('0d492c82-0b0d-11e6-bbb5-e920e415be78','Patrick Jarvis','CISC','d45e7e2c-0af3-11e6-bbb5-e920e415be78','651-962-5482','pljarvis@stthomas.edu','OSS 426','2016-04-25 12:42:16','2016-04-25 12:42:16'),
	('2ac4da72-0b0d-11e6-bbb5-e920e415be78','Kate Lockwood','CISC','d45e7e2c-0af3-11e6-bbb5-e920e415be78','651-962-5374','aklockwood@stthomas.edu','OSS 414','2016-04-25 12:43:06','2016-04-25 12:43:06'),
	('2d8e6cf2-0b15-11e6-bbb5-e920e415be78','Thanaa Ghanem','CISC','d45e7e2c-0af3-11e6-bbb5-e920e415be78','','','','2016-04-25 13:40:26','2016-04-25 13:40:26'),
	('371882dc-0b0e-11e6-bbb5-e920e415be78','Misha Shvartsman','MATH','d45e7e2c-0af3-11e6-bbb5-e920e415be78','651-962-5527','mmshvartsman@stthomas.edu','OSS 213','2016-04-25 12:50:36','2016-04-25 12:50:36'),
	('40ded88a-0b0d-11e6-bbb5-e920e415be78','German Pliego','CISC','d45e7e2c-0af3-11e6-bbb5-e920e415be78','651-962-5377','gjpliego@stthomas.edu','OSS 410','2016-04-25 12:43:43','2016-04-25 12:43:43'),
	('73e22240-0b0e-11e6-bbb5-e920e415be78','Adam Green','PHYS','d45e7e2c-0af3-11e6-bbb5-e920e415be78','651-962-5289','asgreen@stthomas.edu','OWS 165C','2016-04-25 12:52:18','2016-04-25 12:52:18'),
	('75527fa4-0b0d-11e6-bbb5-e920e415be78','Armando Solar-Lezama','EECS','ce6af6ee-0af3-11e6-bbb5-e920e415be78','617-258-9727','asolar@csail.mit.edu','32-G840','2016-04-25 12:45:11','2016-04-25 12:45:58'),
	('89949078-0b0e-11e6-bbb5-e920e415be78','Marty Johnson','PHYS','d45e7e2c-0af3-11e6-bbb5-e920e415be78','651-962-5214','mejohnston@stthomas.edu','OWS 160A','2016-04-25 12:52:54','2016-04-25 12:52:54'),
	('8d64b63e-0b0d-11e6-bbb5-e920e415be78','Mark Werness','CISC','d45e7e2c-0af3-11e6-bbb5-e920e415be78','651-962-5471','mewerness@stthomas.edu','OSS 403','2016-04-25 12:45:51','2016-04-25 12:45:51'),
	('a3fa3148-0b0e-11e6-bbb5-e920e415be78','Marie Lopez del Puerto','PHYS','d45e7e2c-0af3-11e6-bbb5-e920e415be78','651-962-5213','mlpuerto@stthomas.edu','OWS 160B','2016-04-25 12:53:38','2016-04-25 12:53:38'),
	('abe820c8-0b0d-11e6-bbb5-e920e415be78','Scott Yilek','CISC','d45e7e2c-0af3-11e6-bbb5-e920e415be78','651-962-5395','syilek@stthomas.edu','OSS 413','2016-04-25 12:46:42','2016-04-25 12:46:42'),
	('b98c700c-0b0e-11e6-bbb5-e920e415be78','Paul Ohmann','PHYS','d45e7e2c-0af3-11e6-bbb5-e920e415be78','651-962-5224','prohmann@stthomas.edu','OWS 165B','2016-04-25 12:54:15','2016-04-25 12:54:18'),
	('c7a12648-0b0d-11e6-bbb5-e920e415be78','Michael Hardy','MATH','d45e7e2c-0af3-11e6-bbb5-e920e415be78','','','','2016-04-25 12:47:29','2016-04-25 12:47:29'),
	('d929405e-0b0c-11e6-bbb5-e920e415be78','Jason Sawin','CISC','d45e7e2c-0af3-11e6-bbb5-e920e415be78','651-962-5478','jason.sawin@stthomas.edu','OSS 406 ','2016-04-25 12:39:30','2016-04-25 12:42:20'),
	('dfde04e2-0b0d-11e6-bbb5-e920e415be78','Doug Dokken','MATH','d45e7e2c-0af3-11e6-bbb5-e920e415be78','651-962-5523','dpdokken@stthomas.edu','OSS 201','2016-04-25 12:48:09','2016-04-25 12:48:09'),
	('e74b08c8-0b0e-11e6-bbb5-e920e415be78','Richard Thomas','PHYS','d45e7e2c-0af3-11e6-bbb5-e920e415be78','651-962-5212','rathomas1@stthomas.edu','OWS 162','2016-04-25 12:55:31','2016-04-25 12:55:31'),
	('fdb677d8-0b0d-11e6-bbb5-e920e415be78','Melissa Shepard Loe','MATH','d45e7e2c-0af3-11e6-bbb5-e920e415be78','651-962-5534','msloe@stthomas.edu','OSS 212','2016-04-25 12:48:09','2016-04-25 12:48:09');

/*!40000 ALTER TABLE `professors` ENABLE KEYS */;
UNLOCK TABLES;

DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `professors_default_uuid` BEFORE INSERT ON `professors` FOR EACH ROW begin
if NEW.id is null OR NEW.id = '' then
set NEW.id=UUID();
end if;
end */;;
DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;


# Dump of table universities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `universities`;

CREATE TABLE `universities` (
  `id` varchar(36) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT ' ',
  `alias` varchar(10) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(100) NOT NULL DEFAULT '',
  `state` varchar(100) NOT NULL DEFAULT '',
  `zipcode` varchar(5) NOT NULL DEFAULT '',
  `country` varchar(100) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `universities` WRITE;
/*!40000 ALTER TABLE `universities` DISABLE KEYS */;

INSERT INTO `universities` (`id`, `name`, `alias`, `address`, `city`, `state`, `zipcode`, `country`, `created_at`, `updated_at`)
VALUES
	('ce6af6ee-0af3-11e6-bbb5-e920e415be78','Massachusetts Institute of Technology','MIT','77 Massachusetts Ave','Cambridge','MA','02139','USA','2016-04-25 09:40:33','2016-04-25 09:40:33'),
	('d45e7e2c-0af3-11e6-bbb5-e920e415be78','University of St Thomas','UST','2115 Summit Avenue','St Paul','MN','55105','USA','2016-04-25 10:18:10','2016-04-25 11:50:16');

/*!40000 ALTER TABLE `universities` ENABLE KEYS */;
UNLOCK TABLES;

DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `universities_default_uuid` BEFORE INSERT ON `universities` FOR EACH ROW begin
if NEW.id is null OR NEW.id = '' then
set NEW.id=UUID();
end if;
end */;;
DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
