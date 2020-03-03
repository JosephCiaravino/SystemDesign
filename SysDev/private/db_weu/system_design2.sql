-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2020 at 10:42 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `system_design`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_Id`) VALUES
(14);

-- --------------------------------------------------------

--
-- Table structure for table `advisor`
--

CREATE TABLE `advisor` (
  `student_id` int(10) NOT NULL,
  `faculty_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `section_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `attended` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `class_registration`
--

CREATE TABLE `class_registration` (
  `section_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `midterm_grade` varchar(2) DEFAULT NULL,
  `final_grade` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `course_title` varchar(100) NOT NULL,
  `course_desc` varchar(255) NOT NULL,
  `credits` int(1) NOT NULL DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `day`
--

CREATE TABLE `day` (
  `day_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `day`
--

INSERT INTO `day` (`day_name`) VALUES
('Friday'),
('Monday'),
('Thursday'),
('Tuesday'),
('Wednesday');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(3) NOT NULL,
  `dept_name` varchar(100) NOT NULL,
  `dept_desc` varchar(3000) NOT NULL,
  `faculty_chair_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`, `dept_desc`, `faculty_chair_id`) VALUES
(1, 'American Studies', 'American Studies is an interdisciplinary liberal arts program. Courses in the program examine the history and culture of the United States, social and economic structure, forms of cultural expression, and political and legal institu-tions. These courses integrate history, sociology, literature, and media studies and are designed to encourage the development of critical thinking, debate and clear expository writing. American Studies courses emphasize the diversity of American Society and the experiences of ordinary life, paying particular attention to ethnic, gender, and other forms of social inequality. Courses examine institutions of power and control and the ways people at-tempt to change society. Work in the program is designed to combine a liberal arts education with career preparation. The program also offers students the ability to develop a field of study in the following areas: U.S. History and Society, Media Studies, African American History and Culture and Women’s Studies. Through its internship program, the major provides students with broad, flexible training appropriate to a wide array of jobs. The interdisciplinary course of study of-fered in the major provides useful preparation for graduate school and careers in education, media, law, gov-ernment, and social work. The department expects that students, regardless of their career goals, will graduate with the knowledge and skills necessary to take constructive action for social change in their communities and workplaces, nation and the world.', 1),
(2, 'Biological Sciences', 'The Biological Sciences program of study leads to either a Bachelor of Science (B.S.) or a Bachelor of Arts (B.A.) degree in Biology. This program offers the basic courses for students whose career plans include the biological sciences, premedical and pre-professional training and secondary education (B.S. in Biology), public policy or environmental studies (B.A. in Biology).  Students interested in secondary education should refer to the certifica-tion requirements in the teacher education program.  The department also offers an MAT in Biology.  The Biolog-ical Sciences Department incorporates an innovative, multidisciplinary approach to problem-solving in biology. It combines a strong research orientation in the basic sciences with a concern for health and environmental problems. It offers excellent preparation for professional and research careers concerned with the educational needs of the entire Long Island community.', 2),
(3, 'Chemistry and Physics', 'The mission of the Chemistry and Physics Department is to provide a sound, broadly-based foundation in chemis-try and physics to enable graduates to perform effectively in the chemical industries, graduate and professional school,  and  other  work  environments.    Along  with  this  foundation,  the  department’s  learning  outcomes  focus  on the development of students’ critical thinking and communication skills.  In keeping with the College’s social justice mission, we strive to accomplish these goals through close interaction between students and faculty, and by creating a learning environment that is welcoming to all. ', 3),
(4, 'English', 'The B.A. in English provides majors with a cutting-edge curriculum in the study of multicultural and world literature, advanced writing and research, and critical thinking and analysis.  The English program rigorously cultivates skills in literary analysis, careful reading, and advanced writing through a multicultural and global literary framework.  Building on common foundations, this degree offers two upper-level specializations:  Multicultural U.S.-British Lit-erature and World Literature.', 4),
(5, 'History and Philosophy', 'The History and Philosophy Department prepares students for a lifetime of critical thinking and cooperative living in today’s interconnected world.  Courses that emphasize multicultural and international perspectives in disciplines such as history, philosophy, geography, and religious studies prepare students for a wide range of professional fields.  At the same time, the degrees offered by the department encourage students to engage with the breadth of human experience while instilling a commitment to build a more just and sustainable future.', 5),
(6, 'Industrial and Labor Relations', 'The Bachelor of Arts and Bachelor of Science degrees in Industrial and Labor Relations are multidisciplinary majors within the Politics, Economics and Law Department.  Through the vantage point of worker/employer relations, they explore the history, contributions, and problems of working people and their institutions in contemporary society, as well as the theory and practice of various management methods and models, from scientific management to modern human resource management.  Foundation courses introduce students to the analytical tools of political science and economics that are useful in the specialized study of labor-management issues.Core courses emphasize current labor-management and labor-government issues, including collective bargain-ing, grievance procedures, arbitration, labor and employment law, public policy, and labor economics.  Electives allow students the opportunity to further explore labor-management issues from the perspectives of management, unions, history, economics, sociology, politics, law, and public health.The  curriculum  recognizes  that  globalization  of  labor  markets  and  production  is  rapidly  changing  the  labor-management environment.  Multinational enterprises, with their enormous size and ability to relocate production \r\n80Evening StudentsStudents majoring in ILR can fulfill requirements for graduation by attending evening classes.Life Long Learners (LLL)Adult students who wish to continue their education by taking credit courses, without pursuing a degree, may elect to attend the college under a non-matriculated status.  Many students, particularly members of labor unions, enroll in ILR courses as Life Long Learners (LLL).  The Office of Enrollment Services will assist such students.requirements  for a Bachelor of Arts (B.A.) Degree in Industrial and Labor relations (120 credits, 90 credits in liberal arts)The Bachelor of Arts (B.A.) and Bachelor of Science (B.S.) degrees in Industrial and Labor Relations are multidisci-plinary programs of study, drawing on courses offered in several departments at the College.A. Liberal Education CurriculumRefer to the Liberal Education Curriculum Bulletin for specific requirements.B.  ILr degrees (refer to the following)Bachelor of Arts (B.A.) Degree in Industrial and Labor relations (52 credits or 13 courses)(Students may take a maximum of 20 credits in BU-designated courses.)Foundation Courses (16 credits or 4 courses required)PE2300 Introduction to LawPE2420 Principles of MicroeconomicsPE2430 Principles of MacroeconomicsPE2650 Introduction to U.S. PoliticsPE3410 Contemporary Political EconomyCore Courses (20 credits or 5 courses required)IR2210 Unions and Management:  An                  Introductionand other facilities, have upset the post-World War II balance of power with unions.  Thus, courses emphasize the dynamic nature of current labor-management relations.', 6),
(7, 'Mathematics, Computer & Information Science', 'The Department of Mathematics and Computer & Information Science (Math/CIS) aims to realize the inherent synergies between both disciplines in an effort to serve our students effectively and efficiently.Mathematics is the universal logic of science and engineering. It is fundamental to exploring the nature of space and time, and is used to describe, analyze and solve problems in the world around us. For some, a passion for mathematics may lead to a life-time of research or teaching. For others, an interest in applied mathematics may lead to a career in business, government or industry across a broad area of operations research or computational mathematics. Some specific areas of math-related employment include mathematical finance, risk management, actuarial science, quality assurance, data analytic, health care administration, energy and transportation systems, and modeling for climate change and sustainability.The ability to think computationally is an essential skill for every student as technology becomes increasingly perva-sive in all aspects of life.  The analysis and design of efficient algorithms—that is, sets of rules used for computation—is fundamental to problem solving in both mathematics and computer science.  As a computer scientist, one needs to develop and deliver working systems comprised of hardware and software that represent the solution to clients’ real-life problems; therefore, programming is the central activity in systems development.  Creating software entails abstraction, encapsulation and modularization, which aid in conceptualization and design of complex systems.', 7),
(8, 'Media and Communications', 'The  Media  and  Communications  major  is  located  within  the  American  Studies  Department  and  its  cur-riculum  is  designed  to  give  students  a  grounding  in  the  economic,  political,  social,  and  intellectual  his-tory  of  the  U.S.    A  wide  variety  of  courses  is  offered  both  on  theoretical  and  practical  levels,  in  com-munications  and  all  varieties  of  media  including  radio  and  TV,  newspapers,  and  inter-active  media.Students  will  develop  strong  writing,  reporting  and  other  communications  skills.  The  goal  is  to  assist  students  in  developing a critical view of the role and dynamics of media in contemporary society.Students gain practical experience through internships in a variety of fields. They intern in media organizations ranging from television and radio stations to newspapers and magazines - throughout Long Island and the New York Metropolitan Area. This major is appropriate for students interested in careers in media. It also serves as a foundation for students who want to do graduate work in media studies, journalism and communications.', 8),
(9, 'Modern Languages', 'he Modern Languages Department offers a course of study leading to a Bachelor of Arts degree (B.A.) in Spanish Language, Hispanic Literature and Culture.  In addition, Modern Languages has established close ties with the School of Education to prepare students for careers as foreign language (Spanish) teachers.  Students may earn initial certification in the teaching of Spanish (Grades 7-12).  It is also possible to obtain a non-teaching certificate and a minor in Spanish.  Both of these options offer effective marketable skills that are in high demand in teaching and business careers, particularly in today’s multilingual and global economies.  ', 9),
(10, 'Politics, Economics and Law', 'Politics, Economics and Law (PEL), formerly Politics, Economics, and Society, is an inter disciplinary department in the social sciences with a national and international focus. Students majoring in PEL earn a Bachelor of Arts (B.A.) degree. Bachelor of Arts (B.A.) and Bachelor of Science (B.S.) degrees in Industrial and Labor Relations are also offered by the PEL department. (See page 79). PEL has upper division concentrations in politics and law, econom-ics, political economy, public policy and global studies.The PEL department provides a rigorous and integrated preparation in the social sciences for students who intend to enter graduate or law school; for students who plan to seek employment in government, business, social ser-vices, and human rights and political organizations. The  PEL  curriculum  has  various  objectives:  to  in  troduce  students  to  the  disciplines  of  political  sci  ence,  political  economy and economics and to examine how these different areas intersect to shape U.S. and international law, institutions, and policies.  Such a course of study provides the student with a strong background in the historical de-velopment of corporations, social welfare policies, labor organizations, and civil liberties and civil rights movements.PEL also provides students with an opportunity to develop an international perspective in the study of politics and economics - a vantage point vital in the new global marketplace. The department takes a comparative ap proach to the study of different societies and to the relations among them, with particular emphasis on the developing na-tions and globalization. The global component focuses on issues such as international trade, foreign debt, economic inequality, transnational political and social movements, environmental concerns and international institutions.', 10),
(11, 'Psychology', 'The Psychology Department provides students with a background in the major areas of expertise within the mod-ern discipline of psychology. A major in psychology leads to either the Bachelor of Arts (B.A.) or the Bachelor of Science (B.S.) degree. Completion of requirements for a Bachelor’s degree in Psychology ensures that students have been given an extensive background in research methods and have been introduced to the basic areas of specialization within psychology. To this end, the curriculum is designed around a set of required courses called The Core, which includes Introduction to Psychology; a sequence of two research methodology courses; Field Experience & Research, an internship course; and a Senior Seminar in a specialized area of interest. In addition to these core courses, students choose six electives: One Group A Platform course in the areas of physiological or cognitive psychology; one Group B Platform course in the areas of clinical, developmental, or social psychol-ogy; one Group C Platform course in the areas of diversity and social justice; and three additional electives, at least one of which must be at the 4000 level. In selecting courses beyond the required core, students enrich the scope of their knowledge, and are able to prepare for employment or advancement in a way that matches their particular interests, abilities, and occupational goals. While some students begin employment with a Bachelor’s degree, in order to advance professionally, many students go on to pursue graduate degrees in psychology or social work. The B.A. program provides majors with a strong background for entering graduate studies in many related fields of human service, whereas the B.S. program provides majors with a strong background for entering forensic/criminal sciences, nursing, developmental disabilities, special education, gerontology/rehabilitative sci-ence, pharmacology, psychiatry, neurology, neurobiology, in addition to basic and clinical research.', 11),
(12, 'Public Health', 'Public Health is an increasingly well-known and important field of study. Many colleges have created public health departments in recent years. Old Westbury students, however, have the benefit of a program that has been teaching undergraduates the core principles and disciplines of public health for many years.In  Public  Health,  students  learn  how  the  social,  political  and  economic  environment  shape  our  ability  to  lead  decent, healthy, productive lives. Students learn about health professions, careers and the institutions of the U.S. health care system; study the foundational public health principles of epidemiology, biostatistics and research methods; conduct internships and research in community-based health-care settings, developing contacts and real-world experience; and study a wide range of health-related topics from health care administration to public health ethics, from health education to women’s health, from aging to health law and health policy, nutrition, human sexuality, substance use and numerous other areas of special interest.', 12),
(13, 'Sociology', 'The Sociology Department provides students with a liberal arts education based on a sociological understand-ing of human behavior, culture, and society through scientific inquiry. Our majors in Sociology and Criminology provide a foundation for intellectual development, civic responsibility, global awareness, and the pursuance of social justice in a diverse society. The Department empowers students with an opportunity to conduct original research and encourages them to assess social issues critically. The Sociology Department’s faculty are committed to preparing students from every background for graduate degree programs, as well as for careers in teaching, social work, law, research-oriented positions, and a variety of other professional endeavors.\r\nThe Department serves all students interested in acquiring sociological knowledge. Most courses are open to both majors and non-majors. The sociological perspective offers students an opportunity to develop and refine their ‘sociological imagination’, through which the dynamics, principles, and patterns that govern human interaction and  social  structure  are  critically  understood.  At  Old  Westbury,  students  will  learn  the  substantive  knowledge,  theories and methods of the discipline. Students exposed to sociology or criminology in this way will be enabled to analyze and interpret complex patterns in quantitative and qualitative data, thereby increasing and clarifying their understanding of social life', 13),
(14, 'Visual Arts', 'The Visual Arts Program focuses on a problem and project oriented course of study. Skills are developed as stu-dents need them; thus students feel free to use and even invent media related to expressive needs. Students do not have to postpone creation until they have mastered a whole set of techniques. Students are urged to blend technical education with creative projects.The aim of the department is to develop students’ awareness of creative processes as well as their understanding of the relationships between art and society. The program of study for majors includes the study of art history and an introduction to the practical problems associated with the pursuit of careers in art. Faculty emphasize the ap-propriate selection of elective courses in non-art areas. Specific courses in economics, anthropology, sociology, basic sciences, psychology and business are recommended.The department’s course of study is divided into three levels. First, the foundation level allows students to differenti-ate between authentic personal decisions and those dictated by social and cultural conditions. Second, a tutorial level allows students to focus on creative problems connected with their personal decisions and to understand their relation to the decisions of others. Third, a final critical level enables students to develop a quality control for the formal solutions of the projects and to relate them to the larger professional world.', 15),
(15, 'Women and Gender Studies', 'This program of study empowers students through a feminist critique of social, cultural, and institutional structures that enables them to think more critically about their own lives and that inspires them to work as active citizens for social justice. The knowledge and skills attained from the Women and Gender Studies minor are valuable in such fields as education, social work, art, literature, business and human resources, scientific research and the health professions, law and public policy, media production, nonprofit advocacy, psychology, and information technology.', 16),
(16, 'Accounting, Taxation and Business Law', 'The objective of this course of study is to provide students with the analytical skills and knowledge to enter any area of the accounting profession. Although the program is designed to prepare the student for entry into public accountancy, graduates are well prepared to meet the accountings needs of all types of enterprises.', 17),
(17, 'Management, Marketing and Finance', 'The Department of Management, Marketing, and Finance offers Bachelor of Science degrees in Business Admin-istration, Marketing and Finance. The Department is committed to providing a high quality business education to its students through its curriculum, teaching, academic support services, and placement and internship programs. The curriculum of each major is divided into two parts: a common core of business courses and courses in special-ized areas of their disciplines.', 18),
(18, 'Education', 'The mission of the School of Education is to prepare teacher candidates to be literate and progressive citizens who value human diversity and exemplify an appreciation for the interdisciplinary nature of knowledge and for learning as a lifelong process.  The school seeks to develop teachers with the professional and personal character-istics and dispositions to facilitate the holistic development of all learners in the context of contemporary society.', 19);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Faculty_Id` int(10) NOT NULL,
  `Dept_Id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Faculty_Id`, `Dept_Id`) VALUES
(1, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(2, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(3, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(4, 4),
(35, 4),
(36, 4),
(37, 4),
(38, 4),
(39, 4),
(5, 5),
(40, 5),
(41, 5),
(42, 5),
(43, 5),
(44, 5),
(6, 6),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 6),
(7, 7),
(50, 7),
(51, 7),
(52, 7),
(53, 7),
(54, 7),
(8, 8),
(55, 8),
(56, 8),
(57, 8),
(58, 8),
(59, 8),
(9, 9),
(60, 9),
(61, 9),
(62, 9),
(63, 9),
(64, 9),
(10, 10),
(65, 10),
(66, 10),
(67, 10),
(68, 10),
(69, 10),
(11, 11),
(70, 11),
(71, 11),
(72, 11),
(73, 11),
(74, 11),
(12, 12),
(75, 12),
(76, 12),
(77, 12),
(78, 12),
(79, 12),
(13, 13),
(80, 13),
(81, 13),
(82, 13),
(83, 13),
(84, 13),
(15, 14),
(85, 14),
(86, 14),
(87, 14),
(88, 14),
(89, 14),
(16, 15),
(90, 15),
(91, 15),
(92, 15),
(93, 15),
(94, 15),
(17, 16),
(95, 16),
(96, 16),
(97, 16),
(98, 16),
(99, 16),
(18, 17),
(100, 17),
(101, 17),
(102, 17),
(103, 17),
(104, 17),
(19, 18),
(105, 18),
(106, 18),
(107, 18),
(108, 18),
(109, 18);

-- --------------------------------------------------------

--
-- Table structure for table `grad_full`
--

CREATE TABLE `grad_full` (
  `student_id` int(10) NOT NULL,
  `credits_taking` int(2) NOT NULL,
  `max_credits` int(2) NOT NULL DEFAULT 20,
  `min_credits` int(2) NOT NULL DEFAULT 12
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grad_part`
--

CREATE TABLE `grad_part` (
  `student_id` int(10) NOT NULL,
  `credits_taking` int(2) NOT NULL,
  `max_credits` int(2) NOT NULL DEFAULT 11
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grad_program`
--

CREATE TABLE `grad_program` (
  `grad_program_id` int(10) NOT NULL,
  `dept_id` int(3) NOT NULL,
  `grad_program_title` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grad_program_requirements`
--

CREATE TABLE `grad_program_requirements` (
  `grad_program_id` int(10) NOT NULL,
  `course_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grad_registration`
--

CREATE TABLE `grad_registration` (
  `grad_program_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grad_student`
--

CREATE TABLE `grad_student` (
  `student_id` int(10) NOT NULL,
  `time_type` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `holds`
--

CREATE TABLE `holds` (
  `hold_type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `major_id` int(10) NOT NULL,
  `dept_id` int(10) NOT NULL,
  `major_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`major_id`, `dept_id`, `major_title`) VALUES
(1, 18, 'Adolescence Education: Chemistry (7-12)'),
(2, 18, 'Adolescent Education: Social Studies (7-12)'),
(3, 18, 'Adolescence Education: Spanish (7-12)'),
(4, 1, 'American Studies'),
(5, 2, 'Biological Sciences'),
(6, 3, 'Chemistry'),
(7, 4, 'English'),
(8, 5, 'History'),
(9, 6, 'Industrial and Labor Relations'),
(10, 8, 'Media and Communications'),
(11, 5, 'Philosophy and Religion'),
(12, 10, 'Politics, Economics & Law'),
(13, 11, 'Psychology'),
(14, 13, 'Sociology'),
(15, 9, 'Spanish Language, Hispanic Literature & Culture'),
(16, 14, 'Visual Arts');

-- --------------------------------------------------------

--
-- Table structure for table `major_requirements`
--

CREATE TABLE `major_requirements` (
  `major_id` int(11) NOT NULL,
  `req_course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `minor`
--

CREATE TABLE `minor` (
  `minor_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `minor_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `minor`
--

INSERT INTO `minor` (`minor_id`, `dept_id`, `minor_title`) VALUES
(1, 16, 'Accounting'),
(2, 1, 'African American Studies'),
(3, 7, 'Applied Mathematics'),
(4, 3, 'Chemistry'),
(5, 7, 'Computer and Information Sciences'),
(6, 5, 'Congregational Leadership'),
(7, 14, 'Digital Design Marketing'),
(8, 10, 'Economics'),
(9, 17, 'Entertainment and Sports Management'),
(10, 2, 'Environmental Studies'),
(11, 9, 'French Studies'),
(12, 17, 'General Business'),
(13, 5, 'Global Studies'),
(14, 9, 'Hispanic Cultural Studies'),
(15, 6, 'Industrial and Labor Relations'),
(16, 5, 'Islamic Studies'),
(17, 5, 'Italian Cultural Studies'),
(18, 17, 'Marketing'),
(19, 7, 'Mathematics'),
(20, 8, 'Media and Communications'),
(21, 14, 'Media Design'),
(22, 4, 'Multicultural US/British Literature'),
(23, 11, 'Neuropsychology'),
(24, 5, 'Philosophy and Religion'),
(25, 3, 'Physics'),
(26, 10, 'Pre-Law Studies'),
(27, 11, 'Psychology'),
(28, 12, 'Public Policy'),
(29, 12, 'Social Work'),
(30, 9, 'Spanish'),
(31, 14, 'Visual Arts'),
(32, 1, 'Women and Gender Studies');

-- --------------------------------------------------------

--
-- Table structure for table `minor_requirements`
--

CREATE TABLE `minor_requirements` (
  `minor_id` int(11) NOT NULL,
  `req_course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prereq`
--

CREATE TABLE `prereq` (
  `course_id` int(10) NOT NULL,
  `prereq_course_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `researcher`
--

CREATE TABLE `researcher` (
  `Researcher_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(10) NOT NULL,
  `building` varchar(25) NOT NULL,
  `room_number` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `section_id` int(10) NOT NULL,
  `course_id` int(10) NOT NULL,
  `semester_id` int(10) NOT NULL,
  `faculty_id` int(10) NOT NULL,
  `room_id` int(10) NOT NULL,
  `time_slot_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semester_id` int(10) NOT NULL,
  `semester_year` int(4) NOT NULL,
  `semester_term` varchar(6) NOT NULL,
  `semester_start` date NOT NULL,
  `semester_finish` date NOT NULL,
  `semester_midterm` date NOT NULL,
  `semester_final` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(10) NOT NULL,
  `GPA` decimal(3,0) NOT NULL,
  `student_type` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_history`
--

CREATE TABLE `student_history` (
  `student_id` int(10) NOT NULL,
  `course_id` int(10) NOT NULL,
  `semester_id` int(10) NOT NULL,
  `grade` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_holds`
--

CREATE TABLE `student_holds` (
  `student_id` int(10) NOT NULL,
  `hold_type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_major`
--

CREATE TABLE `student_major` (
  `student_id` int(10) NOT NULL,
  `major_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_minor`
--

CREATE TABLE `student_minor` (
  `student_id` int(10) NOT NULL,
  `minor_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `time_period`
--

CREATE TABLE `time_period` (
  `time_period_id` int(10) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `time_slot`
--

CREATE TABLE `time_slot` (
  `time_slot_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `time_slot_days`
--

CREATE TABLE `time_slot_days` (
  `time_slot_id` int(10) NOT NULL,
  `day_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `time_slot_period`
--

CREATE TABLE `time_slot_period` (
  `time_period_id` int(10) NOT NULL,
  `time_slot_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `undergrad_full`
--

CREATE TABLE `undergrad_full` (
  `student_id` int(10) NOT NULL,
  `credits_taking` int(2) NOT NULL,
  `max_credits` int(2) NOT NULL DEFAULT 20,
  `min_credits` int(2) NOT NULL DEFAULT 12
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `undergrad_part`
--

CREATE TABLE `undergrad_part` (
  `student_id` int(10) NOT NULL,
  `credits_taking` int(2) NOT NULL,
  `max_credits` int(2) NOT NULL DEFAULT 11
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `undergrad_student`
--

CREATE TABLE `undergrad_student` (
  `student_id` int(10) NOT NULL,
  `time_type` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_Id` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Street_Address` varchar(200) NOT NULL,
  `City` varchar(100) NOT NULL,
  `State` varchar(2) NOT NULL,
  `Zipcode` int(5) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_Id`, `Email`, `Password`, `First_Name`, `Last_Name`, `Street_Address`, `City`, `State`, `Zipcode`, `Phone`, `Role`) VALUES
(1, 'RSanchez@weu.edu', 'password', 'Robert', 'Sanchez', '16-54 ORD ST', 'Tulsa', 'OK', 74101, 771, 'faculty'),
(2, 'PWalker@weu.edu', 'password', 'Philip', 'Walker', '109-71 GOLD ST', 'Los_Angeles', 'CA', 90001, 712, 'faculty'),
(3, 'SKing@weu.edu', 'password', 'Shlomo', 'King', '14 I-280 TO HWY 101 RAMP', 'Newport', 'RI', 2841, 734, 'faculty'),
(4, 'KWilliams@weu.edu', 'password', 'Kelly', 'Williams', '81-18 FAIRBANKS ST', 'Wichita', 'KS', 67201, 445, 'faculty'),
(5, 'NPerry@weu.edu', 'password', 'Nathan', 'Perry', '3194OLD CHINATOWN LN', 'Aberdeen', 'SD', 57402, 771, 'faculty'),
(6, 'SPerry@weu.edu', 'password', 'Samantha', 'Perry', '4490 CLARKSON ST', 'Los_Angeles', 'CA', 90001, 181, 'faculty'),
(7, 'LTaylor@weu.edu', 'password', 'Lauren', 'Taylor', '3379 LUDLOW ALY', 'Anchorage', 'AK', 99501, 585, 'faculty'),
(8, 'CRoberts@weu.edu', 'password', 'Caitlin', 'Roberts', '8505 BELDEN ST', 'Duluth', 'MN', 55801, 738, 'faculty'),
(9, 'RHall@weu.edu', 'password', 'Raymond', 'Hall', '94-43OAKWOOD ST', 'Des_Moines', 'IA', 52801, 702, 'faculty'),
(10, 'WSmith@weu.edu', 'password', 'Willie', 'Smith', '93-78 MANSEAU ST', 'Aberdeen', 'SD', 57402, 692, 'faculty'),
(11, 'RCampbell@weu.edu', 'password', 'Ryan', 'Campbell', '9037 NATOMA ST', 'Portland', 'OR', 97201, 552, 'faculty'),
(12, 'SButler@weu.edu', 'password', 'Samuel', 'Butler', '97-63 PENINSULA AVE', 'Honolulu', 'HI', 96801, 446, 'faculty'),
(13, 'RJohnson@weu.edu', 'password', 'Ramona', 'Johnson', '4854 BIGELOW CT', 'Newport', 'RI', 2841, 490, 'faculty'),
(14, 'admin@weu.edu', 'password', 'Samantha', 'James', '80-15 OLIVE ST', 'Nashville', 'TN', 37201, 518, 'admin'),
(15, 'EBell@weu.edu', 'password', 'Emma', 'Bell', '24-54 SAN ANTONIO PL', 'Coldwater', 'MI', 49036, 679, 'faculty'),
(16, 'MRichardson@weu.edu', 'password', 'Mark', 'Richardson', '968 THOMAS MELLON CIR', 'Logan', 'UT', 84321, 771, 'faculty'),
(17, 'RMoore@weu.edu', 'password', 'Ronald', 'Moore', '16-89 GENOA PL', 'Honolulu', 'HI', 96801, 146, 'faculty'),
(18, 'RHarris@weu.edu', 'password', 'Rose', 'Harris', '101-45 SAINT GEORGE ALY', 'Cleveland', 'OH', 44101, 468, 'faculty'),
(19, 'MCarter@weu.edu', 'password', 'Megan', 'Carter', '746 NIAGARA AVE', 'Pensacola', 'FL', 32501, 268, 'faculty'),
(20, 'NCampbell@weu.edu', 'password', 'Noah', 'Campbell', '4931 CAMPBELL AVE', 'Los_Angeles', 'CA', 90001, 249, 'faculty'),
(21, 'DCarter@weu.edu', 'password', 'Donna', 'Carter', '73-101 GUERRERO ST', '62701,62709', 'IN', 62701, 205, 'faculty'),
(22, 'AMurphy@weu.edu', 'password', 'Ann', 'Murphy', '72-15 ADELE CT', 'Biloxi', 'MS', 39530, 700, 'faculty'),
(23, 'SAlexander@weu.edu', 'password', 'Samuel', 'Alexander', '82-16 LIGGETT AVE', 'Walhalla', 'ND', 58282, 185, 'faculty'),
(24, 'KYoung@weu.edu', 'password', 'Kenneth', 'Young', '7268 OSHAUGHNESSY BLVD', 'Logan', 'UT', 84321, 581, 'faculty'),
(25, 'PWard@weu.edu', 'password', 'Paul', 'Ward', '55-102 OXFORD ST', 'Honolulu', 'HI', 96801, 437, 'faculty'),
(26, 'MBrooks@weu.edu', 'password', 'Makenzie', 'Brooks', '5750 FARVIEW CT', '62701,62709', 'IN', 62701, 133, 'faculty'),
(27, 'JClark@weu.edu', 'password', 'Jack', 'Clark', '5620 WEDEMEYER ST', 'Bellevue', 'WA', 98004, 158, 'faculty'),
(28, 'DLee@weu.edu', 'password', 'Donna', 'Lee', '7610 FALLON PL', 'Des_Moines', 'IA', 52801, 670, 'faculty'),
(29, 'AButler@weu.edu', 'password', 'Ann', 'Butler', '2048 MERCEDES WAY', 'Orlando', 'FL', 32801, 168, 'faculty'),
(30, 'APeterson@weu.edu', 'password', 'Amanda', 'Peterson', '63-38 PAGODA PL', 'Des_Moines', 'IA', 52801, 716, 'faculty'),
(31, 'CWalker@weu.edu', 'password', 'Cheryl', 'Walker', '105-43 WILLARD ST NORTH', 'Miami', 'FL', 33124, 501, 'faculty'),
(32, 'LFoster@weu.edu', 'password', 'Lee', 'Foster', '89-74 KEARNY ST', 'IL', 'Sp', 60601, 176, 'faculty'),
(33, 'GCox@weu.edu', 'password', 'Gary', 'Cox', '97-33 SHARON ST', 'Pensacola', 'FL', 32501, 346, 'faculty'),
(34, 'JHall@weu.edu', 'password', 'Jerry', 'Hall', '79-37 FOUNTAIN ST', 'Hartford', 'CT', 6101, 552, 'faculty'),
(35, 'PNelson@weu.edu', 'password', 'Percival', 'Nelson', '5658 OWENS ST', 'Honolulu', 'HI', 96801, 186, 'faculty'),
(36, 'CReed@weu.edu', 'password', 'Caitlin', 'Reed', '38-22 IRON ALY', 'Dover', 'DE', 19901, 244, 'faculty'),
(37, 'VSimmons@weu.edu', 'password', 'Virginia', 'Simmons', '7111 CORDELIA ST', 'Portland', 'OR', 97201, 227, 'faculty'),
(38, 'BRodriguez@weu.edu', 'password', 'Brandon', 'Rodriguez', '49-11 HARRISON BLVD', 'Boston', 'MA', 2101, 125, 'faculty'),
(39, 'KButler@weu.edu', 'password', 'Kathleen', 'Butler', '74-14 EMERALD COVE WAY', 'Beaver', 'WV', 25813, 741, 'faculty'),
(40, 'KGonzalez@weu.edu', 'password', 'Kyle', 'Gonzalez', '9166 OREILLY AVE', 'Miami', 'FL', 33124, 457, 'faculty'),
(41, 'AThomas@weu.edu', 'password', 'Aaron', 'Thomas', '81-70 GARRISON AVE', 'Lakes', 'MN', 49734, 379, 'faculty'),
(42, 'MKelly@weu.edu', 'password', 'Malay', 'Kelly', '74-70 SUTRO HEIGHTS AVE', 'Santa_Fe', 'NM', 87500, 681, 'faculty'),
(43, 'RGriffin@weu.edu', 'password', 'Roger', 'Griffin', '101-109 TORNEY AVE', '20001,20020', 'DC', 20001, 120, 'faculty'),
(44, 'JYoung@weu.edu', 'password', 'Judy', 'Young', '100-10 MERCURY ST', 'Walhalla', 'ND', 58282, 423, 'faculty'),
(45, 'WEdwards@weu.edu', 'password', 'Walter', 'Edwards', '7626 PELICAN COVE TER', 'Newport', 'RI', 2841, 235, 'faculty'),
(46, 'AFoster@weu.edu', 'password', 'Amy', 'Foster', '3481 CORBIN PL', 'Beaver', 'WV', 25813, 121, 'faculty'),
(47, 'GEdwards@weu.edu', 'password', 'Gabriel', 'Edwards', '106-107 MARGARET AVE', 'Sacramento', 'CA', 94203, 333, 'faculty'),
(48, 'LFlores@weu.edu', 'password', 'Larry', 'Flores', '4685 CONVERSE ST', 'Miami', 'FL', 33124, 637, 'faculty'),
(49, 'SAnderson@weu.edu', 'password', 'Stephanie', 'Anderson', '6535 BERCUT ACCESS RD', 'New_Orleans', 'LA', 70112, 326, 'faculty'),
(50, 'WWhite@weu.edu', 'password', 'William', 'White', '6380 CRISP RD', 'Austin', 'TX', 78701, 541, 'faculty'),
(51, 'DRodriguez@weu.edu', 'password', 'Doris', 'Rodriguez', '15-48 BEALE ST', 'New_Orleans', 'LA', 70112, 582, 'faculty'),
(52, 'ZHill@weu.edu', 'password', 'Zachary', 'Hill', '81-53 PIERCE ST', 'Altavista', 'VA', 24517, 583, 'faculty'),
(53, 'LJones@weu.edu', 'password', 'Lawrence', 'Jones', '48-104 FRENCH CT', 'Chicago', 'IL', 60002, 374, 'faculty'),
(54, 'DPeterson@weu.edu', 'password', 'Deborah', 'Peterson', '9228 COLONIAL WAY', 'Nashville', 'TN', 37201, 449, 'faculty'),
(55, 'RButler@weu.edu', 'password', 'Raquila', 'Butler', '19-24 CRESTWELL WALK', 'Sacramento', 'CA', 94203, 785, 'faculty'),
(56, 'ATorres@weu.edu', 'password', 'Amanda', 'Torres', '69-43 OAK PARK DR', 'Phoenix', 'AZ', 85001, 630, 'faculty'),
(57, 'RCook@weu.edu', 'password', 'Ralph', 'Cook', '9294 CHANNEL ST', 'Tulsa', 'OK', 74101, 408, 'faculty'),
(58, 'WJames@weu.edu', 'password', 'Willie', 'James', '9662 TAPIA DR', 'Pensacola', 'FL', 32501, 640, 'faculty'),
(59, 'SSanders@weu.edu', 'password', 'Suli', 'Sanders', '30-12 VERDUN WAY', 'Reno', 'NV', 89501, 322, 'faculty'),
(60, 'SAnderson@weu.edu', 'password', 'Sean', 'Anderson', '977 ELLINGTON AVE', 'Reno', 'NV', 89501, 783, 'faculty'),
(61, 'SAlexander@weu.edu', 'password', 'Sean', 'Alexander', '89-48 ARBOR ST', 'Coldwater', 'MI', 49036, 489, 'faculty'),
(62, 'JKelly@weu.edu', 'password', 'Janice', 'Kelly', '6911 EL DORADO ST', 'Ashland', 'NH', 3217, 489, 'faculty'),
(63, 'NEvans@weu.edu', 'password', 'Nancy', 'Evans', '43-76 MORNINGSIDE DR', 'New_Orleans', 'LA', 70112, 245, 'faculty'),
(64, 'TPhillips@weu.edu', 'password', 'Titi', 'Phillips', '110-102 ROSCOE ST', 'Santa_Fe', 'NM', 87500, 696, 'faculty'),
(65, 'RWhite@weu.edu', 'password', 'Ryan', 'White', '8530 ROSSMOOR DR', 'Sacramento', 'CA', 94203, 437, 'faculty'),
(66, 'HHayes@weu.edu', 'password', 'Hannah', 'Hayes', '108-39 SEACLIFF AVE', 'Laurel', 'MT', 59044, 105, 'faculty'),
(67, 'WClark@weu.edu', 'password', 'Wayne', 'Clark', '7144 WEDEMEYER ST', 'none', 'no', 0, 217, 'faculty'),
(68, 'JRichardson@weu.edu', 'password', 'Jacqueline', 'Richardson', '4159 BLANCHE ST', 'New_York', 'NY', 10001, 643, 'faculty'),
(69, 'SCampbell@weu.edu', 'password', 'Samantha', 'Campbell', '4025 CAMBRIDGE ST', 'Wichita', 'KS', 67201, 158, 'faculty'),
(70, 'EWright@weu.edu', 'password', 'Ethan', 'Wright', '7509 TOMPKINS AVE', 'Atlanta', 'GA', 30301, 625, 'faculty'),
(71, 'MKelly@weu.edu', 'password', 'Morgan', 'Kelly', '70-26 CENTRAL AVE', 'Pinedale', 'WY', 82941, 297, 'faculty'),
(72, 'GJames@weu.edu', 'password', 'Grace', 'James', '3178 BURR AVE', 'Freeport', 'ME', 4032, 614, 'faculty'),
(73, 'PHill@weu.edu', 'password', 'Patrick', 'Hill', '79-41 I-80 WESTBOUND', 'Anchorage', 'AK', 99501, 536, 'faculty'),
(74, 'MSanchez@weu.edu', 'password', 'Mary', 'Sanchez', '6867 WATERFRONT ST', 'Sacramento', 'CA', 94203, 490, 'faculty'),
(75, 'EBryant@weu.edu', 'password', 'Emily', 'Bryant', '28-35 BATTERY EAST RD', 'Kansas_City', 'KS', 50301, 737, 'faculty'),
(76, 'GBailey@weu.edu', 'password', 'Gina', 'Bailey', '7710 INNES AVE', 'Coldwater', 'MI', 49036, 586, 'faculty'),
(77, 'JTorres@weu.edu', 'password', 'Joshua', 'Torres', '6933 VISTA VIEW CT', 'Tulsa', 'OK', 74101, 721, 'faculty'),
(78, 'JWilliams@weu.edu', 'password', 'Jason', 'Williams', '107-96 FRIEDELL ST', 'Hartford', 'CT', 6101, 719, 'faculty'),
(79, 'MBrooks@weu.edu', 'password', 'Malay', 'Brooks', '7959 DICKINSON ST', 'New_Orleans', 'LA', 70112, 675, 'faculty'),
(80, 'RParker@weu.edu', 'password', 'Raquila', 'Parker', '6392 ROANOKE ST', 'Montpelier', 'ID', 83254, 460, 'faculty'),
(81, 'CPerez@weu.edu', 'password', 'Charles', 'Perez', '35-30 HAWKINS LN', 'Chicago', 'IL', 60002, 314, 'faculty'),
(82, 'JLewis@weu.edu', 'password', 'Jeremy', 'Lewis', '10-79 TALBERT CT', 'Coldwater', 'MI', 49036, 338, 'faculty'),
(83, 'EWashington@weu.edu', 'password', 'Ethan', 'Washington', '44-106 COLIN P KELLY JR ST', 'Phoenix', 'AZ', 85001, 599, 'faculty'),
(84, 'CParker@weu.edu', 'password', 'Caitlin', 'Parker', '4374 ANTONIO ST', 'Hazard', 'KY', 41701, 317, 'faculty'),
(85, 'JBennett@weu.edu', 'password', 'Jonathan', 'Bennett', '8481 COLTON ST', 'Los_Angeles', 'CA', 90001, 544, 'faculty'),
(86, 'LCampbell@weu.edu', 'password', 'Lauren', 'Campbell', '80-45 CRESTA VISTA DR', 'Austin', 'TX', 78701, 587, 'faculty'),
(87, 'PAlexander@weu.edu', 'password', 'Philip', 'Alexander', '108-98 AGUA WAY', 'Killington', 'VT', 5751, 477, 'faculty'),
(88, 'DWalker@weu.edu', 'password', 'Deborah', 'Walker', '3143 GATUN ALY', 'Tulsa', 'OK', 74101, 168, 'faculty'),
(89, 'RBrooks@weu.edu', 'password', 'Ronald', 'Brooks', '44-63 QUICKSTEP LN', 'Boston', 'MA', 2101, 354, 'faculty'),
(90, 'LRamirez@weu.edu', 'password', 'Lee', 'Ramirez', '8427 SHORE VIEW AVE', 'Miami', 'FL', 33124, 395, 'faculty'),
(91, 'RWilliams@weu.edu', 'password', 'Russell', 'Williams', '9421 MALTA DR', 'Livingston', 'NJ', 7039, 475, 'faculty'),
(92, 'JPrice@weu.edu', 'password', 'Jordan', 'Price', '69-81 AUTOMOBILE DR', 'Wichita', 'KS', 67201, 161, 'faculty'),
(93, 'DWright@weu.edu', 'password', 'Deepa', 'Wright', '8378 NEPTUNE ST', 'Kansas_City', 'KS', 50301, 565, 'faculty'),
(94, 'BTaylor@weu.edu', 'password', 'Brandon', 'Taylor', '7671 SANTA ROSA AVE', 'Killington', 'VT', 5751, 766, 'faculty'),
(95, 'EFlores@weu.edu', 'password', 'Evelyn', 'Flores', '7827 VAN NESS AVE', 'Des_Moines', 'IA', 52801, 591, 'faculty'),
(96, 'AHill@weu.edu', 'password', 'Ashley', 'Hill', '5956 RODRIGUEZ ST', 'Oxford', 'NC', 27565, 266, 'faculty'),
(97, 'JMartinez@weu.edu', 'password', 'Jesse', 'Martinez', '6310 BERWICK PL', 'Reno', 'NV', 89501, 443, 'faculty'),
(98, 'HSimmons@weu.edu', 'password', 'Helen', 'Simmons', '35-91 CAMELLIA AVE', 'Laurel', 'MT', 59044, 107, 'faculty'),
(99, 'GHill@weu.edu', 'password', 'Gabriel', 'Hill', '4320 FUNSTON AVE', 'Cleveland', 'OH', 44101, 588, 'faculty'),
(100, 'APowell@weu.edu', 'password', 'Alexis', 'Powell', '7358 STILL ST', 'Montpelier', 'ID', 83254, 476, 'faculty'),
(101, 'MWilliams@weu.edu', 'password', 'Michael', 'Williams', '3361 MCALLISTER ST', 'Hazard', 'KY', 41701, 145, 'faculty'),
(102, 'ABell@weu.edu', 'password', 'Austin', 'Bell', '7353 COMERFORD ST', 'Montpelier', 'ID', 83254, 324, 'faculty'),
(103, 'RHoward@weu.edu', 'password', 'Russell', 'Howard', '53-60 MALTA DR', 'Dover', 'DE', 19901, 540, 'faculty'),
(104, 'RWashington@weu.edu', 'password', 'Rebecca', 'Washington', '32-82 DICHA ALY', 'Santa_Fe', 'NM', 87500, 208, 'faculty'),
(105, 'ABailey@weu.edu', 'password', 'Albert', 'Bailey', '69-82 PINTO AVE', '62701,62709', 'IN', 62701, 602, 'faculty'),
(106, 'SLong@weu.edu', 'password', 'Sean', 'Long', '61-75 GILLETTE AVE', '62701,62709', 'IN', 62701, 787, 'faculty'),
(107, 'DHall@weu.edu', 'password', 'Denise', 'Hall', '69-97 JUSTIN DR', '20001,20020', 'DC', 20001, 606, 'faculty'),
(108, 'JRamirez@weu.edu', 'password', 'Judith', 'Ramirez', '2211 MANSELL ST', 'Cleveland', 'OH', 44101, 519, 'faculty'),
(109, 'LBennett@weu.edu', 'password', 'Lisa', 'Bennett', '3508 ASHBURY ST', 'Hazard', 'KY', 41701, 132, 'faculty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_Id`);

--
-- Indexes for table `advisor`
--
ALTER TABLE `advisor`
  ADD KEY `advisor_ibfk_1` (`faculty_id`),
  ADD KEY `advisor_ibfk_2` (`student_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `section_id` (`section_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `class_registration`
--
ALTER TABLE `class_registration`
  ADD KEY `section_id` (`section_id`),
  ADD KEY `class_registration_ibfk_2` (`student_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`,`dept_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `day`
--
ALTER TABLE `day`
  ADD PRIMARY KEY (`day_name`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`),
  ADD KEY `department_ibfk_1` (`faculty_chair_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`Faculty_Id`),
  ADD KEY `faculty_ibfk_2` (`Dept_Id`);

--
-- Indexes for table `grad_part`
--
ALTER TABLE `grad_part`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `grad_program`
--
ALTER TABLE `grad_program`
  ADD PRIMARY KEY (`grad_program_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `grad_program_requirements`
--
ALTER TABLE `grad_program_requirements`
  ADD KEY `grad_program_id` (`grad_program_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `grad_registration`
--
ALTER TABLE `grad_registration`
  ADD KEY `grad_program_id` (`grad_program_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `grad_student`
--
ALTER TABLE `grad_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `holds`
--
ALTER TABLE `holds`
  ADD PRIMARY KEY (`hold_type`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`major_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `major_requirements`
--
ALTER TABLE `major_requirements`
  ADD PRIMARY KEY (`major_id`,`req_course_id`);

--
-- Indexes for table `minor`
--
ALTER TABLE `minor`
  ADD PRIMARY KEY (`minor_id`,`dept_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `minor_requirements`
--
ALTER TABLE `minor_requirements`
  ADD PRIMARY KEY (`minor_id`,`req_course_id`);

--
-- Indexes for table `prereq`
--
ALTER TABLE `prereq`
  ADD KEY `course_id` (`course_id`),
  ADD KEY `prereq_course_id` (`prereq_course_id`);

--
-- Indexes for table `researcher`
--
ALTER TABLE `researcher`
  ADD PRIMARY KEY (`Researcher_Id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`section_id`),
  ADD KEY `sections_ibfk_1` (`course_id`),
  ADD KEY `semester_id` (`semester_id`),
  ADD KEY `faculty_id` (`faculty_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `time_slot_id` (`time_slot_id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_history`
--
ALTER TABLE `student_history`
  ADD KEY `course_id` (`course_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `student_holds`
--
ALTER TABLE `student_holds`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `student_holds_ibfk_2` (`hold_type`);

--
-- Indexes for table `student_major`
--
ALTER TABLE `student_major`
  ADD PRIMARY KEY (`student_id`,`major_id`),
  ADD KEY `major_id` (`major_id`);

--
-- Indexes for table `student_minor`
--
ALTER TABLE `student_minor`
  ADD PRIMARY KEY (`student_id`,`minor_id`),
  ADD KEY `minor_id` (`minor_id`);

--
-- Indexes for table `time_period`
--
ALTER TABLE `time_period`
  ADD PRIMARY KEY (`time_period_id`);

--
-- Indexes for table `time_slot`
--
ALTER TABLE `time_slot`
  ADD PRIMARY KEY (`time_slot_id`);

--
-- Indexes for table `time_slot_days`
--
ALTER TABLE `time_slot_days`
  ADD KEY `day_name` (`day_name`),
  ADD KEY `time_slot_id` (`time_slot_id`);

--
-- Indexes for table `time_slot_period`
--
ALTER TABLE `time_slot_period`
  ADD PRIMARY KEY (`time_period_id`,`time_slot_id`),
  ADD KEY `time_slot_id` (`time_slot_id`);

--
-- Indexes for table `undergrad_full`
--
ALTER TABLE `undergrad_full`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `undergrad_part`
--
ALTER TABLE `undergrad_part`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `undergrad_student`
--
ALTER TABLE `undergrad_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `major`
--
ALTER TABLE `major`
  MODIFY `major_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `minor`
--
ALTER TABLE `minor`
  MODIFY `minor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `section_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `semester_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_period`
--
ALTER TABLE `time_period`
  MODIFY `time_period_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_slot`
--
ALTER TABLE `time_slot`
  MODIFY `time_slot_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`Admin_Id`) REFERENCES `user` (`User_Id`) ON DELETE CASCADE;

--
-- Constraints for table `advisor`
--
ALTER TABLE `advisor`
  ADD CONSTRAINT `advisor_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`Faculty_Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `advisor_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE;

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE;

--
-- Constraints for table `class_registration`
--
ALTER TABLE `class_registration`
  ADD CONSTRAINT `class_registration_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_registration_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`Dept_Id`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`Faculty_Chair_Id`) REFERENCES `faculty` (`Faculty_Id`) ON DELETE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`Faculty_Id`) REFERENCES `user` (`User_Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `faculty_ibfk_2` FOREIGN KEY (`Dept_Id`) REFERENCES `department` (`Dept_Id`) ON DELETE CASCADE;

--
-- Constraints for table `grad_part`
--
ALTER TABLE `grad_part`
  ADD CONSTRAINT `grad_part_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `grad_student` (`student_id`);

--
-- Constraints for table `grad_program`
--
ALTER TABLE `grad_program`
  ADD CONSTRAINT `grad_program_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`Dept_Id`) ON DELETE CASCADE;

--
-- Constraints for table `grad_program_requirements`
--
ALTER TABLE `grad_program_requirements`
  ADD CONSTRAINT `grad_program_requirements_ibfk_1` FOREIGN KEY (`grad_program_id`) REFERENCES `grad_program` (`grad_program_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `grad_program_requirements_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE;

--
-- Constraints for table `grad_registration`
--
ALTER TABLE `grad_registration`
  ADD CONSTRAINT `grad_registration_ibfk_1` FOREIGN KEY (`grad_program_id`) REFERENCES `grad_program` (`grad_program_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `grad_registration_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `grad_student`
--
ALTER TABLE `grad_student`
  ADD CONSTRAINT `grad_student_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE;

--
-- Constraints for table `major`
--
ALTER TABLE `major`
  ADD CONSTRAINT `major_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`Dept_Id`) ON DELETE CASCADE;

--
-- Constraints for table `major_requirements`
--
ALTER TABLE `major_requirements`
  ADD CONSTRAINT `major_courses_ibfk_1` FOREIGN KEY (`major_id`) REFERENCES `major` (`major_id`) ON DELETE CASCADE;

--
-- Constraints for table `minor`
--
ALTER TABLE `minor`
  ADD CONSTRAINT `minor_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`Dept_Id`);

--
-- Constraints for table `minor_requirements`
--
ALTER TABLE `minor_requirements`
  ADD CONSTRAINT `minor_requirements_ibfk_1` FOREIGN KEY (`minor_id`) REFERENCES `minor` (`minor_id`);

--
-- Constraints for table `prereq`
--
ALTER TABLE `prereq`
  ADD CONSTRAINT `prereq_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prereq_ibfk_2` FOREIGN KEY (`prereq_course_id`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `researcher`
--
ALTER TABLE `researcher`
  ADD CONSTRAINT `researcher_ibfk_1` FOREIGN KEY (`Researcher_Id`) REFERENCES `user` (`User_Id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sections_ibfk_2` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`semester_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sections_ibfk_3` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`Faculty_Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sections_ibfk_4` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sections_ibfk_5` FOREIGN KEY (`time_slot_id`) REFERENCES `time_slot` (`time_slot_id`) ON DELETE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `user` (`User_Id`) ON DELETE CASCADE;

--
-- Constraints for table `student_history`
--
ALTER TABLE `student_history`
  ADD CONSTRAINT `student_history_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `sections` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_history_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `class_registration` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_history_ibfk_3` FOREIGN KEY (`semester_id`) REFERENCES `sections` (`semester_id`) ON DELETE CASCADE;

--
-- Constraints for table `student_holds`
--
ALTER TABLE `student_holds`
  ADD CONSTRAINT `student_holds_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_holds_ibfk_2` FOREIGN KEY (`hold_type`) REFERENCES `holds` (`hold_type`) ON DELETE CASCADE;

--
-- Constraints for table `student_minor`
--
ALTER TABLE `student_minor`
  ADD CONSTRAINT `student_minor_ibfk_1` FOREIGN KEY (`minor_id`) REFERENCES `minor` (`minor_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_minor_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE;

--
-- Constraints for table `time_slot_days`
--
ALTER TABLE `time_slot_days`
  ADD CONSTRAINT `time_slot_days_ibfk_1` FOREIGN KEY (`day_name`) REFERENCES `day` (`day_name`) ON DELETE CASCADE,
  ADD CONSTRAINT `time_slot_days_ibfk_2` FOREIGN KEY (`time_slot_id`) REFERENCES `time_slot` (`time_slot_id`) ON DELETE CASCADE;

--
-- Constraints for table `time_slot_period`
--
ALTER TABLE `time_slot_period`
  ADD CONSTRAINT `time_slot_period_ibfk_1` FOREIGN KEY (`time_period_id`) REFERENCES `time_period` (`time_period_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `time_slot_period_ibfk_2` FOREIGN KEY (`time_slot_id`) REFERENCES `time_slot` (`time_slot_id`) ON DELETE CASCADE;

--
-- Constraints for table `undergrad_full`
--
ALTER TABLE `undergrad_full`
  ADD CONSTRAINT `undergrad_full_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `undergrad_student` (`student_id`) ON DELETE CASCADE;

--
-- Constraints for table `undergrad_part`
--
ALTER TABLE `undergrad_part`
  ADD CONSTRAINT `undergrad_part_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `undergrad_student` (`student_id`) ON DELETE CASCADE;

--
-- Constraints for table `undergrad_student`
--
ALTER TABLE `undergrad_student`
  ADD CONSTRAINT `undergrad_student_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
