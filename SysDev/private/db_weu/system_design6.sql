-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2020 at 03:56 AM
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
  `course_id` varchar(6) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `course_title` varchar(100) NOT NULL,
  `course_desc` varchar(1000) NOT NULL,
  `credits` int(1) NOT NULL DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `dept_id`, `course_title`, `course_desc`, `credits`) VALUES
('AS1152', 1, 'Themes in U.S. History', 'The course is an introduction to major issues in the history of the United States, from colonial times to the twentieth century. Topics may include: the origins of slavery and racism; industrialization and the growth of cities and suburbs; the growth of the American empire; movements for social change.', 4),
('AS1282', 1, 'Introduction to African American Studies', 'This is an introductory course in the themes and issues relevant to the inter-disciplinary field of African-American studies.  Topics  include:  the  origins  and  development  of  slavery  and  racism;  African-American  contributions  to  U.S. history; major African-American writers, artists, and thinkers; movements for political, racial, and economic equality.', 4),
('AS1512', 1, 'Introduction to Women\'s Studies', 'Explores the development of women’s lives, from childhood through adolescence to maturity. Focuses on the family, school, sexuality, and career options, and how these experiences and choices are affected by race, class, religion, ethnic origin, and gender. Readings include fiction, autobiography, history, and social science.', 4),
('AS2020', 1, 'New Media', 'This introductory lecture course will explore new and emerging media through a variety of perspectives including history, theory and technology.  Through weekly readings, class discussions, project case studies and hands-on experiments, students will examine new media storytelling strategies, including visualization and interactivity, and will explore emerging tools for production and user experience, such as virtual and augmented reality, drones and sensors.  Students will also examine the implementation and impact of new and emerging media on the fields of journalism, documentary media, and social activism.', 4),
('AS2112', 1, 'American People I', 'History of the American people to 1877, which emphasizes the diverse experiences and perspectives of women, people of color, working people, and other historically marginalized groups. Topics include the American Revolution and the Constitution, the origins and development of slavery, the development of Northern capitalism, territorial expansion and displacement of Native Americans, and the conflicts which led to the Civil War. Novels and films supplement more traditional texts.', 4),
('AS2122', 1, 'American People II', 'History of the American people, 1865 to present, which emphasizes the diverse experiences and perspectives of women, people of color, working people, and other historically marginalized groups. Topics include Reconstruc-tion, the Industrial Revolution and the growth of the corporation, the creation of the working class, World Wars and American expansion, Progressivism, the Depression and the New Deal, the rise of industrial unionism, the Cold War, and the Civil Rights movement and new challenges emerging with the rise of global capitalism. Novels and films supplement more traditional texts.', 4),
('AS2202', 1, 'Contemporary U.S. Society', 'An introduction to social, economic and political stratification in the United States. Sources and consequences of inequality are explored through an examination of educational, political, and occupational structures.', 4),
('AS2252', 1, 'U.S. Social Movements', 'This course explores the causal conditions, nature, and impact of progressive social movements in America. Vary-ing sets of activist biographies and social movement histories related either by period or theme will be selected for study. Possible topics include the abolition, temperance, feminist, peace, labor, civil rights, reproductive rights, and environmental movements.', 4),
('AS2262', 1, 'African American History I', 'This course examines the experiences of African Americans in the development of America from the Trans-Atlantic slave trade through the Civil War. Topics include plantation slavery, politics, economics, cultural production, gen-\r\n154der and intellectual pursuits. Emphasis on major movements and figures as well as ordinary individuals.', 4),
('AS2263', 1, 'African American History II', 'This course examines the experiences of African Americans in the development of America from 1865 through the twentieth century. Topics include Reconstruction, segregation, migrations, war, cultural production, entrepre-neurship and the push for civil rights. Emphasis on social and cultural history across class and gender lines.', 4),
('AS2300', 1, 'Problems in US Environmental History', 'This course examines the history of Americans’ interactions with the physical environment of the current United States from the European colonial period to the present. Through assigned readings, class discussions, short films, short writing assignments, and speakers, we will consider 500 years of human occupation of North America and its environmental consequences. We will examine how natural environments have established parameters for human economic and social activity, as well as how human beings have interpreted and then reshaped their environmental surroundings in an effort to satisfy their perceived needs. In addition, we will study how different groups of Americans have interacted in their quest to manage, control and distribute the resources of the land, and the impact of “race” and gender on perceptions of our place in and relationship to the non-human environment. ', 4),
('AS2640', 1, 'U.S. Latina/o History', 'This course will study the long history of Latina/os in the United States from the colonial era to the present, as well as explore important issues in Latina/o culture and politics. We will look in detail at the history of Mexican and Puerto Rican communities in the United States, and we will pay close attention to the impact of nationality, class, and gender in shaping Latina/o lives. This course will highlight the role of imperialism, racism, and nativism in structuring Latina/o opportunities in the United States, and will emphasize the social movements that Latinas/os have forged to resist such forces.', 4),
('AS2652', 1, 'Media Studies', 'How can we comprehend and critique the media that immerse us? Let’s examine the media in the context of the political and social economies within which they were developed. Drawing on a broad range of cultural theo-ries, this course addresses the functioning of media in a diverse and globalizing environment. A range of media is studied through scholarship and primary texts: art, movies, advertisements, interviews, novels, short stories, and photographs.', 4),
('AS2700', 1, 'The Engaged Eye', 'In this introductory course students are introduced to efforts by artists and reformers who use the camera for social change and social justice. The approach will be biographical and historical. Students will learn about the work of photographers such as Jacob Riis, Lewis Hine, and Dorothea Lange, along with more contemporary photogra-phers, by placing their photographic projects within the context of the artist’s life and times.', 4),
('AS2750', 1, 'Food', 'The  production,  consumption,  and  meanings  of  food  are  social,  cultural  and  political.  Only  recently  has  food  emerged as a subject of scholarly inquiry outside traditional domains of anthropology, nutrition, or agriculture. This course introduces students to prominent contemporary thinkers about food. Food is an interdisciplinary course drawing from history, environmental studies, documentary studies, sociology, anthropology, folklore, economics, critical race studies, and other fields. It will explore how food is understood, food and meal rituals, how food is produced, distributed, and consumed, with a focus on eating habits and the environment. The course will also introduce students to selected debates and initiatives around food: from diets such as vegetarianism, veganism, and locavorism; food and climate; the industrialization of food, the use of GMOs, food deserts, food insecurity, racial and gender injustice within the food justice movement, obesity and sizeism, a', 4),
('AS2802', 1, 'Introduction to Journalism and Media', 'Explores the historical and contemporary role of journalism and media in society, while also introducing students to basic media production concepts.  This course serves as an introductory survey for any student interested in media literacy for self-expression and civic participation and as a foundation course for media majors.  Units in print, audio, moving image and emerging media focus on writing and reporting, creative presentation, ethics and professional best practices.  May include visits to campus media facilities', 4),
('AS3100', 1, 'American Studies Seminar', 'This course is designed for American Studies majors, or those contemplating an American Studies major. The course will build appreciation of American Studies as interdisciplinary study. In preparation for the 5000-level capping \r\n155courses, this course builds students’ analytic, research and writing skills. The American Studies  Seminar focuses on a particular issue or theme, which will be announced each semester.', 4),
('AS3222', 1, 'Urban History', 'This course investigates urban history in the United States with a focus on the 20th century and on the role of race and ethnicity in shaping urban America. Using an array of scholarly texts, media, and primary source documents, this course will trace the social, economic, and cultural history of U.S. cities and the growth of their suburbs. Topics will include: the formation of early-twentieth century immigrant/ethnic communities and the advent of neighbor-hood segregation; the Great Migrations of African Americans to the urban North; white flight, suburbanization, and urban economic decline after WW II; urban “crisis” and radical anti-racism in the 1960s and 70s; gentrification, mass incarceration, and the rise of “Global Cities” toward the end of the century.', 4),
('AS3247', 1, 'Introduction to Video and TV', 'n this introductory course, students will learn the basics of television and video production:  camera operation, sound, lighting and editing for field and studio production.  Through hands-on workshops, screenings, lectures and readings, students will explore the visual language of the moving image as well as the conventional and experi-mental approaches to non-fiction video, students will learn to use moving images and sound for artistic expression and as a tool for effective communication.  Students will complete individual video projects shot in the field as well as a collaborative TV broadcast project produced in the television studio.', 4),
('AS3270', 1, 'Africa in the Americas', 'This course will explore the history of these scattered populations of Africa, their dispersal to the various regions of the world, especially the Western hemisphere, the circumstances and institutions which shaped the evolution of these diaspora communities, and the continuing physical and emotional ties to Africa and Africans. The dispersal of black people from their homes in the continent of Africa to the diverse geographical sites all around the world is one of the more momentous, historical and sociological events in the trajectory of world history.', 4),
('AS3310', 1, 'From Citizen to Consumer', 'American  society  has  transformed  since  its  founding  from  a  commercial  outpost  on  the  edge  of  the  Atlantic  to a complex industrial democracy. This course examines that transformation in light of its impact on notions of democracy, the work ethic and good citizenship and the shift toward a post-industrial empire of mass consump-tion and leisure. Using historical documents of political theorists, advocates and critics of consumerism, as well as social movements for consumer rights, alongside contemporary materials such as advertising campaigns and policy debates, students will explore how this change has altered our very notions of identity, democracy and citizenship. ', 4),
('AS3412', 1, 'African-American Women\'s History', 'This course focuses on the distinct experiences of African-American women in the 19th and 20th centuries. The course includes the experiences of women in slavery, social movements, abolition, anti-lynching, suffrage, civil rights, and Black Power as well as the writings and lives of the major figures.', 4),
('AS3432', 1, 'Women: Cultural Issues', 'An interdisciplinary course that looks at the lives of women across the world. Readings and materials focus on the variety of circumstances in which women live, the factors that directly influence their situation, the interaction between cultural constraints and existential possibilities, and women’s efforts to change and improve their own and others’ lives. In this course students also examine how women in multiple contexts utilize mass culture and develop new cultural forms to advance their interests.', 4),
('AS3462', 1, 'History of Women in the U.S.', 'This course surveys women’s experience from 1620 to the present. The course analyzes women’s connection to key aspects of American history such as the American Revolution, slavery and the 20th century development of the welfare state. This course posits women as agents of change in American history, but the course also examines how the study of women over time raises questions about traditional chronologies of American history. Students will be introduced to well-known and little known women and their individual and collective attempts to reshape American society through examination of diaries, autobiographies, fiction, government hearings and film.', 4),
('AS3622', 1, 'Sports and Society', 'Explore the prominent place of sports in the United States and other societies. What is the relationship of sports to larger questions of identity, politics, economics, and history? The course illuminates how class, race, gender, sexuality, and nation interplay in our understanding of sports and culture.', 4),
('AS3632', 1, 'History of U.S. Film', 'A history of film in the United States from the 1890’s to the present. It examines the social, political, economic, and cultural changes of different eras in relation to the emergence and popularization of modern cinema. Students must see and comment on all the films shown in the course.', 4),
('AS3711', 1, 'American Film Genres', 'An in-depth examination of classic genres of films in the United States. Genres studied may include silent comedy, the Western, the melodrama, the gangster film, science fiction, horror, and musical comedy. The course investi-gates the connection between genre forms and the development of Hollywood mythology and U.S. ideology.', 4),
('AS3722', 1, 'History of Mass Media', 'Learn the history of the mass media. We will examine the parts played by government, private enterprise, social movements, and technology in the development of the major. In addition to the political economy of the media, the course will cover the conflicts over civil liberties, mass culture, advertising, and the rise of consumer culture in America. ', 4),
('AS3732', 1, 'Politics of Media', 'Using a broad definition of politics –not only the world of elections or of governance, but of power relations in everyday life—this course examines how political structures affect the mass media, and how the mass media are a strong influence in politics. The ways in which the media promotes democracy and citizenship, but also con-stricts democracy, are central to the course. The branding of culture, corporate consolidation, and the images of women and minorities in the media are all examined, as are various forms of the media including film, the Internet, and television.', 4),
('AS3735', 1, 'Documentary Media Studies', 'What is reality?  Can truth be captured and represented?  Learn about documentary film, photography and new media projects from the birth of photography to today. Watch and critique seminal documentary projects. Ex-plore documentary as political expression, entertainment, art, journalism, propaganda and self-portrait. Lectures, readings and discussions focus on forms and styles of non-fiction storytelling, the role of documentaries in society, and documentary ethics and practice.', 4),
('AS3742', 1, 'Myths and Images in Film', 'This course examines the movies in terms of social myths and social values. It looks at representative films from the United States, Europe, Latin America and Africa. It explores film form as well as content and their relationship to each other.', 4),
('AS3745', 1, 'Film and Gender', 'This course examines the social, historical, and technological construction of film as a medium as well as the so-cial and technological construction of gender.  By looking at contemporary American films, students will reflect upon and critique the various representations of gender conformity and fluidity.  The intent of the class is to both expand an understanding of gender and to identify the ways in which film reinforces binary notions of gender and gender roles.', 4),
('AS3800', 1, 'Writing for Media', 'The course combines instruction in the craft of journalism and teaches students to write accurately and clearly and to meet deadlines. The basics of good reporting whether for print, broadcast, or internet journalism are stressed, including how to gather and verify  information, where to look for stories, how to interview, how to use sources, and how to report in a fair and balanced manner. Students will write about and cover a variety of news events and issues.', 4),
('AS3810', 1, 'Music and Media', 'A history of American popular music: Follow changes in American musical culture from work songs and parlor pianos to auto-tune and streaming media. This course will cover the cultures, politics, and economics of music-making and profit-taking in the history of popular music, the music business, and the media in the U.S.', 4),
('AS3820', 1, 'Radio Production and Editing', 'Learn  the  basic  techniques  of  radio  production.  Students  will  learn  basic  interviewing  skills,  studio  production  and mixing techniques, and how to manipulate digital audio recordings in post-production using industry editing software. Learn the basics of the three phases of production, including how to plan, script, create and edit radio content at the college radio station, WEUR, Witherspoon Eastern University Radio.', 4),
('AS3822', 1, 'TV and Radio Journalism', 'This  course  explores  the  history,  the  present  situation  and  possible  future  of  electronic  journalism  in  the  United  States. It is also a practical course in which students work toward proficiency in television and radio journalism. They learn about -- and do -- newswriting, newscasting and, utilizing the College’s television studio, join together in producing television programs. They also work on field reporting or electronic news gathering. There is training in the use of audio equipment, cameras and a special effects generator or switcher. The basics of editing using the College’s television editing laboratory are explored. Students write papers which critique and compare news programs on television.', 4),
('AS3830', 1, 'Public Relations and Society', 'The course examines the role of public relations in the media, corporate culture, politics and society. This is an intermediate-level course that is designed for students who previously have not taken formal instruction in public relations. Students receive instruction in the basics of public relations and perform exercises intended to equip them with a working knowledge of the field.', 4),
('AS3840', 1, 'African-Americans and the Mass Media', 'Examines  the  participation  of  African-Americans  in  the  development  of  mass  media  in  the  U.S.  by  looking  at  newspapers, magazines, books, radio, records, movies, and television. The course will explore the viewpoints of African-Americans through the mass media, how they are presented and represented, and how the white-owned media influences African-American images.', 4),
('AS3852', 1, 'Women and the Media', 'This course explores the ways women are depicted by the mass media and how that depiction has changed over time. It also investigates the role of women in the media profession.', 4),
('AS4150', 1, 'Radio on the Air', 'Acquire advanced production techniques and radio programming skills. Learn advanced interviewing skills, pro-duction and mixing techniques, and advance your digital audio recording and editing skills. Gain proficiency with programming, and monitor issues and trends in the industry. Students will produce a live weekly news and entertain-ment magazine radio show on the college radio station, WEUR, Witherspoon Eastern University Radio.', 4),
('AS4160', 1, 'Special Topics in Media Studies', 'Offers an in-depth exploration of a special topic in media studies, in an area defined by the instructor. Topics might include political campaigns and the media; the first amendment; public and private spheres in the digital age; “branding”; or a specific musical or film genre (such as a course in Rock and Roll, the Blues, or the Hollywood Musical). The course allows for a deeper theoretical, historical, institutional and/or political analysis of media and its power in American life. Students can take more than once as an Independent Study.', 4),
('AS4170', 1, 'Special Topics in American Studies', 'This course addresses a special topic in the history, society and/or culture of the U.S. The specific topic will be announced by the Department when offered. The course may be repeated for credit up to two times if course topic changes. ', 4),
('AS4202', 1, 'Internship in Government and Community', 'This internship is for students who would like experience working in politics, government, or community agencies. Students are placed to develop practical skills in public sector groups and agencies. Students compile a portfolio and 10-15 page essay on the experience. This is an excellent opportunity for students who think they might want to work in government or community affairs.', 4),
('AS4212', 1, 'Early America', 'An examination of U. S. society from the Native American experience to European settlement through the Jackso-nian era. Topics include:  Puritanism, origins and development of slavery, American Revolution, growth of market relations, and the historical relationship between forms of economic development, social, intellectual, and religious life and politics.', 4),
('AS4215', 1, 'Critical Ideas in American History', 'This course examines the intellectual history of the U.S. from Puritanism to the present. Topics may include Religion, Democracy, Transcendentalism, Social Darwinism, Progressivism, Pragmatism, Conservatism, Socialism, Keynesian-ism and Feminism. Students will use historical documents and the works of major intellectual figures to explore the many facets of the American intellectual tradition.', 4),
('AS4218', 1, 'Civil War and Reconstruction', 'This course provides an in-depth examination of the coming of the Civil War, Reconstruction and the formative  impact of these events on the development of American society. Topics covered include:  slavery; abolitionism; sectional conflict; the emergence of tenant farming and debt patronage; the rise of Jim Crow; constitutional guarantees and the limits of equality. Special attention will be given to issues of race, class and gender in consid-ering the constitutional, political, economic, cultural and demographic changes that led to and followed from America’s “Second Revolution.”  Films, novels, diaries, first person narratives and other primary sources will supple-ment historical works.', 4),
('AS4222', 1, 'The Emergence of Modern America', 'An exploration of social, political, economic and cultural life from the Civil War through the 1920’s. Topics include the growth of the modern industrial system, the emergence of the corporation, immigration, migration, the de-velopment of the labor movement, consumer culture, populism, the rise of Progressivism, women’s suffrage and the Harlem Renaissance. We will also explore the backlash against reform in the red scare following World War I.', 4),
('AS4250', 1, 'Immigration Today', 'Since 1965 millions of new immigrants have landed on the shores and the airports of the United States. While often compared  with  earlier  immigrants,  they  diverge  from  their  predecessors  in  numerous  and  important  ways.  This  course will explore several broad thematic and theoretical issues in the changing nature of U.S. immigration. The aim is to introduce the students to a number of “conversations” and scholarship pertaining to where our society is now, relative to dealing with the political, economic, social and other demographic challenges which emanate from this immigration. Video and documentary presentations will be used to supplement the lectures and read-ing materials.', 4),
('AS4252', 1, 'Immigration History', 'This course will examine the history of immigration to, and migration within, the United States from the colonial era to the present, including forced migrations, such as the African slave trade. We will consider the full range of the migration experience, including what compelled or inspired people to leave their homelands, the means of their migration, and how they settled in their new homes. In addition, we will look at the cultural transformations precipitated by immigration including the creation of ethnic identities, assimilation, and transculturation. Various forms of nativist sentiment and practice will be addressed, as well as migrant and ethnic resistance to nativism, racism, and exploitation.', 4),
('AS4253', 1, 'Latino New York', 'This course will explore the history of Latina/o communities in New York City and its surrounding suburbs from the 1940s to the present day. We will take an interdisciplinary approach to study diverse Latina/o experiences of im-migration, labor, discrimination, disinvestment, and gentrification, as well as the long history of Latina/o activism and cultural production in the city. There can be no doubt that Puerto Ricans, Dominicans, Salvadorans, and other Latina/os have profoundly influenced the culture, economics, and politics of Metro New York, and this course will trace that history.', 4),
('AS4260', 1, 'New Media Newsroom', 'Students will be immersed in an intensive, fast-paced environment that reflects real world experience in the me-dia industry. Emphasis will be placed on writing, critical thinking, and creativity. The course will also explore the technical, philosophical, and practical elements of online journalism. By the end of this course students will have acquired a multitude of skills that will give them a competitive edge in the media field.', 4),
('AS4280', 1, 'Global Media', 'The American media compete in a global market. American media have become a dominant source of informa-tion and entertainment world wide. The course will examine the role of the American corporate media in a world of increasing global political, economic, and cultural competition, and collaboration. It will also examine the rise of new media alternatives in reaction to the dominance of the global corporate media.', 4),
('AS4282', 1, 'America in War and Peace: 1898 to 2001', 'How does the American experience of war across the 20th century help us to comprehend the events of 9/11 and War on Terror in the 21st century? How has war affected our lives, the economy, politics and culture? Why did the United States become a world power in our war with Spain at the beginning of the 20th century? How has war shaped our nation at home and abroad ever since? We will discuss the political, economic, and cultural impact of American involvement in the Spanish-American War, World War I, World War II, the Cold War, the Korean War, Vietnam War and the Gulf War.', 4),
('AS4283', 1, 'America Between the World Wars', 'This course examines pivotal decades in twentieth century U.S. history from WW I through WW II. Selected topics include the Great Depression and the New Deal, the rise of America’s administrative and welfare state; transitions in social reform traditions; women and youth cultures; the expansion of consumer culture; and the World Wars and their effects on American society, culture, and global position.', 4),
('AS4285', 1, 'Vietnam and After', 'The specter of the American war in Vietnam and Southeast Asia continues to haunt the United States. This course is a history of the war and its effects on American foreign policy, domestic politics and culture. It will begin with an examination of the struggle for Vietnamese independence from French colonialism and culmi-nate in a discussion of the lessons of the war for America in the post Cold War era. Some of the topics to be discussed will include the Cold War and world politics; domestic politics and the economy; the role of the mass media; the anti-war movement; racial and class politics; and the effect of the war on those who served and those who resisted.', 4),
('AS4290', 1, 'Youth in America: A History', 'This course will examine the history of conflicting ideas about youth and childhood in our society. We examine the images and ideas of youth as portrayed in the media from the colonial era to the present. Special attention will be paid to the role of children in the politics of race, class, gender, family, education and mass media.', 4),
('AS4292', 1, 'America Since WWII: 1945-1989', 'An in depth examination of U.S. history and culture from WW II to the end of the Cold War with a special emphasis on the role of the media and mass culture. Beginning with a discussion of the effects of the World War on the politics, economics and culture of the United States this course will debate each of the major political and cultural conflicts that have marked the end of the Twentieth century. Selected topics may include:  Cold War politics, cul-ture and foreign policy; Civil Rights struggles; Women’s liberation; The suburbs; Television and mass culture; Youth culture and rebellion; Ecology movement; Gay rights movement; The Reagan Revolution; The Culture Wars; and Religious conservative and “Right to Life” movement.', 4),
('AS4402', 1, 'History of the Family in the U.S.', 'Examines the changing structure of American families over the past 300 years:  how they have differed according to class, race and ethnicity, and the forces that have continued to influence family life. Topics include:  Puritan families; African-American families in slavery and freedom; immigrant and middle-class families at the turn of the 20th century, and the modern family. The course uses a variety of materials:  films, historical articles and docu-ments, and novels.', 4),
('AS4420', 1, 'History of New York City and State', 'This course examines the social, cultural, economic, political and demographic development of New York City and State from colonial America to the present. Historical documents, fiction and films about New York will provide the material for a critical discussion about the multicultural heritage of the Empire State.', 4),
('AS4432', 1, 'History of the Women\'s Movement', 'This course explores the Women’s Movement across three distinct centuries. It examines both the first wave: 19th Century modern women’s rights and suffrage movement, the second wave: the 20th Century modern women’s liberation movement, along with the multiple forms of feminism that have followed. How did the movements arise, who were their constituents and enemies, how were their goals met? What strategy, ideology, and tactics were used? Readings will consist of historical and theoretical documents, poems, autobiographies, oral histories, film and pro-feminism and anti-feminism ephemera.', 4),
('AS4435', 1, 'Women of Color Feminisms', 'This interdisciplinary course examines women of color feminism and its historical, intellectual, cultural, and politi-cal formation. We will consider theoretical contributions of women of color feminisms such as “intersectionality,” “hybridity, expressed as borderlands,” and “coalition through difference” as well as women of color feminism’s critiques and strategies of resistance to oppressive forces. Exploring these theoretical contributions through writings, first-person narratives, fiction, film, spoken word, and music, this course explores issues of identity, representation, rights, policy and the significance of interesting categories of race, gender, class, ethnicity, sexuality, and nation in the lives of women of color historically and in contemporary society. While the course focuses on relationships across and within the United States, the nature of these identities, alliances, and texts often transcends the borders of the United States.', 4),
('AS4442', 1, 'Feature Writing', 'This is a practical course in the basics of writing feature articles for newspapers and magazines. Students learn how to research, write, and edit feature articles. They will study the different techniques used in a variety of feature articles - human interest, travel, seasonal, humor, sports, science, personality profiles, and personal experiences - and write such articles themselves.', 4),
('AS4715', 1, 'African-American Thought and Culture', 'This  course  examines  the  ideas  of  social  change  that  developed  from  slavery  to  the  present  among  African  American thinkers and activists. It begins by examining the assumptions and aspirations expressed in abolition-ism, nationalism, folklore, suffrage and Pan-Africanism that developed in the antebellum period. It proceeds to analyze the related cultural, political and economic ideas that have emerged throughout the twentieth century.  The course stresses the role played by culture and ideas in the process of social change.', 4),
('AS4722', 1, 'Film: Ideas and Aesthetics', 'The course treats film in relation to modern theories and aesthetic techniques and offers tools for developing an in-depth analysis of film form and content. Instructor may focus upon the ideas and aesthetics of particular chronological eras, auteurs, and film movements such as African American cinema or feminist filmmaking. The primary focus is to introduce the complexity of film analysis within the framework of close readings of specific films.', 4),
('AS4725', 1, 'The Photograph and American Culture', 'The course treats film in relation to modern theories and aesthetic techniques and offers tools for developing an in-depth analysis of film form and content. Instructor may focus upon the ideas and aesthetics of particular chronological eras, auteurs, and film movements such as African American cinema or feminist filmmaking. The primary focus is to introduce the complexity of film analysis within the framework of close readings of specific films.', 4),
('AS4732', 1, 'Political Film', 'From wars and elections, to civil rights and civil liberties, feature films and documentaries have influenced Ameri-can public opinion and policies. Through in-class screenings and discussion, this course will examine the historical period in which selected motion pictures were produced and explore the immediate and long-term impact of the films. The screenings may include Do the Right Thing, Fahrenheit 9/11, and Easy Ride.', 4),
('AS4802', 1, 'Investigative Reporting', 'What is now called investigative Reporting is an especially American journalistic pursuit of exposing corruption and abuses by individuals and institutions, inequity and unfairness, and revealing danger. The theory of this jour-nalistic form is that if people are informed of such problems, they will demand a resolution. The course focuses on the philosophy and history of the enterprise, from the crusading journalism of the early years of the press in what became the United States, through the Muckraking Era of the early 20th century, through Watergate, through the  founding  of  Investigative  Reporters  and  Editors,  to  the  present  investigative  reporting  scene  in  print,  radio,  television and on the Internet. Students will conduct research on the history of investigative reporting. They will learn techniques of investigation and proof and do their own investigative reporting in print or electronic forms of media.', 4),
('AS4812', 1, 'Editing for Publication', 'This is an advanced journalism course in which students receive intense preparation in reporting and writing for newspapers, magazines and the internet.', 4),
('AS4822', 1, 'Advanced Reporting and Newswriting', 'This is an intensive course in producing well-crafted, polished news stories. It teaches students the various forms of newswriting:  hard news, foreign affairs, editorial, obituary and sports writing. Form, content and speed in prepara-tion are stressed.', 4),
('AS4825', 1, 'Making a Newspaper/Magazine', 'This course will cover the editorial and production elements of publishing. A hands-on course, students will produce a newspaper and magazine in print or online. They will also learn to write in various editorial genres and evaluate print publications and web sites.', 4),
('AS4832', 1, 'Internship in Journalism and Media', 'This  internship  gives  students  the  opportunity  to  work  at  a  newspaper,  magazine,  radio  or    television  station  or  Internet source to learn practical journalism in a real-life environment. Students meet with the instructor to discuss \r\n161their progress, compile a portfolio of work done on the internship, and write an essay on their experience. The internship is an excellent opportunity for students who are interested in a career in the media to gain experience and develop contacts. ', 4),
('AS4850', 1, 'Digital Revolution', 'We are in the midst of a profound technological and historical change: the Digital Revolution. Digital networks of communication permeate nearly every aspect of our life, yet we understand very little about them, their histori-cal development, conflicts over their use, and their impact on our way of life. This course will look at the cultural, technological, economic, and political impact of the digital revolution.', 4),
('AS4852', 1, 'Advanced Video: Documentary', 'Produce, shoot and edit original documentary videos. Explore the fundamental techniques of and approaches to non-fiction video production. Through readings, class descriptions, screenings of existing documentaries and student work-in progress, students develop their own voices as media makers, moving beyond traditional structures and notions of “objectivity” to explore documentary as artistic social expression.', 4),
('AS4870', 1, 'Advanced TV: Studio Production', 'This course advances students’ understanding and execution of television production. Students learn the three stages of production:  how to script, plan, and produce a segment; how to set up and shoot; and how to pack-age it during the editing process.', 4),
('AS4882', 1, 'Radio Reporting', 'Learn the ethics and practices of radio journalism. This course emphasizes news content and develops radio re-porting skills in the field and on-air. We will review the business of news and news gathering, working with acquiring sound bites, actualities and natural sound, seasonal and specialized coverage, programming and management decisions, criteria and types of stories, and the roles of social media and the internet. Students will be using digital field reporting technologies to produce, and broadcast a live weekly news radio show on the college radio sta-tion, WEUR, Witherspoon Eastern University Radio.', 4),
('AS4935', 1, 'TV in Action', 'n  this  advanced  course,  students  will  build  on  previous  experience  to  develop  high-quality  projects.  Students  will take prior production knowledge and demonstrate their skills at the College television station, OWTV, in the areas of News, Sports, Talk, Public Affairs, or Entertainment programming as defined by the instructor. Students will distribute works on-air on closed circuit cable channel 3, and on-line.', 4),
('AS4940', 1, 'Journalism in Action', 'In this advanced course, students with prior production experience will create professional quality projects. Students will learn industry workflow and best practices to prepare them for professional opportunities. Special projects will be defined by the instructor.', 4),
('AS4945', 1, 'Radio in Action', 'In  this  advanced  course,  students  will  build  on  previous  experience  to  develop  high-quality  projects.  Students  will  take  prior  production  knowledge  and  demonstrate  their  skills  at  the  College  radio  sta-tion, WEUR, Witherspoon Eastern University Radio, in the areas of News, Sports, Talk, Public Affairs, or Entertain-ment  programming  as  defined  by  the  instructor.  Students  will  distribute  works  on-air,  and  on-line.', 4),
('AS4955', 1, 'New Media in Action', 'In this advanced course, students with prior production experience will create professional quality projects. Students will learn industry workflow and best practices to prepare them for professional opportunities. Special projects will be defined by the instructor.', 4),
('AS4965', 1, 'Video in Action', 'In this advanced course, students with prior production experience will create professional quality projects. Students will learn industry workflow and best practices to prepare them for professional opportunities. Special projects will be defined by the instructor.', 4),
('AS5000', 1, 'Topics in U.S. History in Global Perspective', 'This course will take an international perspective on the history of the United States. Thematic, geographic, and chronological focus will vary by instructor, but all courses will situate American history in the context of a global \r\n162(or regional) historical development, compare an aspect of U.S. history with that of another country (or region), or explore the U.S.’s relationship with another country (or region). Potential topics might include: U.S. imperialism in Puerto Rico and the Philippines; a comparative history of slavery and abolition in the Americas; the history of the U.S. in the Middle East; the American, Haitian, and French revolutions; the colonial Atlantic World; women’s rights movements in the U.S. and Europe; or the global Cold War.', 4),
('AS5112', 1, 'American Voices', 'This course will focus on 20th century American voices as they have developed in diverse media-novels, film, music, TV and computers. Individual speakers will be used to represent influential groups or trends that emerged and the themes and issues associated with them.', 4),
('AS5200', 1, 'Environmental Journalism', 'Historically rooted in the writings of early American naturalists like John Muir and Progressive muckrakers like Upton Sinclair, modern environmental journalism began with the publication in 1962 of Rachel Carson’s Silent Spring.  As environmental concerns have multiplied in recent years, the field has greatly expanded. This course examines both the history and current status of this journalistic specialty. Students will learn and practice techniques of environmental journalism.', 4),
('AS5212', 1, 'Narrative and History', 'This senior seminar looks at “point of view” in historical writing, the multiple “ways of seeing” history, and the vari-ous approaches that scholars and writers have employed in order to think and write about the past. The readings that have been selected exemplify the advantages and limitations of the political, economic, social and cultural perspectives and the interpretive possibilities of narrative, biography and fiction.', 4),
('AS5312', 1, 'History of US Culture', 'This senior seminar examines the evolution of U.S. culture from a multicultural perspective. Special attention will be paid to the role that culture plays in social control and social change.', 4),
('AS5350', 1, 'History of the Slave Narrative', 'This senior seminar examines the historical forces of how authors of slave narratives sought to shape public opinion about emancipation, equality and culture. The ways in which this literary genre changed across time and location will receive critical attention.', 4),
('AS5412', 1, 'Protest and Change', 'This senior seminar provides an in-depth exploration of several movements for social change in U.S. history. Topics can include:  the American Revolution, movements for women’s rights, populism, abolitionism, peace movements, and movements for the rights of African-Americans.', 4),
('AS5420', 1, 'Propaganda and Mass Persuasion', 'Can American democracy survive in a society dominated by powerful media and sophisticated mass persuasion? This senior seminar is a history of war and political propaganda with a focus on the role of propaganda in the conflicts between social movements and powerful institutions. The rise of public relations and its role in politics and the mass media will be an important theme.', 4),
('AS5712', 1, 'Mass Media and Popular Culture', 'This senior seminar focuses on the relation between mass media and different forms of popular culture and ex-plores different theoretical approaches to the understanding of media in modern society. The course examines how popular media communicate ideas about the world, about identity, and our sense of self. Reading across television, film, music, art, and the popular press, the course considers relationships between the mass media, in-stitutions, identity, relations of power, and historical, economic, social, and political contexts.', 4),
('AS5725', 1, 'Senior Media Portfolio', 'In this capstone production course, students create an online media portfolio in their chosen medium.  Throughout the term, work samples are developed and improved through individualized study and regular critique.  Typically offered as a blended course with a mix of online and face-to-face instruction.', 4),
('AS5800', 1, 'Research in American History and Culture', 'In this course, students will learn how to do historical research including use of primary documents, archival re-search, quantitative methods and oral history. Using these techniques, students will then write a research paper.', 4),
('AS5862', 1, 'The Journalist as Creative Writer', 'Many American journalists have written fiction and creative nonfiction. This course examines both types of writing and studies, for example, the works of Mark Twain, Ernest Hemingway, Joan Didion, Alex Haley, and Hunter Thomp-son. It explores “personal journalism” and the “new journalism” of the sixties and seventies. Students will practice literary journalism themselves by writing several fiction and non-fiction pieces.', 4),
('AS9000', 1, 'Senior Media Fellows', 'Students work independently on a media production project and provide peer support —such as tutoring, work-shops, and the creation of production manuals—to other production students. Fellows work closely with a faculty mentor throughout the semester.', 4),
('AS9990', 1, 'Independent Study', 'Students may elect to work on an independent project in American Studies, Media Studies or Media Production. They will work closely with a faculty member to design a contract that outlines the reading, writing and production requirements for this project, as well as a timetable for completion.', 4),
('BS1000', 2, 'Plants and Society', 'A one semester lecture/laboratory course in general botany for non-science majors. The course covers the prin-ciples of plant anatomy and physiology, as well as the impact of plants and agriculture on society. Topics covered include the use and history of plants  as food, medicines, and poisons.', 4),
('BS2100', 2, 'Biology for Non-science Majors', 'A one-semester lecture/laboratory course in general biology for non-science majors. Surveys the major concepts and principles of biology, including cell structure and function, genetics, ecology, diversity and evolution. Topics related to the human experience are also discussed.', 4),
('BS2300', 2, 'Anatomy and Physiology I Lecture and Lab', 'This is the first semester of a two-semester sequence in which human anatomy and physiology are studied using a body systems approach, with emphasis on the interrelationships between form and function at the gross and microscopic levels of organization. This course is a pre-requirement for students pursuing a career in the Allied-Health Sciences, e.g. nursing and physician assistant. Topics include: basic anatomical and directional terminol-ogy, fundamental concepts and principles of cell biology, histology, and the integumentary, skeletal, muscular, and nervous systems.', 4),
('BS2310', 2, 'Anatomy and Physiology II Lecture and Lab', 'This is the second semester of a two-semester sequence in which human anatomy and physiology are studied using a body systems approach, with emphasis on the inter- relationships between form and function at the gross and microscopic levels of organization. This course is a pre-requisite for students pursuing a career in the Allied-Health Sciences, e.g. nursing and physician assistant. Topics include: the endocrine system, the cardiovascular system, the lymphatic system and immunity, the respiratory system, the digestive system, metabolism,the urinary system, fluid/electrolyte and acid/base balance; and the reproductive systems.', 4),
('BS2400', 2, 'Basic Biology I', 'Lecture/Laboratory first semester of freshman biology courses covering content areas including molecular and cellular biology, genetics, genomics and evolution.', 4),
('BS2410', 2, 'Basic Biology II', 'Lecture/Laboratory second semester of freshman biology courses covering content areas including cell metabolism, comparative animal and plant anatomy and physiology and ecology.', 4);
INSERT INTO `courses` (`course_id`, `dept_id`, `course_title`, `course_desc`, `credits`) VALUES
('BS2490', 2, 'Environmental Science', 'The focus of this lecture course is on the interactions of humans with their environment. Human impact on the world’s ecosystems is emphasized. The theme stressed throughout this course is that every system involving life is dependent upon maintaining balances between nutrient gains and losses, between energy inflows and outflows, and between births and deaths within populations. Against this background, various aspects of the human system, such as our use of soils, our disposal of wastes, our use of resources, land, and energy and our population, are \r\n165shown to be out of balance. The consequences of these imbalances are discussed in relation to our political and economic system.', 4),
('BS3300', 2, 'Biotechnology Workshop', 'Designed to develop laboratory skills in the basic techniques used to study molecular genetics. Both prokaryotic and eukaryotic organisms are used as models for the experiments. Some of the techniques introduced in the course include DNA isolation, agarose gel electrophoresis, restriction enzymes, gene transfer, gene cloning, southern blot, PCR, RT-PCR, and gene sequencing. In the latter part of the course, students will be introduced to the Human Genome Project and to some of the techniques used in DNA sequencing and analysis.', 4),
('BS3400', 2, 'Vertebrate Physiology', 'A regulatory systems approach to the principles of animal physiology, developed through consideration of func-tioning of cells, tissues, and organ systems with an emphasis on humans.', 4),
('BS3450', 2, 'Plant Biology', 'The study of plants as biological organisms. Topics include classification and evolution of the plant kingdom: plant anatomy, physiology and reproduction, with emphasis on the flowering plants. Consideration given to experimen-tal methods used in studying plants and the importance of plants and plant studies. Students are expected to complete an experimental project or observational study. Lecture, discussion, laboratory and field trips, or audio tutorial integration of these are presented.', 4),
('BS3500', 2, 'Invertebrate Zoology', 'This  lecture/laboratory  course  introduces  the  student  to  the  diversity  of  form  and  function  among  the  inverte-brates using a phylogenetic approach. It emphasizes their importance in ecology, diseases, food sources and as biomedical models. Laboratory sessions include dissection of representative animals and encourage individual research projects.', 4),
('BS3510', 2, 'Parasitology', 'Lecture/laboratory course. Major parasites of medical and economic interest are examined, including the causal agents of malaria, trypanosomiasis schistosomiasis, and filariasis. The ecology, anatomy, pathology, and public health importance of these parasites are emphasized. Laboratories include both live and prepared material.', 4),
('BS3520', 2, 'Comparative Anatomy', 'Lecture/laboratory course designed for biology majors and premedical students. Emphasis is on the basic anatomi-cal patterns of vertebrate structure. Morphogenesis and structure function relationships are discussed in terms of adaptive significance. Laboratory includes dissections of aquatic and terrestrial vertebrates.', 4),
('BS3530', 2, 'Comparative Genomics Lecture/Lab', 'Comparison of whole genome and transcriptome sequences provides a detailed view of how organisms are related to each other.  Comparing genome sequences of different organism provides a powerful tool for understanding the molecular differences distinguishing different species from each other. The information that can be gained is largely dependent upon their phylogenetic distance. One of the benefits of this comparison, between far related organisms, is identification of functional and non-functional DNA and some regulatory sites. In contrast, this analysis on closely related organism could shed light on sequence differences that may account for subtle differences in biological form and function. These sequence changes most likely are under directional selection, a process whereby natural selection favors a single phenotype and continuously shifts the allele frequency in one direction. This interdisciplinary course comprises of lecture, and computer lab sections.', 4),
('BS3710', 2, 'Environmental Physiology', 'Examines profound ubiquitous influences of the external environment on the body, the physiological responses to environmental challenges, and ways in which these responses contribute to either health or disease. Includes nutritional influences on health; physiological response to environmental chemicals; adaptations to altitude, pres-sure, temperature, humidity, radiation; physiology of psychosocial stress; and physiology of exercise.', 4),
('BS3810', 2, 'Biological Aspects of Aging', 'Lecture/workshop course designed for science students. Examines the aging process on the molecular, cellular, and organismic levels. Emphasizes alterations during the aging process in cells whose life span is identical to that \r\n166of the entire organism. Examination of various pathological disorders in relationship to aging is also emphasized. Students are required to read original articles and be prepared to discuss current topics in workshop settings.', 4),
('BS3910', 2, 'Introduction to Bionformatics', 'This course functions as an introduction to the rapidly developing field of bioinformatics and its literature. Initial lectures  provide  a  foundation  in  the  fundamental  concepts  of  bioinformatics,  including  simple  command-line  scripting and the use of online browsers to extract information. We will discuss how to sequence, analyze, and compare genomes in addition we will cover topics in  macromolecular structure (search, alignment, prediction etc.) and introductory proteomics. Weeks will generally consist of one 3 hour topic-based lecture and one 3 hour in-class laboratory period involving activities emphasizing key concepts and techniques. The goals of this course are two-fold: first, to introduce students to the breadth and scope of bioinformatics; second, to enhance the analytical skills of students through hands-on exercises working with data.', 4),
('BS4400', 2, 'Cell Biology', 'Lecture/discussion/laboratory course whose content is directed to the study of the molecular basis of cell activi-ties, cell ultra structure, and its integration with cellular function. Lectures survey the cell in its environment, energy transformation, mobility, replication of genetic material, growth, nucleocytoplasmic interactions. The laboratory explores techniques used in the study of the cell.', 4),
('BS4410', 2, 'Histology', 'A laboratory-oriented course dealing with the microscopic and ultramicroscopic anatomy of mammalian tissues and organs with emphasis on relating structure to function.', 4),
('BS4420', 2, 'Microbology', 'Concerned with structure-function relationships in various types of microorganisms, with particular emphasis on bacteria. Nutrition, biosynthesis, energetics, growth, microbial interactions and symbiotic relationships, host-parasite relationships,  and  microbial  genetics  are  among  the  topics  discussed.  Lecture  and  laboratory.', 4),
('BS4430', 2, 'Developmental Biology', 'A lecture/laboratory course covering fundamental principles of developmental biology. Topics included:  game-togenesis, fertilization, cleavage, gastrulation, growth and differentiation. This course attempts to integrate the descriptive, experimental and genetic approaches to the study of developmental biology.', 4),
('BS4440', 2, 'Evolution', 'Lecture/discussion course presenting the history of life on earth from its inception to the emergence and early history of Homo sapiens. Through readings, lectures, demonstrations, laboratories, discussions, and museum trips, students  examine  modern  evolutionary  theory  and  concepts,  including  abiogenesis,  adaptation,  population  genetics, race, speciation, and progressive evolution.', 4),
('BS4460', 2, 'Genetics', 'Lecture/laboratory course presenting the fundamental principles of genetics, the molecular biology of the gene, and heredity in humans. Through lectures, readings, laboratories, and discussions, students examine the experimen-tal evidence leading to currently accepted concepts, and critically analyze the implications of various findings in human genetics.', 4),
('BS4461', 2, 'Immunology', 'Lecture/laboratory course dealing with cellular and humoral aspects of mammalian immune system. Course is divided between study of basic principles governing the immune response, and analysis of molecular immunol-ogy. Laboratory component explores modern and technological assays of immunology.', 4),
('BS4470', 2, 'Ecology', 'The study of populations and communities of organisms and the interactions of organisms within their environ-ment. Topics include ecosystem analysis, energy flow, nutrient cycles and limiting factors, community structure, biomes, associations, succession, adaptation, and niche analysis, population growth and structure, competition and predator prey relations. Consideration given to experimental investigations, including computer modeling. \r\n167Students are expected to complete a field or laboratory project, or a library report. Field trips and lab exercises comprise important components of this course.', 4),
('BS4471', 2, 'Freshwater Ecology (Limnology)', 'A lecture/discussion and laboratory course dealing with the structure and function of freshwater systems such as lakes, ponds, rivers, and streams. Topics include the study of the physical and chemical properties of freshwater habitats, their biotic composition, and their productivity. Problems related to water pollution are discussed. Field trips  and  lab  exercises  comprise  important  components  to  this  course.  Students  are  expected  to  conduct  an  independent research project.', 4),
('BS4474', 2, 'Microbial Ecology', 'This course is designed to introduce students to the study of microbial ecosystems, its structure and function, us-ing an inquiry based approach that models the scientific research process. The topic content of the course is microbial ecology. Students will explore the microbial diversity in soils autochthonous to the college’s deciduous forest. In the lecture component, students will be introduced to the theoretical content of ecology in the context of the laboratory experimentation. The aim is to model the inquiry-based learning process fundamental to the scientific endeavor. As part of their investigation, students will learn about ecosystem structure, i.e. biotic and abiotic components, and function, i.e. symbiotic interactions and food webs. As part of the biotic component of the ecosystem, students will focus on the study of the microbial community, i.e. bacteriophages, bacteria, fungi and micro invertebrates. Students will use both traditional techniques, i.e. microscopy, isolat', 4),
('BS4480', 2, 'Animal Behavior', 'A lecture/laboratory course introducing the field of animal behavior. Lectures, discussions and films explore top-ics including the cultural basis of behavior, the organization and physiology of the nervous system and its role in controlling behavior, the endocrine basis of behavior, genetic basis of behavior and sociobiology.', 4),
('BS4491', 2, 'Human Ecology', 'Students will examine the adaptation of human populations to their environment. Topics include: biological and cultural evolution, human diversity, impact of limiting resources, the ecology of disease, and urban ecology and planning. ', 4),
('BS4500', 2, 'Cell and Molecular Neurobiology', 'Lecture course designed to familiarize students with intracellular communication mechanisms and how they are used to promote intercellular interactions. Includes concepts as they relate to neurobiology; ephatic and synaptic transmission; neurophysiology/neuropharmacology; selected topics relating to mental health, narcotic addiction etc. ', 4),
('BS4550', 2, 'Cancer Cell Biology', 'The study of cancer disease requires knowledge of several essential biological processes that govern the basic functions of the living system. This course will explore the cellular and molecular mechanisms underlying cancer development with the aim of understanding how changes in the normal cell growth and division processes lead to the formation of tumors. Case studies will be used to explore the roles of specific mutations in cancer develop-ment and the pathways they affect, as well as the classes of genes targeted during cancer development. This upper  level  course  builds  on  concepts  introduced  in  courses  in  Cell  Biology  and  Genetics  and  will  emphasize  experimental methods and design as well as critical data analysis. Students will discuss papers from the primary literature each week individually or in group.', 4),
('BS4560', 2, 'Molecular Biology', 'Lecture/Laboratory course to introduce students to both the theoretical and practical aspects of molecular biol-ogy. An understanding of molecular biology necessitates a synthesis of information from genetics, biochemistry, cell biology, physics and chemistry. The course will include microbial studies, cellular components, genes, regula-tion etc. The lab component will utilize techniques of genetic engineering.', 4),
('BS4651', 2, 'Toxicology', 'Neurological approach to environmental toxins. Overview of neuroanatomy, physiology, basic pharmacology, and synaptic phenomena. Environmental neurotoxins covered include: acrylamide, cadmium, oxides of nitrogen, \r\n168carbon monoxide, lead, mercury, organphosphates and organochloride pesticides, hexachlorophene, aluminum, carbon disulfide, isoniazid, and selexyed drugs and biological toxins. Experimental design for toxicity studies and epidemiological considerations are also discussed and various animal models presented.', 4),
('BS4680', 2, 'Environmental Health', 'This course takes an integrated approach to the development of a basic understanding of the impact of the environment on health. It examines chronic and infectious diseases in relation to modern life styles. A new section examines the AIDS epidemic in relation to the environment. Other topics that are covered include: air pollution in the general industrial environment; water pollution; the effects of pesticides and food additives; synthetic organic chemicals such as PCB’s and dioxins as environmental estrogens; health effects of radiation and safety of nuclear energy. ', 4),
('BS5410', 2, 'Seminar I in Biology: Reading in the Discipline', 'Designed to increase ability to read in the discipline. Students will survey scientific literature, learn how to research topics, prepare abstracts, etc. Students will select a mentor and topic for Seminar II.', 2),
('BS5420', 2, 'Seminar II in Biology: Writing in the Discipline', 'Designed to promote an in-depth consideration of special topics in current biological research. The course will include presentations by both external speakers and students. The student will, under  the advisement of a faculty mentor, develop a topic either as a library or laboratory study and present the results both orally and as a written paper. ', 2),
('BS5590', 2, 'Advanced Research', 'Research project carried out under the supervision of a faculty member. Each project includes a survey of the appropriate original literature and investigation of a selected research topic by experimental or theoretical meth-ods. Open to students of upper-division standing, preferably seniors, on acceptance as a research student by a faculty member.', 4),
('BS5591', 2, 'Environmental Research', 'Research project in environmental science carried out under supervision of a faculty members.', 4),
('BS9990', 2, 'Independent Study', 'Independent study is to be carried out under the supervision of a faculty member. It permits students to investigate areas that are not part of existing offerings.', 4),
('BU3010', 17, 'Information Systems for Managers', 'Introduction to the concept of information systems as strategic assets of the enterprise utilized to achieve strate-gic advantage. Investigation is also made of the use of information systems at the tactical and support business levels. Technology is always discussed in terms of its interaction with human systems (socio-technical systems). The goals are to facilitate management decision processes and to exploit information technology for strategic advantage. ', 4),
('BU3071', 17, 'Information Technology and Applications', 'The purpose of this course is to provide the student with the requisite skills needed to complete technology-based assignments in accounting and business courses, obtain the necessary skills expected of entry-level accountants and financial managers (0-2 years) and help prepare students for technology-related subjects tested in profes-sional certification exams (e.g., CPA, CMA, and CIA).', 4),
('BU3502', 16, 'Principles of Accounting I', 'Introduction to financial accounting with focus on how financial statements are structured and used by propri-etorships and corporations. Topics:  double entry, accrual accounting, service vs. merchandise companies, cash, accounts receivable and payable, inventories, fixed assets and depreciation methods, and net earnings.', 3),
('BU3511', 16, 'Principles of Accounting II', 'Emphasis shifts from accounting theory (Principles I) to giving students experience in preparation of financial state-ments. New topics include payroll, stockholders’ equity, earnings per share, long-term debt, marketable securities, and statement of cash flows. The course also includes management topics, including job order costing, process costing, cost-volume- profit analysis,  budgeting,  and  planning for capital investments.', 3),
('BU3600', 16, 'Principles of Business Law', 'A study of the nature and functions of law introducing the student to the legal system, constitutional, administra-tive, tort, criminal, consumer protection, employment, and contract law.', 2),
('BU3605', 16, 'Intermediate Business Law', 'An in-depth study of the law of contracts, agency, and partnerships.', 2),
('BU3610', 16, 'Advanced Business Law', 'The study of real and personal property, bailment, documents of title, bankruptcy, secured transactions, and trusts and estates. ', 4),
('BU3800', 17, 'Marketing: Principles and Concepts', 'A  comprehensive  introduction  to  marketing  principles  with  emphasis  on  the  marketing  concept  as  means  of  distributing  goods  and  services  in  a  competitive  economy.  Examines  market  determination  and  population  segmentation for product planning, product distribution systems, pricing policies and practices, and promotion strategies. ', 4),
('BU3905', 16, 'Business Communications', 'This course is an introduction to the fundamentals of business communications. It emphasizes planning, research, organization, clarity, conciseness, positive tone, mechanics and format. Business letters, electronic communica-tions, memos, and reports will be written and analyzed.', 4),
('BU3911', 16, 'Business Presentation Skills', 'Presentation skills are critical in business to inform and motivate a range of audiences, from clients and investors to management and staff . Effective speakers, coupled with other essential skills, tend to move up the corporate ladder  to  increasing  responsiblity  and  success.  This  course  provides  the  foundations  for  delivering  professional  business presentations. The course will explore verbal and nonverbal skills, delivery techniques, and presentation \r\n170structure. Through repeated stand-and -deliver exercises, students will put these techniques into practice, test ap-proaches, and improve their ability to speak with confidence, poise, clarity, and conviction.', 4),
('BU4035', 17, 'Web Systems and Electronic Commerce', 'This course covers the basics of web systems, furthering an understanding of them through the development of e-commerce applications and systems. The course provides an overview of several current web technologies, including client side applications such as web design using JavaScript and VBScript and server side applications on Apache (Linux) and IIS (Windows) using CGI, ASP, and Java Servlet technologies. Students will implement an e-commerce  application  using  the  learned  components  involved  in  a  web  system  and  e-business  strategies.  Projects are carried out individually and in groups.', 4),
('BU4110', 17, 'Organizational Behavior and Management', 'This course examines the evolution of organizations and managerial roles in contemporary organizations. It pro-vides a comprehensive analysis of the functions and processes of management. Topics include the influence of business on society, international business, the managerial functions of planning, organizing, leading, and control, and the social influence of management in terms of ethics, leadership, power, communication, conflict, and organizational culture. Also studied are employee motivation, diversity, group dynamics, and decision-making.', 4),
('BU4120', 17, 'Global Business', 'The  goal  of  this  course  is  to  provide  an  introduction  to  international  business  environment  and  operations.  The  course analyzes the social, economic and political forces shaping multinational business’ activities abroad and uses several models to understand cultural differences. An analysis of how cultural factors influence and affect decision making and organizational culture in a global context are the major thrusts of this course.', 4),
('BU4125', 16, 'Business in China', 'An examination of the distinctive management challenges and opportunities of businesses operating in China. Students attend lectures in English and live in China. The course provides an overview of the growing role of business with its political, legal, cultural and economic influences on the rapidly changing international scene. Students are involved in independent research after visits to multinational companies, foreign banks, government controlled businesses, and foreign financial and economic centers.', 4),
('BU4130', 17, 'Entrepreneurship', 'The steps leading to the establishment of an independent business involving choice of business, structure, capital, startup, management practices, legal and financial consideration.', 4),
('BU4500', 16, 'Intermediate Accounting I', 'An expanded treatment of accounting theory and principles:  investigation of accounting for cash and temporary investments, receivables, inventory costing and evaluation, fixed asset acquisition, depletion and depreciation, intangible assets, and current liabilities. Emphasis is on the analysis of the recommendations and pronouncements of the American Institute of Certified Public Accountants and the Financial Accounting Standards Board.', 4),
('BU4510', 16, 'Intermediate Accounting II', 'An expanded treatment of accounting theory and principles:  investigation of accounting for capital, retained earnings, pensions, leases, cash flows, and earnings per share. Emphasis is on the analysis of the recommendations and pronouncements of the American Institute of Certified Public Accountants and the Financial Accounting Standards Board.', 4),
('BU4570', 16, 'Federal Income Tax I', 'A comprehensive study of tax principles and concepts that apply to income tax planning. The course focuses on the tax treatment of individuals. Topics include gross income, exclusions, deductions, realization and recognition of income, tax rates, the treatment of capital assets and the use of tax credits.', 4),
('BU4590', 16, 'Cost Accounting', 'This course provides students with an in-depth understanding of how cost information is gathered, analyzed and reported for purposes of planning, control and decision-making. Includes a thorough examination of the design and operation of job order, process and standard cost systems. Related emphasis is also placed on cost behav-ior, planning and control of material, labor and overhead costs, activity-based costing, flexible budgeting and \r\n171variance analysis. Variable costing, cost-volume-profit-analysis and related techniques are explored as tools to enhance management decision-making.', 4),
('BU4720', 17, 'Global Financial Markets', 'This course explores the fundamentals of the global financial environment. It covers international capital market, money market and derivatives markets. Foreign-exchange risk and international portfolio diversification are dis-cussed. ', 4),
('BU4762', 16, 'Financial Management I', 'This course provides an introduction to the basic ideas of finance. The primary concepts covered include intro-ductory accounting knowledge, time value of money, risk-return trade-off, the basic characteristics of financial markets and financial securities, cost of capital budgeting.', 4),
('BU4774', 16, 'Financial Markets and Institutions', 'This course focuses on the importance of the financial system in providing liquidity and risk diversification in a globally interconnected economy. The course develops a series of applications of principles from finance and economics that explore the connection between financial markets and the economy. Specific topics will include: interest rate determination, term structure, institutional make-up of capital markets, and risk management of financial institutions. The recent credit crisis and its origin in subprime mortgages will be reviewed.', 4),
('BU4860', 17, 'Export/Import Operations', 'An introduction to the export/import practices of small and medium-sized firms. The course will provide a practical, step by step techniques-oriented guide in managing and marketing an export/import business. Topics include:  identification of applicable rules and regulations, information on identifying suppliers and customers, methods of payment, shipping terms, insurance documents, U.S. Customs Import Requirements and the roles of international freight forwarders and customs brokers.', 4),
('BU5115', 17, 'Operations Management', 'Introduction to the theoretical and practical applications of OM. Topics:  logistics; facility location layout; acquisi-tion and replacement forecasting; planning; operation scheduling and control; inventory planning and quality control. ', 4),
('BU5125', 17, 'Business Ethics', 'This is a managerially oriented course dealing with the relationship between business and society.  A variety of viewpoints will be  presented in the examination of the following topics:  social responsibility of business, quality of work life, ecology and environment, consumerism, business and government, and managerial ethics.', 4),
('BU5171', 17, 'Human Resources Management', 'Emphasizes the necessity of managing individuals in an organization as resources crucial to survival and success. The relationship of human resource management to strategic planning and implementation is analyzed. Specific attention is given to the theories, policies, techniques and methods related to human resource planning, recruit-ment, selection, interviewing, training and development, performance, appraisal, separation, labor relations and compensation in compliance with relevant legislation.', 4),
('BU5190', 17, 'Business Strategy and Policy', 'Synthesizes the concepts and techniques developed in prior courses. The student is required to apply concepts from management, accounting, marketing, economics, and finance using the casework and/or simulation approach. ', 4),
('BU5195', 17, 'Management Seminar', 'Selected current issues in the field are discussed. Emphasis will be on student research and critical analysis of top-ics. Topics may vary from year to year.', 4),
('BU5199', 17, 'Internship in Business Administration', 'Designed for students who want experience in the work place participating in the management environment. This is an excellent opportunity to prepare for a career in the field.', 4),
('BU5505', 16, 'Essentials of Government and Nonprofit Accounting', 'This course is an introduction to government and nonprofit accounting. Fund accounting theory as well as financial statement presentation will be discussed for both government and nonprofit entities. The course also presents an overview of government auditing standards.', 4),
('BU5520', 16, 'Financial Accounting Research', 'This course will provide a critical update and evaluation of recent development in financial reporting and ac-counting theory. The emphasis will be on an in depth evaluation and application of some of the more advanced topics that may have been briefly covered in Intermediate Accounting 2, such as derivatives, cash flow, pensions, leases, accounting errors and changes, and disclosure. Extensive use will be made of the FASB Codification of accounting standards and case studies.', 4),
('BU5525', 16, 'Fundamentals of International Accounting', 'A discussion of the evolution of international accounting principles and practices. International Financial Reporting Standards (IFRS) and reference to accounting and reporting requirements in selected countries will be covered. Current developments and implications for multinational organizations are also addressed.', 4),
('BU5540', 16, 'Advanced Accounting', 'This  course  covers  accounting  for  partnerships:    formation,  operation,  dissolution,  and  liquidation.  There  is  an  in-depth  analysis  of  business  combinations  including  statutory  mergers,  consolidations,  and  acquisition  of  sub-sidiaries, preparation of consolidated financial statements including the equity method and elimination entries. Additionally, the course includes an introduction to foreign currency translation and transactions, the SEC, and Sarbanes-Oxley. ', 4),
('BU5550', 16, 'Auditing', 'Study of the professional ethics and possible legal liability of the auditor. Examination of current auditing theory and techniques and their application to specific balance sheet and income statement accounts to obtain evidence that management’s financial statements are fairly presented, including the generally accepted auditing standards, role of internal control, uses of sampling, effects of information technology, and the various reports rendered by auditors.', 4),
('BU5555', 16, 'Foundations of Accounting Information Systems', 'Examines the fundamental roles and functions of accounting information systems in providing support for deci-sions by management and other interested groups. Topics include database concepts, accounting data flow, and business processes. Students will learn how to apply software such as Microsoft Access in designing their own systems. ', 4),
('BU5560', 16, 'Financial Statement Analysis', 'An advanced level course covering the analytical tools necessary for conducting a financial analysis of a business and its financial statements. The course will focus on selecting the appropriate analytical tools and the effective use of notes to the financial statements for making financial decisions about a business. Topics include ratio and trend analysis, as well as an examination of annual reports, 10K and 10Q filings.', 4),
('BU5571', 16, 'Federal Income Tax II', 'Tax treatment of corporations, partnerships, limited liability entities, business transactions and their related tax forms are stressed in this second course in taxation. Topics include:  depreciation, Section 1231 and depreciation recap-ture under Sections 1245 and 1250, bad debts and losses, “C” Corporation formation and operations, “S” Corpora-tions, Partnerships and Limited Liability Entities, and an introduction to multi-state taxation.', 4),
('BU5599', 16, 'Internship in Accounting', 'Designed for students who want experience in the work place participating in the accounting environment. This is an excellent opportunity to prepare for a career in the field.', 4),
('BU5710', 16, 'Financial Modeling and Forecasting', 'The  course  is  aimed  at  giving  students  a  working  knowledge  of  the  analytical  tools  that  are  important  in  the  decisions firms regularly make Emphasis will be placed on the performance goals of the firm, the forecasting of investment returns and firm cash flows, and the estimation of investment firm risk parameters. Regression analysis, along with other statistical modeling tools where necessary, will be used to estimate relationships among economic variables, and as a forecasting tool.  The course is aimed at consolidating knowledge gained in other functionl \r\n173areas of business.  While knowledge of quantitative techniques is presupposed, the emphasis is more on economic intuition as a practical problem-solving tool.', 4),
('BU5740', 17, 'Investment Management and Security Analysis', 'Study of theories, techniques and approaches for determining the values of major types of securities including derivation of capitalization rates, forecasting of earnings and technical analysis. Evaluation of the dividend, capital leverage controversies and the efficient market hypothesis. Introduction to modern portfolio theories and invest-ment strategies.', 4),
('BU5760', 17, 'Corporate Finance', 'This course introduces students to the principle of maximization of the firm’s value in a world with uncertainty. It covers firm’s capital structure and dividend policy, cash flow management, short-term financing, merger and acquisition and leasing.', 4),
('BU5780', 17, 'Futures and Options Markets', 'This class will provide students with a basic knowledge of derivatives in options, futures, and forwards markets. Top-ics include option valuation models, principles of forward and futures pricing, structure of markets for derivative securities, and strategies for hedging and speculation.', 4),
('BU5790', 17, 'Seminar in Finance', 'Discussion of topics in finance chosen by instructor.', 4),
('BU5798', 16, 'CFA Level 1 Exam Preparation', 'This course examines ethical and professional standards and reviews financial analysis tools including economics; quantitative analysis; financial accounting and statement analysis; markets and institutions; and asset valuation and portfolio management techniques.', 4),
('BU5799', 17, 'Internship in Finance', 'Designed for students who want experience in the work place participating in the finance environment. This is an excellent opportunity to prepare for a career in the field.', 4),
('BU5800', 17, 'Marketing Research', 'The course examines qualitative and quantitative marketing research techniques. It provides a step by step cov-erage of a research project including problem definition, research design, sampling, questionnaire construction, data analysis, and report preparation. Students will design and execute a small scale research project.', 4),
('BU5820', 17, 'International Marketing', 'Nature  and  practice  of  international  marketing  management.  Covers  problems  of  marketing  across  national  boundaries as well as within different national markets. Emphasizes the environment in which international mar-keting takes place; deals with product, pricing, distribution and promotion strategies of international marketing managers; examines ways of integrating and coordinating the firm’s marketing programs in diverse markets.', 4),
('BU5841', 17, 'Strategic Marketing', 'This course applies the marketing straey concept as a management tool for optimizing performance. It focuses on the marketer’s deployment of resources to achieve goals in a competitive enviroment. Students will be applying knowledge gained in other courses to analyze case studies. In addition, the course explores current marketing topics such as social media and business analytics and integrates them into strategic planning.', 4),
('BU5851', 17, 'Consumer Behavior', 'Incorporates concepts from the behavioral sciences that provide a foundation for the study of buyer behavior. The course evolves through an exploration of the contributions from economics, psychology, sociology and cultural anthropology that reveal the motivations underlying consumer behavior.', 4),
('BU5880', 17, 'Brand Theory and Strategy', 'This course focuses on how brands are created and managed within the marketing process. Using an interdisci-plinary marketing and social science perspective, students analyze the cultural system of brand identity gener-ated by product manipulation and consumer choice, creating value for both buyer and corporation. Marketing \r\n174policies are evaluated through an analysis of product development, distribution and pricing with particular focus on the newest communication tools in advertising, public relations and sales promotion.', 4),
('BU5891', 17, 'Marketing Seminar', 'A program tailored to the needs and interests of students of marketing, advertising, and public policy issues. Students complete an actual business project related to marketing.', 4),
('BU5895', 17, 'Internship in Marketing', 'Designed for students who want experience in the work place participating in the marketing environment. This is an excellent opportunity to prepare for a career in the field.', 4),
('CP2000', 3, 'Chemistry for Non-Majors', 'Survey of chemistry for the non-science major. Basic principles to be covered include atomic structure, chemical properties, chemical reactions, the nature of organic and inorganic compounds and novel materials. Principles are illustrated with applications to daily life. No prior background in chemistry required.', 4),
('CP2050', 3, 'The Nature and Development of Science', 'The course involves students in the study and reflection within the historical context of the development of sci-ence as a forum to synthesize their learning of various scientific disciplines. The context is provided by a thorough analysis of the historical and philosophical foundations of scientific knowledge and practice, and its emergency as a distinctly modern view of the universe. The course addresses National Science Education Standards that call for an understanding of the history and development of science, as well as its interdisciplinary nature.', 4),
('CP2120', 3, 'Principles of Chemistry I', 'Introduction to the origins and principles of modern chemistry. Discussion of atomic and molecular structure, stoi-chiometry, periodicity, bonding and states of matter. Principles are illustrated through demonstrations and study of descriptive chemistry. ', 4),
('CP2130', 3, 'Principles of Chemistry II', 'Continuation of Principles of Chemistry I. Discussion of acid/base and oxidation/reduction reactions, equilibrium, kinetics and electrochemistry. Principles are illustrated through demonstrations and study of descriptive chemistry.', 4),
('CP2210', 3, 'Physical Science', 'A  survey  of  basic  concepts  of  physical  science  for  students  in  non-science  majors.  Topics  chosen  from  funda-mental principles of physics, astronomy, chemistry and earth science will provide the student with a broad basic background. ', 4),
('CP2220', 3, 'Structure of Physics I', 'A non-calculus, introductory physics course for biological science, health sciences and premedical students. Topics  included are the principles and laws of mechanics, kinematics, energy and rotational motion.', 4),
('CP2230', 3, 'Structure of Physics II', 'A continuation of Structure of Physics I. Topics include wave motion and sound, electricity and magnetism, physi-cal and geometric optics and selected topics from nuclear physics.', 4),
('CP2240', 3, 'General Physics I', 'The first semester of a calculus-based introductory physics course primarily for chemistry and math majors. Kine-matics, energy, momentum and rotational motion are included.', 4),
('CP2250', 3, 'General Physics II', 'The second semester of a calculus-based general physics course. Optics, electricity, wave motion and magnetism are included. ', 4),
('CP2300', 3, 'Weather Studies', 'Weather Studies covers the composition and structure of the atmosphere; the flows of energy to, from, and through the atmosphere; and the resulting atmospheric motions. The physical principles of atmospheric phenomena are stressed, as well as the effects of weather on society. Students will participate in learning activities coordinated with current weather data delivered via the web. ', 4),
('CP2400', 3, 'Ocean Studies', 'This is an introductory oceanography course suitable for students with no prior science background. This course investigates the world’s oceans from an earth system perspective, emphasizing interactions between spheres (i.e., hydrosphere, atmosphere). Topics covered will include the physical and chemical properties of seawater, flow and transformations of water and energy, and ocean circulation. Students will also study adaptations of marine life and human societal impacts on the oceans. Learning activities will make use of real-time ocean data acces-sible via the web. ', 4),
('CP2500', 3, 'Climate Studies', 'An introductory course in climate studies that uses current and historical climate data available on the internet to explore climate change and its potential impacts. In order to evaluate the emerging evidence about climate change, individuals need to understand the factors that affect climate and its variability. Major earth, air and water  systems,  and  their  relationship  to  climate  and  to  climate  change,  are  discussed.  Emphasis  is  placed  on  exploring the tools scientists use to understand and describe climate, including satellite observations, ice cores and mathematical modeling. The public policy aspects and societal impacts of climate change will be debated. Taught in a hybrid mode, the course includes activities such as in-class presentations, exams and the acquisition, analysis and presentation of online climate data.', 4),
('CP2600', 3, 'Environmental Analysis of Long Island', 'This is an introductory course that will focus on the study of the natural sciences of Long Island. It includes many aspects of biology, earth and atmospheric sciences, fundamental principles of chemistry and physics, human population dynamics, and an appreciation for biological and natural resources. It will always include the consid-eration of people and how they have influenced the system under examination. This course will use laboratory, field and a case study approach to give the students a “hands-on” approach to the fundamental principles of environmental analysis. There will be an emphasis on laboratory and field methodologies, data analysis, and technical communication within an interdisciplinary context. ', 4),
('CP2700', 3, 'Wabe Motion: Light and Sound', 'An  introductory  course  on  the  science  of  waves  in  light  and  sound  and  their  applications  to  modern  forms  of  technology that directly impact our lives, such as wireless communication, image recognition, and remote sen-sory data collection. Students learn the basic concepts through activities with microcomputer-based laboratory (mbl) technology, designed to explore applications with inquiry-based tasks using sensors and mobile devices to collect and analyze data.', 4),
('CP3230', 3, 'Mathematical Methods in the Physical Sciences', 'Application of advanced mathematical principles to problems in the physical sciences. Topics include infinite and power series, functions of several variables, matrix and vector algebra, Fourier analysis, special functions and differential equations.', 4),
('CP3300', 3, 'Organic Chemistry I', 'The first semester of an introductory organic chemistry course. Discussion of major classes of organic compounds, with emphasis on structure, reactions, synthesis, stereochemistry and reaction mechanism.', 4),
('CP3310', 3, 'Organic Chemistry II', 'Continuation of Organic Chemistry I, with discussion of additional major classes of organic compounds.', 4),
('CP3400', 3, 'Analytical Chemistry', 'Study of chemical stoichiometry, homogeneous and heterogeneous equilibria, principles of volumetric and gravi-metric analysis,  chemical separation methods and spectrophotometry. Includes statistical analysis of data and scientific record-keeping.', 4),
('CP3450', 3, 'Inorganic Chemistry', 'Study of inorganic chemistry emphasizing the use of thermodynamic, kinetic and quantum mechanical principles. Topics include structure, bonding, descriptive chemistry, coordination compounds, group theory, and discussion of current topics from the literature.', 4),
('CP4320', 3, 'Advanced Organic Chemistry', 'An examination of modern synthetic methods, molecular orbital theory, linear free energy relationships, acid-base catalysis, neighboring group participation, medium and salt effects, and a detailed consideration of the mecha-nistic features of a wide variety of organic reactions.', 4),
('CP4490', 3, 'Biochemistry for Life Sciences', 'One semester survey course designed for life science majors requiring only one semester of biochemistry. We will cover basic concepts about pH, biological buffers, bioenergetics, nucleotides, amino acids, proteins, enzymes, carbohydrates, lipids, intermediary metabolism, and molecular biology.', 4),
('CP4510', 3, 'Biochemistry I', 'Comprehensive coverage of the chemistry and metabolism of biological compounds, including proteins, nucleic acids, lipids, polysaccharides, and their precursors. Also treats enzyme kinetics, bioenergetics and bio-synthesis of important biomolecules.', 4),
('CP4515', 3, 'Biochemistry II', 'Continuation of Biochemistry I, with emphasis on the control of biochemical processes, photosynthesis,  replication, transcription and translation, genetic engineering, ribosomes, and metabolism.', 4),
('CP4700', 3, 'Physical Chemistry I', 'Survey of the basic principles of physical chemistry, with emphasis on thermodynamics, changes of state, solutions, phase equilibria and kinetic theory.', 4),
('CP4710', 3, 'Physical Chemistry II', 'Survey  of  the  basic  principles  of  physical  chemistry  with  emphasis  on  chemical  kinetics,  quantum  mechanics,  atomic and molecular structure.', 4),
('CP4800', 3, 'Advanced Chemical Methods', 'A study of organic and inorganic compounds using instrumental methods of characterization. Synthetic techniques may include use of inert atmosphere and electrochemical methods. Characterization of compounds may utilize spectroscopy, GC/MS, LC/MS, electrochemistry, NMR and others. Two lectures and one four-hour laboratory per week. Emphasis on scientific report writing in standard format.', 4),
('CP5500', 3, 'Advanced Topics in Chemistry', 'One-semester lecture course covering selected topics of current importance to chemists. Course content may include  such  topics  as  spectroscopy,  radiation  chemistry,  electricity  and  magnetism,  molecular  orbital  theory,  group theory and new instrumental techniques.', 4),
('CP5900', 3, 'Research', 'Research project carried out under the supervision of a faculty member. Each project includes a survey of the appropriate  original  literature,  a  theoretical  or  experimental  investigation,  and  a  comprehensive  report  of  the  results. Open only to students accepted as research trainees sponsored by a member of the Chemistry and Phys-ics faculty. ', 4),
('CP5920', 3, 'Senior Seminar I', 'Capstone  course  in  which  the  student  integrates  coursework  in  the  sub-disciplines  to  discuss  topics  of  current  interest in the profession. Includes instruction in library resources and on-line searching, scientific writing, ethics workshops  and  oral  presentations.  Students  choose  a  supervisor  and  seminar  topic  and  submit  a  draft  written  report.  ', 4),
('CP5921', 3, 'Senior Seminar II', 'Continuation of CP5920. Emphasis on producing paper in American Chemical Society format.', 4),
('CP9990', 3, 'Independent Study in Chemistry/Physics', 'An academic project other than laboratory research carried out under the supervision of a faculty member.', 4),
('CR1500', 13, 'Introduction to Criminology', 'This course will provide students with an introduction to the social scientific study of crime. Students will explore quantitative and qualitative evidence concerning various types of crime (e.g. murder, robbery, rape, domestic violence, child abuse, burglary, larceny, motor vehicle theft, organized crime, international crime, and white col-lar crime). Also, they will explore crime statistics concerning the demographic dimensions of crime (i.e. age, race, sex, and class). Students will be provided with a brief introduction to biological, psychological, and sociological explanations of crime, and learn to compare social science and media representations of crime and criminals. Finally, students will learn to assess conservative, liberal and radical explanations of historical crime trends, and to examine the impact of the criminal justice system (i.e. police, courts, corrections) on rates of crime.', 4),
('CR2090', 13, 'Juvenile Deliquency', 'This course will provide an introduction to theories and research findings concerning causes of juvenile delinquency in U.S. society. In addition, social policies designed to address delinquency as a social problem will be explored.', 4),
('CR3092', 13, 'Victimology', 'This course will provide an introduction to theory and research about individuals and specific populations that have been victimized by interpersonal, institutional and state-sanctioned violence and abuse. Specific topics may include domestic violence and incest, rape, biased-related crimes, and post-trauma syndrome as a result of war, torture, social or environmental catastrophes. Students will also become acquainted with the variety of social services, specialized programs within the criminal justice system and practitioners who treat “survivors” of violence and abuse.', 4);
INSERT INTO `courses` (`course_id`, `dept_id`, `course_title`, `course_desc`, `credits`) VALUES
('CR3093', 13, 'Criminal Justice Administration', 'This course introduces the student to conceptual frameworks, theories, and empirical research related to criminal justice administration. Students learn to understand criminal justice as a system, embedded within other systems, and to consider the interaction between (and the interdependence of) the major system components (police, prosecution, courts, and corrections). The administration of criminal justice and criminal justice policy are consid-ered at length. Students apply what they have learned to a series of realistic case studies.', 4),
('CR3094', 13, 'Drugs and Society', 'This course examines the use of drugs not only in contemporary American society, but also globally, and satisfies the  Sociology  Department’s  cross-cultural  component.  The  course  is  arranged  so  that  the  material  progresses  from substances utilized in their natural forms, up to technological “designer” drugs. The problems and virtues of objectively and subjectively studying drug effects are addressed. The history and use of specific substances (i.e., caffeine, marijuana, cocaine) is extensively explored. Students are taught to think critically about drug information presented by the government, media, and pharmaceutical industries. The course investigates how drug use varies by class, race, and sex, and integrates this knowledge to critically assess current drug laws and policies.', 4),
('CR3099', 13, 'Sociology of Violence', 'This course provides a sociological inquiry into the various manifestations of violence in societies, including interper-sonal forms of violence such as homicide, rape, and physical assault as well as collective forms of violence such as state-sponsored violence, war, genocide, terrorism and torture. Specific attention will be paid to the sociological causes and effects of individual and collective violent actions.', 4),
('CR3117', 13, 'Policing Bodies', 'This course will examine the formal and informal ways in which sexual practices and identities are policed and produced. Central to this agenda will be a consideration of the ways in which sex and sexuality intersect with gender, race, ethnicity, and class in the construction and maintenance of systems of social control. Drawing on historical and contemporary contexts, the course will explore both the causes and the consequences of this bodily policing. Course topics will include: changing definitions of acceptable/unacceptable sex and sexual identity; evolving methods of surveillance and regulation of sexual behaviors and identities; and the relationships between social institutions, social interaction, and individual experience.', 4),
('CR3200', 13, 'Crime, Media, and Culture', 'This  course  explores  the  ways  that  media  and  cultural  processes  socially  construct  crime  in  modern  society.  Drawing on the latest theories of culture and crime, students will investigate the relationships among mass media, individual agency, actual crime and criminal justice. Emphasis will be on crime news, popular representations of crime, contemporary media portrayals of different types of crime and their interactions with racial, ethnic, class and gender stereotypes.', 4),
('CR4000', 13, 'Gender, Crime, and Justice', 'This course will examine the role of gender in the criminal legal system. It will cover the relative status of women and men from the late 19th century to the present, and the process of becoming full and equal participants in society. The course will use major sociological theories of gender difference to understand offenders and defen-dants; prisoners; law enforcement professionals; and victims of this system. Current programs for community based justice and the tension between theories of gender difference, practices and programs for women in the legal system, and conservative and feminist political views regarding the abilities and disabilities of women will also be included.', 4),
('CR4091', 13, 'Punishment and Corrections', 'Students are introduced to the sociology of punishment and corrections. The historical development and form of modern corrections systems in the United States are explored. Various punishment and correction strategies, ideologies, and policy alternatives are assessed.', 4),
('CR4550', 13, 'Theories of Crime', 'Students  will  read  a  variety  of  theoretical  writings  from  the  literature  on  crime  and  deviance.  Classes  and  as-signments will be designed to enable students to summarize, assess, and critique these theories. In addition, the implications of theoretical criminology for social/criminal justice policy will be explored.', 4),
('CR4999', 13, 'Issues in Criminology', 'Gives students the opportunity to examine in greater depth the analysis and discussion of current specialized crimi-nological work in the particular area defined by the instructor (as indicated in the schedule of classes). Students are permitted to take CR 4999 Issues in Criminology for credit and as fulfillment of elective requirements for the Criminology and Sociology Majors up to two times in which two distinct topics are covered.', 4),
('CS1500', 7, 'Introduction to Computer Applications', 'This course is designed to provide the student with a comprehensive introduction to  . Topics include fundamental concepts, hardware components, software products, trends in computing and an introduction to the Microsoft Windows environment, including the use of the mouse and file management. Issues related to the impact computers have on society and current changes in technology are also discussed. Students will receive hands-on instruction in popular software applications including Microsoft Word, Excel, Access and PowerPoint.', 4),
('CS1505', 7, 'Internet and Society', 'This course covers workings of the Internet, researching online and societal issues which either affect the Internet or are affected by it. Topics:  Overview of the Internet and World-Wide-Web, ISPs, e-mail, chat, instant messag-ing, browsers, databases and Web services, file types and downloading, Web page design, online shopping and security. Researching online:  search engines, indexes, quick reference aids, Boolean searches, Web resources in various subject areas. Societal issues:  intellectual property, privacy, online education, e-commerce, online com-munities.', 4),
('CS1510', 7, 'Advanced Computer Applcations', 'This  course  introduces  the  role  of  computers  and  data  processing  in  the  business  environment.  Topics  include  essential business computer concepts. Popular PC software packages (database management software and \r\n179especially electronic spreadsheets) are used to emphasize business analysis and decision-making using computers. Business and Accounting majors will appreciate our coverage of the electronic spreadsheet package, Microsoft Excel. Topics include:  basic spreadsheet design, entering data, formatting worksheets, implementing formulas and more. This course is primarily for business majors.', 4),
('CS2410', 7, 'Web Site Design', 'This course provides an introduction to designing web pages using Adobe DreamWeaver and other web tech-nologies. Students will learn how to design a professional looking web site using hands-on software and real life examples. Topics include creative design, layout and typography, organization of content, navigation, tables, frames, templates and style sheets, graphics, animation, plug-ins, streaming audio and video, Flash, HTML, and XHTML. Assignments carried out individually and in groups.', 4),
('CS2510', 7, 'Computer Programming I', 'An introduction to problem solving through programming. Topics include program design and analysis: algorithmic processes,  fundamental  techniques  of  program  development,  debugging  and  testing.  Programming  projects  and applications will be written in a structured computer language. Students learn the basic language features of C++/Java to write basic to intermediate level programs.', 4),
('CS2511', 7, 'Computer Programming II', 'Continuation of CS 2510. Discussion of methods, arrays, class and object, inheritance, polymorphism, exceptions, file operations, and GUI (Graphical User Interface) applications. Basic data structures and algorithms like insertion sort, binary search in a sorted array, and recursion may also be discussed if time allows.  Students write intermedi-ate to advanced level programs in C++/Java.', 4),
('CS2521', 7, 'Introduction to Scientific Programming', 'A fast paced introduction to program design and analysis: algorithmic processes, basic programming techniques, program specification & structure, program development, debugging and testing. Emphasis on scientific ap-plications. Discussion of storage classes, files and string manipulation. Basic data structures and algorithms, data abstractions  and  object-oriented  programming.  Students  learn  the  language  features  of  Python  with  an  eye  toward scientific and data analysis applications.', 4),
('CS2610', 7, 'Visual Basic and Object-Oriented Programming', 'This  course  provides  an  introduction  to  the  Visual  Basic  programming  language,  programming  concepts  and  terminology, algorithms, and problem solving strategies. It will provide students with the critical thinking skills nec-essary to design and write computer programs utilizing the components of Visual Basic. Students will learn how to develop professional real-life applications using Graphical User Interfaces and be introduced to programming topics such as objects, classes, control structures, methods, functions, string and array handling, and an introduc-tion to ADO.NET', 4),
('CS3410', 7, 'Interactive Multimedia Design', 'This course provides an introduction to Interactive multimedia design emphasizing animation, sound and video using Adobe Flash and ActionScript. Students will learn how to design and create professional multimedia appli-cations for e-commerce, interactive instructional videos, and interactive web sites with rich internet applications using state of the art multimedia software. Topics include the application of e-business strategies using interactive audio and video, drawing and color tools, animation, timeline effects, shape tweening, video and audio param-eters  and  compression  formats,  OOP,  ActionScript  properties  and  classes,  methods,  functions,  event  handlers,  conditional statements, loops and arrays. Assignments to be carried out individually and in groups.', 4),
('CS3611', 7, 'Advanced C#', 'This course provides an in-depth study of the skills and knowledge of C# programming. It is intended to reinforce and build upon the introductory programming course by introducing more advanced features of C# program-ming language and environment. Some of the advanced topics include SQL, database programming, reporting scheme, programming for the web and web forms, object-oriented programming, accessing data with ADO.NET. It also introduces basic technologies in ASP.NET.', 4),
('CS3620', 7, 'Computer Architecture I', 'Basic computer architecture. Switching theory, data representation, arithmetic operations, assembly language coding, Boolean logic, combinational circuits, logical design, instruction execution, sequential machines.', 4),
('CS3630', 7, 'Computer Architecture II', 'Integrated  circuits,  pipelining,  Cache  Memory,  DRAM,  RAID,  Memory  Hierarchy,  I/O  Device  Interfacing,  DMA,  CISC processing, RISC processing, Multi processing, Vector processing, Parallel process', 4),
('CS3810', 7, 'Data Structures & Algorithms', 'Introduces abstract data structures and their implementations, including lists, stacks, queues, trees, hash tables, heaps and linked structures. Analyze and design sorting and searching algorithms. Learn computational evalua-tion on performance of algorithms. Advanced level programming.', 4),
('CS3910', 7, 'Java and Object-Oriented Programming', 'Object-oriented  programming:    classes,  interfaces,  objects,  messaging,  composition,  inheritance.  Language  features:  exceptions, packages, garbage collection, virtual machine. Built-in-Packages:  lang, util, io, awt, swing. Applications, applets and security. File structures and file I/O. Object-oriented design: design patterns, frameworks and UML. Programming assignments carried out individually.', 4),
('CS3911', 7, 'C++ and Object-Oriented Programming and Design', 'An object oriented approach to C++ with an emphasis on how to self-learn a new programming language. Will reiterate major concepts such as encapsulation, abstraction, classes, and objects as well as learn about pointers and dynamic memory. Will introduce data structures high level design patterns in C++ and include other language features such as programming with STL and templates.', 4),
('CS4100', 7, 'Technical Communications', 'Emphasis on technical writing and public speaking skills. Application of report-writing fundamentals to technical correspondence, technical reports, user manuals. Detailed analysis of the problem of conveying technical infor-mation to technical and non-technical audiences in written, as well as oral form. Term project involving written paper on a technical subject and an oral presentation of the subject in class.', 4),
('CS4200', 7, 'Mobile Programming through Android', 'This course introduces students to creating mobile applications through the Android programming environment. Students will build upon their programming experience in Java to learn the fundamentals of event driven multi-tier programming, including important programming patterns that best fit the unique needs of mobile devices. Furthermore, students will learn how to create interactive GUIs that leverage mobile capabilities, including data from  embedded  devices  such  as  cameras  and  sensors  such  as  GPS,  in  order  to  create  novel  and  accessible  experiences and representations for users. Students will learn to use databases to store and retrieve data as well as use API’s to retrieve data from websites.', 4),
('CS4400', 7, 'Artificial Intelligence', 'Introduction to the programming language LISP. Additional topics include:  search as problem-solving paradigm; depth first, breadth first, best first, min/max and alpha beta; state space representation, OR graphs, AND/OR graphs, means end analysis and problem reduction; propositional and predicate logic, skolemization, resolution and theorem proving, semantic nets, frames, neural nets and genetic algorithms. Students write programs in LISP and C++/Java. ', 4),
('CS4501', 7, 'Software Engineering', 'Introduces principles and disciplines of software engineering.  Semester-long projects allow students to practice on a complete process of the software development.  A software product will be implemented and tested at the end.  The Object-oriented software engineering with the UML modeling approach is applied on projects.  Learn system decomposition and design patterns.  The project management aspect and risk controls are also introduced and practiced in the projects.  Individual and team works.', 4),
('CS4550', 7, 'Database Systems', 'Basic concepts:  data, information systems, data independence and need for DBMS facilities. The relational model:  schema, subschema, relational algebra, relational calculus, SQL, ODBC, JDBC and SQLJ. Database design:  entity-relationship model and normalization. Performance considerations, integrity, security and transaction processing. DBMS examples:  Access, DB2 and Oracle.', 4),
('CS4600', 7, 'Topics in Computer Science', 'Current topics in computer science which are of interest to the computer science faculty will be chosen for discus-sion. Topics may change each semester.', 4),
('CS4610', 7, 'Language & Translators', 'Topics include features and characteristics of programming languages and basic principles and techniques of language design. Lexical analysis, syntax analysis, code generation, symbol table and error handling will be cov-ered. The student will develop a simple compiler or interpreter.', 4),
('CS4705', 7, 'Introduction to Computer Security', 'This  course  covers  basic  ideas  of  computer  and  network  security  and  fundamental  techniques  for  defending  computers and networks against adversaries. The course introduces the students to: secure software engineering, operating system security, network security, cryptography, cryptographic protocols, denial of service attacks, fire-walls, authentication techniques, web and server security. Students will work on programming projects individually and/or jointly in groups.', 4),
('CS4710', 7, 'Applied Cryptography and Computer Security', 'This course develops notions of information security and deals with the tools for guaranteeing secure communica-tions in an adversarial setting. Topics include basic number theory, cryptographic methods, key distribution, and protocols for authentication and confidential communications. The course examines C++/Java security applica-tions that employ cryptography. ', 4),
('CS4720', 7, 'Internet and Web Technologies', 'Introduce the Internet, the World Wide Web, the client/server applications, and various web development tech-nologies. Teach hot techniques currently adopted in web application industry including languages for front-end applications such as XHTML, CSS, DHTML, JavaScript and languages for back-end applications such as JavaServer Page, JavaServer Face, PHP, the .Net platform and Python. The XML and Ajax is also introduced.', 4),
('CS5551', 7, 'MIS Topics', 'The  purpose  of  this  course  is  to  introduce  the  students  to  the  practical  aspects  of  building  industrial-strength  integrated MIS systems through the use of real-life MIS systems’ case studies. The course endeavors to connect enterprise, technological, organizational and strategic issues in support of integration of information and systems. The course will also cover new technologies including artificial intelligence and data mining used in support of management decision-making. Invited speakers will discuss the challenges faced by MIS departments in serving the needs of their enterprises as well as their perspective on the future developments in the field. Students will be required to write a term paper which will be presented in a classroom forum and form a major part of each stu-dent’s grade. The course assignments will be carried out individually as well as in groups. Concurrent registration in CS5910 is recommended.', 4),
('CS5610', 7, 'Operating Systems', 'Memory  management:    multiprogramming,  relocation,  paging,  virtual  memory,  dynamic  loading  and  linking.  Process management:  job scheduling, process scheduling and synchronization, multiprocessing. Device manage-ment:  input/output, channels and control units, buffering, interrupt structure and processing. Information manage-ment:  logical and physical file systems, file processing. OS examples:  Unix/Linux, Windows.', 4),
('CS5620', 7, 'Computer Science Practicum', 'This is an internship course which is supervised by a full-time computer science faculty member and can be repeated.', 4),
('CS5710', 7, 'Computer Networks', 'Introduces principles and disciplines of software engineering.  Semester-long projects allow students to practice on a complete process of the software development.  A software product will be implemented and tested at the end.  The Object-oriented software engineering with the UML modeling approach is applied on projects.  Learn system decomposition and design patterns.  The project management aspect and risk controls are also introduced and practiced in the projects.  Individual and team works.', 4),
('CS5720', 7, 'Advanced Java Programming and Applications', 'This  course  introduces  Java  applications  in  networking  and  database  programming.  It  uses  Java’s  advanced  features in reflection, serialization, multithreading, networking, database connectivity and remote objects.', 4),
('CS5730', 7, 'Computer Network Security', 'This course is a continuation of CS4710 and deals with the issues in network security. Topics include Kerberos, public key infrastructures, electronic mail security, IP security, Web security, intrusion detection and response, password management, viruses and worms, firewalls, denial of service attacks and defenses, wireless security, and privacy. Students will write several small programs including a network application incorporating security.', 4),
('CS5800', 7, 'Data Warehousing', 'This course introduces the major activities involved in data warehousing application design and implementation. The course starts with an in-depth discussion of the basic concepts and principles of data warehousing, then stud-ies the changes dictated by big data analytics. We discuss the MapReduce framework and its implementation Hadoop and the higher level language HiveQL. We discuss the two popular database architectures, column store databases and inmemoryDBS. We also discuss real-time data warehousing and extract, transform and load (ETL) paradigms used in data warehousing and business intelligence. The students will carry out a simple warehousing application in groups. ', 4),
('CS5810', 7, 'Data Mining I', 'This course covers the fundamental concepts and techniques useful in discovering knowledge hidden in large data sets. Topics include data preprocessing, frequent pattern matching, classification, clustering and database methods. The course also discusses online analytic processing (OLAP), outlier detection, and important applica-tions. The course assignments will be carried out individually and in groups.', 4),
('CS5820', 7, 'Data Mining II', 'This course is a continuation of Data Mining I and covers Web Analytics, Text Mining and Machine Learning, Risk and Financial Analytics, Marketing Science: Customer Analytics, Advanced Exploratory and Outlier Analysis. We discuss MapReduce and its implementation Hadoop and the higher level languages HiveQL and Pig.', 4),
('CS5910', 7, 'Systems Design & Implementation', 'System feasibility studies, meeting with users, project definition, environmental analysis. Data collection, design phase, system restart and recovery. Database considerations, programming, system completion, systems parallel, benchmarks. User training and manual. Conversion planning. Students, working in groups, design and implement a significant software project. ', 4),
('E5926', 18, 'Current Topics in Bilingual Education', 'This course will provide a historical overview of bilingual education in the USA as well as exploration of the current policies and programs for English learners.  Time will be dedicated to exploring the bilingual populations as well as important sub-groups within it including newcomers, SIFE, and bilingual students enrolled in special education programs.  This course will focus on way that teachers and schools can acknowledge and incorporate the valuable cultural and linguistic resources of bilingual children, their families and their communities to enrich the schooling experiences of emerging bilingual children.', 4),
('ED2600', 18, 'Spanish & Methods of Teaching in the Content Areas for Bilingual Teachers', 'This course will increase bilingual pre-service teachers’ understanding of and ability to use the academic Spanish language required for teaching across the content areas in a bilingual childhood classroom. There will be focus and all areas of receptive and productive language use and high-quality children’s literature will be introduced and  used  throughout  the  course.  Active  participation  in  class  discussions  and  teaching  lessons  will  aid  in  the  development  of  the  language  structures  and  vocabulary  needed  to  effectively  teach  lessons  in  Spanish.  Pre-service bilingual teachers will develop various aspects of Spanish writing, including grammar, phonetics, spelling, composition, and vocabulary so they are able to deliver content instruction in Spanish.', 4),
('ED3330', 18, 'Children\'s Literature', 'An introduction to the study of literature for children in the pre-school and elementary grades. The course includes, selection and evaluation of books for children; language development through children’s literature; use of litera-ture to promote the social, emotional and creative development of children; integrating children’s literature into the content areas; planning story activities. Opportunities to work with children ages 3-7 where feasible.', 4),
('ED3700', 18, 'Child Development', 'Provides  students  with  background  information  concerning  the  intellectual,  physiological,  social,  emotional,  and creative development of children from birth through the elementary school years. Emphasis is given to the contributions of Piaget, Gardner and other developmental theorists. Practical relevance of child development information is stressed throughout this course for students who plan to work with children. Students will participate in a practicum in a field-based classroom to gain experience with children in an educational setting and to reflect upon teaching as a career.', 4),
('ED3742', 18, 'Middle Childhood Adolescence', 'Examines human development from six years through adolescence. Research and theories concerning physical, cognitive, personality and social development will be reviewed. Family, peer groups, schools and media will be discussed. The impact of socioeconomic background, culture, race and gender will be discussed throughout. The use of theories and research in applied settings will be discussed.', 4),
('ED3820', 18, 'Foundations of Special Education', 'The purpose of this course is to provide an introduction to the field of Special Education to pre-service teachers-non majors.  The course examines the learning and behavioral characteristics of individuals with exceptionalities as well as the foundational approaches to educational programming for exceptional children.   A field experience is required.  Required for all teacher education majors.', 4),
('ED3950', 18, 'Creating Schools for a Just Society', 'This  course  will  introduce  students  to  the  historical,  political,  social,  and  legal  foundations  of  education  in  the  United States.  Students will explore educational policy by deeply engaging with the theoretical and conceptual underpinnings of American schooling.  Emphasis will be given on social justice and education.  The SOE admissions exam will be given as part of this course.', 4),
('ED4050', 18, 'Innovative Instructional Design and Assessment', 'This course provides background information for developing curriculum.  Emphasis is given to the preparation of lesson plans and unit plans using backwards design.  Students will obtain skills in developing objectives, designing instruction and assessment based on Common Core standards.  Throughout the course, students will demonstrate competence by creating lesson plans and a unit plan.', 4),
('ED4082', 18, 'Methods and Materials of Teaching Mathematics', 'This  course  is  a  study  of  the  strategies,  techniques,  materials,  and  technology  used  to  teach  mathematics  to  middle childhood and high school students. Candidates will become acquainted with New York State learning standards  involved in teaching mathematics at the secondary school level, develop an awareness of the pro-fessional environment, and of resources and information available for teachers. There will be a strong focus on unit  and  lesson  planning,  assessment  methods,  interdisciplinary  connections  and  differentiated  instruction.  The  co-requisite Observation course provides an opportunity for candidates to observe and interact with teachers and students in a secondary field placement setting, and to reflect on these experiences.', 4),
('ED4083', 18, 'Methods and Materials of Teaching Spanish', 'This course is a study of the strategies, techniques, materials, and technology used to teach Spanish to middle childhood and high school students. Candidates will become acquainted with New York State learning standards  involved in teaching Spanish at the secondary school level, develop an awareness of the professional environment, and resources and information available for teachers. There will be a strong focus on unit and lesson planning, assessment  methods,  interdisciplinary  connections  and  differentiated  instruction.  The  co-requisite  Observation  course provides an opportunity for candidates to observe and interact with teachers and students in a secondary field placement setting, and to reflect on these experiences', 4),
('ED4085', 18, 'Methods and Materials of Teaching Science', 'This course is a study of the strategies, techniques, materials, and technology used to teach science to middle childhood and high school students. Candidates will become acquainted with New York State learning standards  involved in teaching science at the secondary school level, develop an awareness of the professional environment, and resources and information available for teachers. There will be a strong focus on unit and lesson planning, assessment  methods,  interdisciplinary  connections  and  differentiated  instruction.  The  co-requisite  Observation  course provides an opportunity for candidates to observe and interact with teachers and students in a secondary field placement setting, and to reflect on these experiences.', 4),
('ED4086', 18, 'Methods & Materials of Teaching Social Studies', 'This  course  is  a  study  of  the  strategies,  techniques,  materials,  and  technology  used  to  teach  social  studies  to  middle childhood and high school students. Candidates will become acquainted with New York State learning standards  involved in teaching social studies at the secondary school level, develop an awareness of the profes-sional environment, and resources and information available for teachers. There will be a strong focus on unit and lesson planning, assessment methods, interdisciplinary connections and differentiated instruction. The co-requisite Observation course provides an opportunity for candidates to observe and interact with teachers and students in a secondary field placement setting, and to reflect on these experiences.', 4),
('ED4200', 18, 'Literacy for All Students', 'This course will prepare teacher candidates to teach reading to students in elementary grades within a balanced and integrated language arts perspective.  Special attention is given to the theoretical reading models, develop-mental stages of literacy, literacy skills and strategies, literacy assessment, planning for English Language Learners, and integration of learning and teaching standards.  This course will include practical applications of methods and materials used in class.  A 25-hour field component is required.', 4),
('ED4220', 18, 'Language Arts in the Context of Childhood Education', 'The purpose of this course is to explore techniques and strategies to integrate reading instruction across the content areas, with a special emphasis on Social Studies.  The focus will be on reading to learn.  This course will concen-trate on the application, theory, and methodology in literacy instruction.  A 25-hour field component is required.', 4),
('ED4230', 18, 'Reading Across the Curriculum', 'This course focuses on current approaches to literacy instruction across the curriculum. It is designed for secondary teacher candidates, and addresses specific instructional strategies appropriate for the adolescent population. \r\n186Emphasis will be placed on theoretical models of reading, instructional strategies, assessment techniques, strate-gies specific to multicultural and bilingual learners.', 4),
('ED4231', 18, 'Reading Across the Curriculum Practicum', 'The purpose of this course is to provide adolescence and middle childhood education candidates with an op-portunity to observe literacy strategies in various discipline settings. The course goal is to familiarize candidates with  differentiation  of  instruction  and  methodology  for  diverse  /  multicultural  populations.  Candidates  will  also  become familiar with the strategic needs of learners with exceptionalities. Candidates will observe students in a bilingual and/or ESL classroom, and maintain a reflective journal. Field experience is required.', 4),
('ED4250', 18, 'Linguistics for Language Educators', 'Linguistics for Language Educators focuses on building knowledge related to the ways in which languages work in teaching and learning. This course will benefit language educators of all kinds including bilingual, world language (i.e. Spanish Education at the elementary or secondary level), English-for-Speakers-of-Other-Languages (ESOL) and  any  teacher  in  a  mainstream  or  special  education  classrooms  with  students  designed  as  English  Learners  (ELs). This course covers theories of language acquisition and linguistic components of language and provides educators with opportunities to explore how current theories and practices in the field of linguistics are relevant to second language teaching and learning. The course provides an overview of theories of language acquisition, linguistics, sociolinguistic and psycholinguistic analyses and how these pertain to language proficiency and aca-demic achievement for students learning language in U.S. schools. Course topics include p', 4),
('ED4300', 18, 'Assessment and Evidence-based Decision Making in Special Education', 'The purpose of this course is to provide pre-service teachers with skills needed to use data to make diagnostic and instructional decisions in special education. In addition, pre-service teachers will practice using assessment results to develop Individualized Educational Programs (IEPs). Pre-service teachers will learn how to: monitor stu-dent progress across disciplines and settings, conduct error analyses, and conduct norm- and criterion-referenced assessments.', 4),
('ED4670', 18, 'Methods and Materials of Teaching English as a Second Language', 'This  course  will  prepare  pre-service  teachers  to  make  connections  between  theory  and  methodology  for  the  teaching  of  English  as  a  Second  Language  in  both  English-medium  or  bilingual  public  school  classrooms.  The  course will emphasize the needs of English learners in academic instruction and how to infuse culturally responsive instruction across the curriculum. This course will provide interactive exploration of research-based ESL classroom practices with special focus on language and literacy integration throughout the curriculum, content-based ESL, and reading and writing strategies for English learners. Pre-service teachers will understand and use the national, state, and local ESL standards to guide their planning, instruction and assessment.', 4),
('ED4810', 18, 'Positive Behavior Supports and Interventions for Students with Disabilities', 'This course is designed to provide students with an understanding of the theoretical foundations of both classroom management and behavior, and focuses on a wide range of proactive and preventative approaches to support-ing positive student behavior.  Additional course topics include the application of evidence-based approaches to  addressing  challenging  behaviors  in  the  classroom  setting,  including  the  collection  and  analysis  of  student  behavioral data and the creation function-based behavioral interventions to engage and support students who exhibit challenging behavior.', 4),
('ED4850', 18, 'Instructional Design & Delivery for Students with Disabilities', 'The purpose of this course is to provide pre-service teachers with knowledge of instructional design and delivery for students with disabilities. Pre-service teachers will acquire an understanding of how to teach students with dis-abilities across disciplines and what to teach across disciplines.', 4),
('ED4890', 18, 'Effective Practices for Students with Low Incidence Disabilities', 'This course is focused on the collaborative practices that enable students with low incidence disabilities to reach their  maximum  potential  and  lead  meaningful  lives.    Students  examine  historical  experiences  of  learners  with  low-incidence  disabilities,  and  analyze  different  theoretical  underpinnings  related  to  teaching  this  population  of learners.  Additional foci include: learning and behavioral characteristics; identification and assessment; and evidence-based instructional practices, with a special focus throughout the course on Autism Spectrum Disorder (ASD). ', 4),
('ED5890', 18, 'Observations, Parcticum, and Seminar', 'This course provides an opportunity for middle childhood and adolescence education majors to experience the school environment prior to student teaching. Candidates spend 100 hours in schools for the purpose of observa-tion of instruction and other school activities, interaction with children and teachers, and reflection. This course is taken in conjunction with a Methods in Teaching course, and is conducted under the supervision of a university supervisor.', 4),
('ED5900', 18, 'Student Teaching in Secondary School and Seminar (Grades 7-12)', 'This is the capstone student teaching experience for candidates seeking certification in adolescence education in biology, chemistry, mathematics, social studies and Spanish. This course provides an opportunity for candidates to apply knowledge and skills developed in coursework under the guidance of a university supervisor and cooperat-ing teacher. This course is a full-time commitment, with half the semester spent at grades 7-9 and half at grades 10-12. Students participate in a weekly seminar.', 12),
('ED5910', 18, 'Student Teaching in Middle School and Seminar, Grades (5-9)', 'This is the capstone student teaching experience for candidates seeking certification in middle childhood educa-tion in biology, chemistry, mathematics, and Spanish. This course provides an opportunity for candidates to apply knowledge and skills developed in coursework under the guidance of a university supervisor and cooperating teacher. This course is a full-time commitment, with half the semester spent at grades 5-6 and half at grades 7-9. Students participate in a weekly seminar.', 12),
('ED5925', 18, 'Building a Classroom Community for All Learners', 'This course will prepare teacher candidates to meet the needs of all students in their classrooms.  Special emphasis will be on culturally responsive pedagogy and teacher candidates will analyze varied pedagogical practises, curriculum, and related educational materials.  A field placement is required.', 4),
('ED5940', 18, 'Student Teaching Seminar', 'Student Teaching and Senior Seminar is the final student teaching field experience required of Teacher Education majors. The course provides opportunity to refine and reflect upon the knowledge, skills, and attitudes needed to become effective elementary school teachers. Students are assigned to area schools and are required to student teach 5 days a week for 15 weeks. Students are also required to participate in seminars in certification prepara-tion sessions.', 12),
('ED5960', 18, 'Student Teaching and Seminar', 'This is the first half of the final student teaching experience for students seeking dual certification as elementary and special education teachers. The course provides opportunities for students to refine and reflect upon the knowledge, skills, and attitudes needed to become effective elementary school teachers. Students are assigned to selected area schools and required to student teach 5 days a week for 15 weeks. Students are also required to participate in weekly certification preparation sessions.', 6),
('EL1000', 4, 'English Composition I: Exposition', 'Designed to develop and refine students’ ability to read, write and think critically. Selected essays will be read and studied as models of rhetorical style, enabling students to detect for themselves the effective use of language and to develop an appreciation for masterpieces of non fiction prose. Students will learn to develop the extended essay  with  particular  attention  to  discovery  and  organization.  Oral  communication  skills  will  be  sharpened  by  directed discussion and by presentation and criticism of class papers.  A grade of C or above is required to pass this course.', 4),
('EL1193', 4, 'ESOL III', 'Designed to refine English language skills the multilanguage learner has already acquired. Basic grammatical forms are not directly taught but are reviewed in the context of specific writing activities. Emphasis is on the con-struction and revision of paragraphs and short compositions. Reading skills are strengthened through vocabulary expansion and exercises in comprehension, summarizing and outlining.', 4),
('EL1298', 4, 'ESOL IV English Composition for ESOL and Writing Workshop', 'This 6 credit course is designed to improve students’ critical thinking and academic writing skills as well as the ability to control such surface features as grammar, punctuation, diction, and spelling.  We will read and discuss nonfic-tion prose that will serve as models for your own writing.  You will learn that writing is a process, not a product, and will gain practice with planning, drafting, and revising essays.  You will also learn to develop the extended essay with particular attention to discovery and organization. Oral communication skills will be sharpened by directed discussion and by presentation and criticism of student essays.  ESOL IV is a six-credit course designed to provide students with additional writing support.  Students in this course will meet for an additional one hour and 30 minutes per week.  During this time students will practice effective writing strategies and engage in one-on-one tutoring sessions with their instructor.  Students who earn a C or above ', 6),
('EL2001', 4, 'Public Speaking', 'Designed to give the student the poise and confidence necessary to think and speak freely before an audience. This course proceeds from audience analysis through motivation, supporting materials, organization, and delivery.', 4),
('EL2203', 4, 'Shakespeare: Three Plays', 'This  course  examines  Shakespearian  themes  which  have  intense  relevance  to  today’s  divided  society:  sexism,  racism, anti-Semitism, colonialism, and gender fluidity. Texts will include such plays as Othello, The Winter’s Tale, The Merchant of Venice, Twelfth Night, The Tempest, as well as some of the sonnets. Students are required to write a \r\n189reading journal, analytical essays, and a research paper. Most writing is done outside of class. The course stresses training in quotation, citation, and research methods.', 4),
('EL2205', 4, 'Psychological Themes in Literature', 'This section will explore a variety of psychological themes such as development and aging, family dynamics, ad-dictions, neurosis and psychosis in literary works by a selection of writers from different cultures. Themes will also be considered from the perspective of relevant psychological literature. Interpretive essays and a research paper are required. The course stresses training in quotation, citation, and research methods.', 4),
('EL2206', 4, 'Science Fiction Literature', 'Science fiction literature and film are often used to imagine utopian and dystopian worlds. At its best, the genre of science fiction raises questions about what makes a good society, the nature of being human, the role of the outsider, the challenges technological advances present, and gender and sexual norms. The course will examine fiction by authors such as George Orwell, Harlan Ellison, Samuel Delaney, Ursula LeGuin, Philip K. Dick, and Octavia Butler as well as films such as Blade Runner and The Matrix. Students will develop their ability to read and think critically and to write summaries, critical analyses and a research paper based on the course material. The course stresses training in quotation, citation, and research methods.', 4),
('EL2207', 4, 'Contemporary American Fiction', 'Students will read and analyze short fiction by authors who reflect the diversity of contemporary American fiction, such as Raymond Carver, Alice Walker, Sandra Cisneros, Junot Díaz, Jhumpa Lahiri, Maxine Hong Kingston, Tim O’Brien, and others. Analysis of the short story will acquaint students with literary form and structure. Biographical and historical factors will be examined as influences on content and form. Interpretive essays and a research pa-per are required. The course stresses training in quotation, citation, and research methods.', 4),
('EL2208', 4, 'Modern American Poety', 'This lecture/discussion course will focus on trends and themes in modern American poetry in the context of the search for an American poetic voice. Poets range from Whitman to Walker and include Frost, Harper, Hughes, Komunyakaa, Sarton, Sexton, Wilbur, Wright, and others. Formal analysis and biographical factors are studied. Students will also become involved in “found poetry” and practice poetic forms. Interpretive essays and a research paper are required. The course stresses training in quotation, citation, and research methods.', 4),
('EL2211', 4, 'Africana Perspectives', 'Explores  recurring  themes  and  modes  of  expression  in  the  Pan-African  world,  ranging  from  the  role  of  the  oral  tradition in traditional African societies to African-American rebellion as expressed in contemporary writing and music. Interpretive essays and a research paper are required. The course stresses training in quotation, citation, and research methods.', 4),
('EL2214', 4, 'Literature and Liberation', 'Examines fiction, poetry, essays, and drama about class-economic struggle, war, and racial and sexual oppres-sion. Through these kinds of literature, oppressed people have voiced their ideas on ethics, politics, and society, and other social groups have responded positively or negatively. The course stresses close reading of literature, understanding literary themes and techniques, reading in historical context, and training in quotation, citation, and research methods. Two or three short interpretations and a research paper are required.', 4),
('EL2216', 4, 'Multicultural Perspectives', 'Works from writers of various cultures enable students to develop an understanding and appreciation of cultural diversity. Interpretive essays and a research paper are required. The course stresses training in quotation, citation, and research methods.', 4),
('EL2218', 4, 'The Short Story', 'A variety of short stories will be studied for theme and structure and other elements of fiction. Emphasis on the  development of the short story in the context of literary  movements, such as realism, naturalism, impressionism. Interpretive  essays  and  a  research  paper  are  required.  The  course  stresses  training  in  quotation,  citation,  and  research methods.', 4),
('EL2219', 4, 'International Short Stories', 'Students will read a variety of short stories by authors from around the world, including Russia, Kenya, Brazil, India, and Japan. Emphasis on character and culture, as shaped by social factors. Interpretive essays and a research paper are required. The course stresses training in quotation, citation, and research methods.', 4),
('EL2221', 4, 'Adolescent Literature', 'Traces the patterns and problems of growing up in America and forming an identity in the context of family influ-ence and social pressures. Authors include Twain, Salinger, McCullers, Baldwin, Marshall, Potak, Walker. Interpre-tive essays and a research paper are required. The course stresses training in quotation, citation, and research methods.', 4),
('EL2222', 4, 'Women\'s Voices', 'This lecture/discussion course focuses on developing students’ abilities to understand, analyze, and write about literature by women writers. Texts studied include essays, poems, stories, and novels by Emily Bronte, Emily Dickinson, Virginia Woolf, Flannery O’Connor, Gwendolyn Brooks, Toni Morrison, Alice Walker, June Jordan, and Maxine Hong Kingston. Students are required to write a reading journal, analytical essays, and a research paper. The course stresses training in quotation, citation, and research methods. Most writing is done outside of class.', 4),
('EL2224', 4, 'Autobiography', 'This course deals with autobiography as a form of personal expression. It explores a major compulsion among writers to look back on their growth and examines the need to communicate the historic vision to the next gen-eration. The interaction between the inner and the outer world, between the quest for personal freedom and the demands for social conformity provides for a vigorous examination of the process of individual growth. Interpre-tive essays and a research paper are required. The course stresses training in quotation, citation, and research methods. ', 4),
('EL2233', 4, 'Environmental Literature', 'This lecture/discussion course focuses on developing students’ abilities to understand, analyze, and write about the literature of natural scientists and other acclaimed authors. Included are works by Lewis Thomas, Henry David Thoreau, Carl Sagan, Paul Theroux, Isaac Asimov, and Rachel Carson. Interpretive essays and a research paper are required. The course stresses training in quotation, citation, and research methods.', 4),
('EL2239', 4, 'Horror Literature', 'This course will explore common characteristics in the literature of horror and the supernatural. Works of Hawthorne, Poe, and Shelley will be in focus, as will some modern Gothic writers. Film and its comparison to the literature will be explored. Interpretive essays and a research paper are required.', 4);
INSERT INTO `courses` (`course_id`, `dept_id`, `course_title`, `course_desc`, `credits`) VALUES
('EL2248', 4, 'The Lyric: The Poetry of Emotion', 'Known as the poetry of emotion, the lyric has been an important vehicle of expression for poets from ancient to present day cultures. The course explores lyrics from a cross-cultural perspective, focusing on the methods poets have employed in order to convey the private, emotional lives of their speakers to the “public,” their audience of readers.  In addition to studying the lyric, students will read and evaluate critical articles as well as compose reading journals and documented essays in response to the texts. The course stresses training in quotation, cita-tion, and research methods.', 4),
('EL2310', 4, 'Introduction to Literature', 'This course is aimed at developing students’ personal responses to literature. The focus will be on specific literary genres such as poetry, drama, novel, short story, and non fiction prose. The readings will cover a variety of periods and cultures.', 4),
('EL2350', 4, 'Reading and Writing for a Multicultural Community', 'This course is a historical and contemporary examination of how immigration, race and ethnicity have helped shape both American national identity and personal identity. Students will explore the political, social, educational, and economic aspects of immigration with emphasis on how minority populations adapted to American culture, changing  American  culture  in  the  process.  This  study  explores  the  writing  of  activists,  political  leaders,  authors,  and other social reformers to discover how they used the written word as a vehicle for change. Students will read articles, speeches, memoirs, poems and short fiction and discuss the various societal issues that they would like to address through writing. Their work will reach audiences beyond their class and serve tangible purposes for com-munity groups and the students themselves.', 4),
('EL3010', 4, 'Structure and Grammar of English', 'This  course  places  formal  English  grammar  in  the  context  of  the  structure  and  development  of  the  language.  Devoting significant attention to the evolution of English and its overall structure, the course also offers intensive study of standard grammar, aimed at both Literature and Teaching students. Students study parts of speech, parts of the sentence, verb and pronoun forms and agreement, and the uses of phrases and clauses within sentences, and they learn to identify these in their writing and the writings of others.', 4),
('EL3200', 4, 'Peer Mentoring Tutorial', 'Students enrolled in Peer Mentoring Tutorial will work under the supervision of a faculty mentor and will, in turn, serve as mentor to selected students. Following an orientation seminar, student mentors will regularly attend an assigned class, assist students in and outside the class with papers, homework, course material, as well as serving as peer advisor. Student mentors will keep records of meetings with mentees, submitting written reports at regular intervals on each mentee. Mandatory attendance at scheduled Peer Mentoring Tutorial. Term required.', 4),
('EL3500', 4, 'Literature Across Cultures I: Analysis', 'This course explores representative works of U.S. and international literature that find their roots in the world’s mul-tiplicity of cultures. The course emphasizes multiple strands and traditions both within world literary culture and within the literary cultures of the United States and other nations. Readings and discussions focus on the dominant themes in fiction, poetry, drama, and essays by writers of distinct national and ethnic identities, genders, and sexual orientations. The course also includes studies of writings about multicultural contributions to literature.', 4),
('EL3510', 4, 'Literature Across Cultures II: Theory', 'This course encourages diverse responses to important works of British-U.S. and World Literature. It fosters the skills of close reading and develops the confidence necessary for independent interpretation of literary texts. While studying each text, students read critical articles about them reflecting the approaches of “new criticism,” bio-graphical and psychoanalytic criticism, new historicism, feminism, queer theory, and other current methodologies. Small group discussions of study questions, oral reports, and writing assignments encourage students to read the texts specifically and respond to them independently.', 4),
('EL3560', 4, 'Literatures of Europe, Part I: Old Testament and Homer to the Renaissance', 'Covers the literary traditions of Europe from the Bible to the Renaissance. Works in these traditions have been foundational for most later writing in English, and for much modern World Literature. Selections vary by semester and have recently included works by Homer, Sophocles, Virgil, Dante, Milton, Shakespeare and others.', 4),
('EL3561', 4, 'Literatures of Europe, Part II: Age of Enlightenment to the Present', 'Surveys the literary traditions of Europe and its diaspora from the 17th to the 21st centuries. Works in these tradi-tions have inspired modern U.S. and British as well as World Literature. Selections vary by semester; recently the course has included works by Moliere, Voltaire, Dostoevsky, Ibsen, Kafka, Pirandello, Becket, Borges, Camus, and others.', 4),
('EL3600', 4, 'U.S. Literature I - Colonial Period to Civil War', 'Poetry, fiction, essay, and memoir from the colonial period to the U.S. Civil War. Examines significant works repre-sentative of Puritanism, the Enlightenment, Romanticism, the “American Renaissance,” Transcendentalism, the voices of Native Americans and women, and the literature of Abolitionism as examples of a developing literary nationalism and as expressions of a multicultural society’s development and struggles. Authors may include Wil-liam Bradford, Anne Bradstreet, Benjamin Franklin, Phillis Wheatley, James Fenimore Cooper, Richard Allen, Edgar Allen Poe, Nathaniel Hawthorne, Herman Melville, Ralph Waldo Emerson, Frances E. W. Harper, Frederick Douglass, John G. Whittier, Walt Whitman, William Wells Brown, and others.', 4),
('EL3610', 4, 'U.S. Literature II - Civil War to the Present', 'Poetry, fiction, drama, essay, and memoir from the U.S. Civil War to the present. Examines significant works rep-resenting realism, naturalism, modernism, and postmodernism in literary technique and responding to the evolu-tion and tensions of a multicultural society, including the labor, immigration, civil rights, feminist, and lesbian-gay experiences. Authors may include Mark Twain, Emily Dickinson, Henry James, Charles Chesnutt, W.E.B. Du Bois, Sui Sin Far, Willa Cather, Edith Wharton, Langston Hughes, Zora Neale Hurston, Ernest Hemingway, William Faulkner, Richard Wright, Tennessee Williams, Ralph Ellison, Gary Soto, August Wilson, Oscar Hijuelos, Louise Erdrich, Toni Morrison, Audre Lorde, Thom Gunn, and others.', 4),
('EL3700', 4, 'Survey of World Literature', 'A study of representative works of world literature from Antiquity to the Modern. The course emphasizes the study and consideration of the literary, cultural, and human significance of selected masterpieces of the Western and non-Western literary traditions. An important objective of the course is to promote an understanding of the literary works in their cultural/historical contexts and of the enduring human values which unite the different literary tradi-\r\n192tions of the world. This course complements EL3560–61, Literatures of Europe Parts I and II, and so focuses largely on literatures of the non-Western world.', 4),
('EL3800', 4, 'English Literature I: Beowulf to 18th Century, inclusive of Shakespeare', 'A survey course examining the works of major English writers from the Anglo-Saxon period through the 18th century, including the Beowulf poet, Chaucer, Shakespeare, Milton, and Swift. Attention paid to their influence on later writers.', 4),
('EL3810', 4, 'English Literature II: Romantics to Present', 'A survey course studying major English writers of the 19th and 20th centuries from the romantic and Victorian pe-riods to contemporary times. Authors may include Wordsworth, Keats, Brontë, G. Eliot, R. Browning, Hardy, Woolf, Joyce, Shaw, and Yeats. Attention paid to their influence on later writers.', 4),
('EL3865', 4, 'Literature of Asia', 'This  course  focuses  on  the  reading  and  discussion  of  a  number  of  literary  masterpieces,  both  traditional  and  contemporary, drawn from the cultures of China, Japan, and India. The range of works presented will provide foundation for considering the influence of history and religion on literature, as well as the ways in which literature shapes culture.', 4),
('EL3870', 4, 'Literatures of Africa', 'Presents  a  series  of  masterworks  from  African  literature  and  its  diaspora  against  the  background  of  traditional  culture, social values, and historical experience. The techniques used by African wordsmiths to evoke their society are examined, beginning with traditional epic oral literature and finishing with the sophisticated works of some of the world’s finest writers. Works by Soyinka, Fugard, Césaire, Achebe, Senghor and others.', 4),
('EL3880', 4, 'Masterpieces of Hispanic Literature', 'Selections  of  outstanding  literary  works  of  Spain  and  Latin  America  from  the  picaresque  novel  to  the  present.  Study includes major writers: Cervantes, Lorca, Unamuno, García Márquez, and others. Given in English.', 4),
('EL3901', 4, 'Introduction to Creative Writing', 'Workshop to help imaginative students get their thoughts on paper. Assignments are short and personal, designed to break through “writing block” and uncover talent that might otherwise be neglected. Attention is given to liter-ary forms and terminology.', 4),
('EL3930', 4, 'Language and Communication Skills for Educations: Issues and Applications', 'This course deals with contemporary issues of importance to those contemplating a profession in the field of edu-cation. It places special emphasis on improvement of reading, writing, and listening skills, making use of timely professional journal articles as a text. Topics include Writing Across the Curriculum, Standards and Assessment, Classroom Management and Initiation into Professional Life. Reading and discussion of the articles, analysis of gram-matical structure, the development of writing skills for the classroom and for achieving success on State exams, and improvement of public speaking to be a successful public educator will be stressed. This course may be required as a condition of satisfying the writing entrance requirement in the School of Education', 4),
('EL3950', 4, 'Creative Non-Fiction', 'Introduces students to the tradition of creative non-fiction, using readings and writing assignments in which students “adopt” an authorial voice. Students will compare and contrast standard news accounts of an event with creative non-fiction versions in order to see how literary techniques re-define history. Students will analyze and apply dif-ferent aesthetic strategies for writing creative non-fiction. Some of the authors we will cover are James Baldwin, Alice Walker, Ocatvio Paz, Charles Baudelaire, Grandmaster Flash and the Furios Five.', 4),
('EL400', 4, 'Native American Literature', 'This course explores Native American literary styles such as autobiography and as-told-to narrative from oral tradi-tions as well as contemporary genres: poetry, short fiction, the novel and drama. Special emphasis on structural and  thematic  elements  provides  students  with  an  understanding  of  the  Native  American world view.', 4),
('EL4010', 4, 'The Harlem Renaissance', 'The Harlem Renaissance of the 1920’s decade produced an unprecedented outpouring of artistic works in the literary, visual, and musical arts. From lectures, close textual analysis of assigned readings, student-centered discus-\r\n193sions, and oral reports, the class will become familiar with major themes and key writings of Harlem Renaissance authors. Attention will be paid to the struggles of the “New Negro Woman” in her attempt to find a voice during the period.', 4),
('EL4015', 4, 'Multi-Ethnic Literatures of the United States', 'Asian American, Latino, and Native American Literatures play an increasingly important part in the multi-ethnic literary traditions of the United States. This course offers an introduction to one or more of these literatures. Read-ings include both classic and present-day works in varied genres. The course will include attention to historical contexts, cultural and political meanings, and aesthetic qualities of the literatures. Coverage may vary in different offerings of the course.', 4),
('EL4020', 4, 'Asian American Literature', 'This course examines memoirs, stories, novels, essays, poems, dramas, and films from the 1890s to the 1990s, by Americans of diverse Asian descent, such as Sui Sin Far, Younghill Kang, Carlos Bulosan, Maxine Hong Kingston, John Okada, Hisaye Yamamoto, Amy Tan, Chang-Rae Lee, and Bharati Mukherjee. Attention will be paid to the historic, biographical, and cultural contexts of each text as well as the aesthetic and literary aspects of its style, language, and structure.', 4),
('EL4030', 4, 'Women and Narrative', 'This course examines novels, stories, letters, journals, poems, essays, and autobiographies by such women as Doro-thy Wordsworth, Emily Dickinson, Charlotte Forten, Virginia Woolf, Nella Larsen, Alice Walker, Gloria Anzaldua, and Maxine Hong Kingston. Each student will select the work of one writer for a research paper.', 4),
('EL4040', 4, 'Black Women Writers', 'African-American Women Writers introduces students to the themes of social justice that are specific to this literary tradition. The course alternates between reading primary texts and providing the needed historical backdrop. Of the many ideas to be covered a few will be; love, the claiming of one’s body, the dual oppression of being a woman and black and the tug-of-war of loyalty. The course may discuss nineteenth and twentieth century writ-ers in comparative perspective, or may focus on recent major authors such as Toni Morrison, Alice Walker and Lorraine Hansberry as well as lesser known writers like Gayle Jones and Toni Cade Bambara.', 4),
('EL4050', 4, 'Lesbian and Gay Literature', 'This course primarily focuses on the emergence of gay, lesbian, and transgender literature and culture from the mid-twentieth  century  to  today.  Students  will  read  works  from  various  genres,  including  novels,  stories,  drama,  poetry, and memoirs, and will also watch documentaries. Topics covered include homophobia, coming out, the gay rights movement, lesbian feminism, AIDS, and transgender. Authors may include James Baldwin, Audre Lorde, Adrienne Rich, Essex Hemphill, Tony Kushner, Jeanette Winterson, Leslie Feinberg, and others.', 4),
('EL4060', 4, 'Literature of Class and Class Consciousness', 'Class represents a largely unacknowledged “culture” coexisting and interacting with others such as ethnic cultures, women’s experience, and lesbian/gay culture. This course looks at fiction, poetry, and drama about class and class conflict, primarily by writers from working-class backgrounds. Examining class and class consciousness, and the interaction of class and race in the U.S., we will explore how literature has been a medium for members of oppressed groups to voice their experiences, world views, and demands, and also for members of more privileged groups to respond to social change.', 4),
('EL4070', 4, 'Topics in African American Literature', 'This course will give an in-depth look at a particular period or genre of African American literature. Topics are offered on a rotating basis. They may include African American Literature 1860-1920; African American Women Writers since the Harlem Renaissance; the “Social Realist” School (for example, Wright, Petry, Killens, Himes); the Black Arts Movement; and others.', 4),
('EL4080', 4, 'Extraordinary Bodies: Disability in Literature', 'This course will examine how the depiction of bodily difference in literature leads to crucial questions about norma-tive experience, language, and identity. The course will study the representation of extraordinary bodies in several literary genres autobiography, poetry, fiction, and drama. While some attention will be given to constructions of disability throughout literary history, the particular focus will be on more recent texts written by writers with disabilities who take up the project of identifying themselves outside of “ablist\" terms.', 4),
('EL4090', 4, 'The Afro-American Novel', 'The exploration of the socio-cultural forces shaping the African-American novel from its earliest antecedents through Wright and Baldwin to its contemporary efflorescence in the works of Toni Morrison, Charles Johnson, Edward P. \r\n194Jones, and others. Some cross-cultural comparison with African and Caribbean novelists will be made. Titles may vary from semester to semester.', 4),
('EL4091', 4, 'Afro-American Poetry and Plays', 'Beginning with the work of Phillis Wheatley in the 18th century, this course explores the dominant motifs in African-American poetry, with special focus on the work of Langston Hughes and Gwendolyn Brooks. The second half of the course is devoted to a survey of African-American drama during the Harlem Renaissance, and culminates in an in-depth analysis of the work of Amiri Baraka, Charles Fuller and August Wilson.', 4),
('EL4100', 4, 'English Internship', 'Designed to provide majors with grounding in their careers, English Internships are available in a number of spe-cializations, where students work with successful mentors at work sites: Legal Internships in courts and law firms, Publishing Internships in publishing houses, and Cultural Internships in cultural institutions.', 4),
('EL4120', 4, 'Internship in Peer Tutoring in Language Arts', 'The internship in peer tutoring deals with the methodology and content of peer tutoring in language arts. Units include communication skills for language arts tutoring, the tutoring cycle, record-keeping, referrals, evaluating writing, the use of computers in tutoring, small group tutoring, long-range and short range goals, resources for language arts tutoring.', 4),
('EL4200', 4, 'Biblical/Classical Influences on Multicultural Literaure', 'The  Jewish-Christian  Bible,  Greek  epic  and  drama,  and  classics  such  as  Dante’s  Divine  Comedy  profoundly  influenced later literature and culture, including U.S. and British multicultural literature. This course covers some of the background that multicultural writers such as James Baldwin, Toni Morrison, William Faulkner, and others took for granted in their works. We will examine how these classics shaped later culture through both glorification and criticism of war, conquest, and slavery, through ideas of fate and individual and community salvation, and through examining the problem of evil. Readings include classic works and modern works influenced by them.', 4),
('EL4300', 4, 'Twentieth-Century Literature: Colonialism and Post Colonialism', 'This course explores selected works of US and British literature in the context of the twentieth-century history of im-perialism, colonialism, and post colonialism. We shall read writing from the first half of the century by such authors as W.B. Yeats, Gertrude Stein, Wilfred Owen, Ernest Hemingway, and Sylvia Townsend Warner and its development and critique in works by Zora Neale Hurston, Samuel Beckett, Tim O’Brien, Toni Morrison, Jhumpa Lahiri, and Zadie Smith. ', 4),
('EL4311', 4, 'Greek Drama', 'The art of drama is one of the legacies of Greece to Western culture. In this course, the development of Greek tragedy and comedy is discussed; plays by Aeschylus, Sophocles, Euripides, and Aristophanes are read as well as 20th century dramas based on these 5th century  works. Some attention is also given to the criticism of Greek tragedy by Plato and Aristotle.', 4),
('EL4312', 4, 'Greek Mythology', 'This course aims to introduce students of widely differing backgrounds and academic preparation to Greek my-thology. In addition to Homer’s Odyssey which is read in its entirety, students read Hesiod’s Theogony and other original source materials. The acquisition of knowledge of the myths paves the way for discussion of the following topics,  among  others:  psychoanalytic  and  other  interpretations  of  Greek  myth,  recurrent  themes  in  myth,  the  relationship between myth and folktale, the transformation of myth by writers and artists, and the role of myth in a scientific and technological society.', 4),
('EL4325', 4, 'Shakespeare: Selected Plays', 'Selected plays by Shakespeare will be read and examined critically and analytically through discussion of these works and of the historical context of the Elizabethan theater and  world view. The focus will also be on the rich-ness  and  variety  of  Shakespearean  language  and  thought.  Study  includes  close  reading  of  some  well-known  Shakespearean tragedies and comedies as well as viewing of plays on film.', 4),
('EL4400', 4, 'Critical Theory', 'Critical theory is perhaps the fastest-growing field of English study since 1980; students entering graduate programs in English now need to have knowledge of the subject. This course will include such classical theorists as Plato and \r\n195Aristotle but will focus mainly on twentieth-century theory, from the “new” criticism of the 1950s through struc-turalism, deconstruction ism, new historicism, and feminist historicism to current postcolonialist and queer theory.', 4),
('EL4405', 4, 'Caribbean Literature', 'Literature of the Anglophone Caribbean, from oral song and James’ Minty Alley to Naipaul, Walcott, and writers of the Caribbean diaspora. The complexities of the relationship between colonizer and colonized, the transforma-tion of that relationship by “the unmasking of imperial fictions,” and the evolution of new forms of discourse will govern the selection of texts.', 4),
('EL4500', 4, 'Topics in British/U.S. Literature', 'This course gives in-depth knowledge of particular periods and genres of literature; topics are offered on a rotating basis. They may include nineteenth-century British fiction; periods and genres in U.S literature; seventeenth- and eighteenth-century British literature; women writers 1760-1840, and others.', 4),
('EL4510', 4, 'Modern Drama and Theater', 'This course will involve reading and viewing critically and analytically plays dealing with important themes and political issues from the late nineteenth century to today. Students will learn to see the theater as a social institution, a form of communication, a means of consciousness-raising, and a site for artistic innovation. Plays may include works by Henrik Ibsen, G.B. Shaw, Eugene O’Neill, Eugene Lonesco, Tennessee Williams, Arthur Miller, Lorraine Hans-berry, Edward Albee, Amiri Baraka, August Wilson, David Henry Hwang, Tony Kushner and Anna Deveare Smith. Class will likely take at least one trip into Manhattan to see a live performance.', 4),
('EL4550', 4, 'Modern British Literature 1890-1960', 'Selected works of several writers in English such as Conrad, Shaw, Yeats, Joyce, Eliot, Lawrence, Woolf, O’Casey, and others, who greatly influenced the literature and the thought of the twentieth century.', 4),
('EL4560', 4, 'Multicultural British Literature since 1960', 'Although the global British Empire came to an end in the twentieth century, the literature of Great Britain became increasingly diverse. Waves of immigrants from former parts of the empire, the anti-immigrant fervor of the 1970s-1980s and its backlash, the women’s rights movement, and the continued and often quite creative re-examination of the literary tradition set the stage for the emergence of a provocative body of works reflecting the multicultural nature of contemporary Britain. This course will examine works of poetry, drama, fiction and non-fiction that illustrate the diversity of British literature over the past fifty years. Course material may include works by Philip Larkin, Jean Rhys, Seamus Heaney, Salman Rushdie,   Kureishi, Zadie Smith, Grace Nichols, Jeanette Winterson, Ian McEwan and Monica Ali.', 4),
('EL4600', 4, 'Literature of India', 'ndian tradition regards literature as a way of knowledge as well as aesthetic experience. Through examples of the major epics, classical poetry and drama, the medieval devotional lyrics, and samples of modern Indian literature, this course aims at providing the students an opportunity to gain awareness of the values and attitudes that have shaped the culture of the Indian subcontinent.', 4),
('EL4630', 4, 'Latin American Literature', 'This course emphasizes key literary movements in Latin America since the conquest. We will examine pre-Columbian texts together with the description of the Americas by early European gaze. We will analyze the collision of cultures, the baroque, romanticism and independence, ideas of Civilization and Barbarism, modernism, the avant-garde and magical realist movements. We will study European and African influences on Latin America letters and how these influences evolved into a Latin American expression. Finally, we will analyze how Latin America became a leading authority in world literature.', 4),
('EL4640', 4, 'French Literature', 'This survey course is intended to serve as an introduction to French literature from the French classical age, in the 17th century, to the present time. Students will be guided through the reading and analysis of narrative fiction, plays and poems by major French writers so as to develop an understanding of the aesthetic and intellectual currents that have shaped French literature. Readings will be organized around thematic modules rather than in chronological order. Topics may include: representations of the self; stories of love and desire; the making of modernity; tradition and experimentation; social reflections; colonialism and post-colonialism, among others.', 4),
('EL4650', 4, 'Literature of Russia and Eastern Europe', 'This course is a sampling of the wonders of the Russian literary imagination, or, as Vladimir Nabokov might say, of its peculiar magic. No other literature has so influenced literature and thought in the rest of the world; perhaps no other national literature has produced so many world masterpieces in so short a time, the 185 years or so since Alexander Pushkin’s first publication. Russian literature is unique in its engagements with the social world, as Rus-sia has gone through two centuries of political struggles and revolutions, but it also explores the privacy of the human heart and the giant questions of philosophy and religion. The course devotes roughly equal time to 19th and 20th century literature and, in most offerings, will include some literature from Russian-influenced countries in Eastern Europe.', 4),
('EL4800', 4, 'Major Authors', 'This course examines the development of one or more authors, tracing key themes, influences, shifts and con-tinuities, and aesthetic development in the context of cultural and political forces. Authors are selected on the basis of having made landmark contributions to the continuing development of literature. Recent offerings have included James Baldwin, William Blake, Ralph Ellison, William Faulkner, F. Scott Fitzgerald, Toni Morrison, Mary Shel-ley, Mary Wollstonecraft, and Virginia Woolf, and others may be selected in the future.', 4),
('EL5010', 4, 'Senior Seminar II: Thesis', 'Under  supervision  of  seminar  director,  students  complete  the  senior  thesis  from  sequential,  critiqued  drafts  to  finished manuscript. Students work intensively with a Thesis Director. Seminar sessions continue development of research and writing skills stressing the integration of research within the student’s own analysis and presentation. Sessions include collaborative readings of work in progress, peer review, oral reports, and presentation of senior thesis.', 4),
('EL5500', 4, 'Senior Seminar I: Research and Writing', 'Autobiographical and biographical works focusing on intellectual development aid students in understanding issues of personal and career identity, the impact of literary study on the formation of self, and related topics. Classwork stresses research and documentation skills and participation in a seminar setting in which each student presents some independent research to the class. In preparation for the senior thesis, students compose their own intellectual autobiographies tracing their growth and development as English majors. Students must complete a senior thesis proposal to pass the course.', 4),
('HI1010', 5, 'World Religions - West', 'This course provides an introduction to the three major religions that share a common belief in the God of Abra-ham:  Judaism, Christianity, and Islam. We will look at the history, beliefs, and practices of each religion separately, but also at the ways they have interacted. These interactions—sometimes peaceful and creative; sometimes vio-lent—have been a major shaping force in Western civilization, from the development and transmission of Greek philosophy through the Crusades, the Holocaust and the ongoing definition of “Western values.”  Study of Judaism, Christianity, and Islam leads to a deepened understanding of principles of theology and ethics, as well as current issues in religious and community life.', 4),
('HI1020', 5, 'World Religions - East', 'It is often said that what is needed in modern life is more “spirituality”—a balance of inward and outward awareness that is often associated with eastern religions. But what do these traditions really mean for people who practice them?  This course provides an introduction to the major belief systems and practices of eastern and southern Asia:  Hinduism, Buddhism, Confucianism, Taoism, and Shintoism. We will look at the evolution of each of these \r\n198religions, considering the ways they have inspired individuals and shaped civilizations through cosmology, ritual, literature and art. We will also look at the ways that these traditions influence societies, including our own, that are far from the religions’ places of origin.', 4),
('HI1240', 5, 'Compartive Cultures', 'This course will provide the student with a foundation for the study of cultures and current social issues from an anthropological perspective. Readings will include articles and, where appropriate, fiction, concerning such is-sues as gender, race, and class, as well as the tensions and opportunities facing traditional communities, such as tribal societies, in a changing world.', 4),
('HI2155', 5, 'Introduction to Comparative Religion', 'Considers the nature and origin of religion, elements of religious practice and thought (symbol, myth, the sacred), ways of being religious, and religion as a basis of community. Methods of analysis include ethical, psychological, sociological, historical, and theological.', 4),
('HI2200', 5, 'Science in Western Civilization', 'A broad, introductory survey of the development of scientific ideas in the West from ancient times to the 20th century, with an emphasis on the major figures and ideas, and key turning points. The course will present selective social and intellectual contexts of science as well as the role of science in shaping Western thought.', 4),
('HI2250', 5, 'Introduction to the Humanities', 'What does it mean to be human? What is our place in the scale of being? How have we confronted and how do we now confront the issues of life and death, justice and law, knowledge and truth? This course will deal with these and other basic problems of the human condition, although the particular approach will vary with instruc-tor. Through the close reading of basic texts in the humanities, students will be introduced to some traditional and contemporary  approaches  to  these  questions  and  will  have  the  opportunity  to  explore  and  express  their  own  views on these issues.', 4),
('HI2511', 5, 'World History I: The Non-Western World', 'The first semester of a year long sequence in World History, this course surveys the history and culture of five regions of the world:  the Middle East, sub-Saharan Africa, China, India and Japan. Our goal is to gain an understanding of each country’s/culture’s place in world history both in the past and in the present. To that end we will study maps and regional geographical features, survey crucial historical periods and events and study short selections from religion, philosophy and literature. In the last section of the course, student reports will focus our attention on each civilization’s unique contributions to the history of of our world.', 4),
('HI2521', 5, 'World History II: Western Civilization', 'This course will explore the origins, dynamics and development of Western Civilization. Emphasis will be given to the shaping of political, economic, social, religious, intellectual as well as cultural aspects from the dawn of the West to the Renaissance. In particular, the course will examine the civilizations of the Near East, Egypt, Greece, Rome, Byzantium as well as the making of feudal society and the rise of modernity in the West. Students will understand the heritage of the West and its connection with modern times.', 4),
('HI2681', 5, 'Introduction to European History: 1350-Present', 'A  systematic  survey  of  European  political,  social,  economic,  cultural  and  intellectual  history  since  the  Renais-sance. The course provides the student with the story of the origins, the pre-conditions, and the continuity of the “making” of the new Europe up to the present. Topics include the age of discovery, nation building, despotism, romanticism, nationalism, science and technology, ideologies and revolutions. An excellent basis for the further study of European history in upper-division courses.', 4),
('HI2700', 5, 'Introduction to Logic', 'This course is designed to sharpen the student’s analytical abilities and powers of reasoning and argumentation. Topics will include types of argument, the structure of argument, how to recognize arguments that are emotion-ally  persuasive  but  logically  fallacious,  and  the  fundamentals  of  modern,  symbolic  logic  which  is  the  basis  for  computer languages. The course will stress the practical value of the principles taught and will relate class work to communication skills in general.', 4),
('HI2720', 5, 'Introduction to Philosophy', 'Serves as an introduction to the role of philosophy in human life. Philosophy will be examined in terms of both its analytical and speculative functions. Of concern will be the relation of philosophical insights to certain compelling contemporary issues. Some of the issues discussed will be the nature of knowledge and truth, the relation of values (both moral and aesthetic) to society, free will, and justice and society. Readings will be drawn from classical and contemporary philosophers.', 4),
('HI2810', 5, 'Geography, Earth, and People', 'Geography sits at the interface between people and their physical world. This course explores this interface by looking at three key elements of the discipline: Mapping, Physical Geography and Socio-Cultural Geography. In the first half of the course, students learn basic concepts and methods to read and make maps and explore the forces making landforms and landscape. In the second half, students make use of these skills and concepts to explore the diversity of human interactions with the physical world. Using the concept of “region,” students are \r\n199introduced to social and physical factors defining world regions as well as the connections that bind these regions together.', 4),
('HI3002', 5, 'Rise of Reason: The Classical Origins of Western Culture', 'An introduction to the Greek and Roman origins of Western civilization. This course aims, through a critical study of the works of the greatest minds and literary artists of Greece and Rome, to give an understanding of their contri-butions to western culture, to provoke thinking on basic problems of human experience, to develop literary taste and judgment, and to improve skills in oral discussion and written analysis. Readings are drawn from the following major genres:  epic, tragedy, history and philosophy.', 4),
('HI3011', 5, 'Foundations of the Judeo-Christian Tradition', 'Western civilization is often characterized as the dynamic interplay of two cultural traditions referred to in conve-nient shorthand as “Athens and Jerusalem.”  This course will examine “Jerusalem”:  the text, figures, themes, and ideas that have defined the Judeo-Christian tradition. The course will emphasize the reading of the Biblical text itself beginning with Genesis and ending with selections from the Pauline tradition.', 4),
('HI3021', 5, 'Europe in the Middle Ages', 'Western values and institutions were formed in the medieval synthesis of Greek philosophy, Roman law, Hebrew/Christian religion, and Germanic folk culture. This course explores the cultural products of that synthesis in art, litera-ture, and religion, and examines the roots of western attitudes toward race, class, nationalism, and war. Taught as social history, it emphasizes the economic and political context in which the cultural foundations of the modern West were forged.', 4),
('HI3030', 5, 'From God to the Machine: Europe from the Sixteenth to the Eighteenth Centuries', 'The course will conduct a broad-based examination of the development of the modern mechanistic world-view. Topics will include the Scientific Revolution and Enlightenment, the series of political revolutions that moved Europe from Divine-Right Monarchy to Constitutional Democracy, and the socioeconomic transformations wrought by the Industrial Revolution that moved the mass of Europeans from an animate natural environment to a mechanistic urban milieu, creating the conditions in which reason replaced faith as the common sense of the common man.', 4),
('HI3040', 5, 'Analysis of Culture', 'Exploration of the role of culture in shaping human action and experience. Various approaches to the explana-tion  of  culture  are  considered  in  the  context  of  the  development  of  social  science.  Students  learn  to  interpret  their own culture and other cultures as systems of knowledge and value. Especially important are the ways culture conditions the effects of social forces in daily life.', 4),
('HI3080', 5, 'Asian Cultures', 'An introduction to the historical and cultural traditions of India, China and Japan. This course invites students to explore the major traditions, ideas, values and social systems that shaped the lives of the peoples of these three Asian countries in the past and that continue to do so today. Students are encouraged to explore their reactions to these unfamiliar ways of life while, at the same time, gaining the ability to view each civilization and culture from its own perspective.', 4),
('HI3091', 5, 'African Cultures', 'An exploration of African civilization, concentrating on the systems of ideas, values, and institutions developed by Sub-Saharan peoples in the context of their historical experience. The unity and diversity of African cultures are related to the economic, political, and social forces operating upon them in relation to the contemporary search for African self-determination.', 4),
('HI3101', 5, 'The Black Church in American', 'This course examines the development of the Black Christian Church in its visible and “invisible institutional forms during the colonial period, and the merging of these two branches, free and slave, following the Civil War. Also the emergence of Holiness and Pentecostal sects, the impact of urban migrations on black spiritual expression, the Black church and civil rights, gender issues, and the recent challenge of Islam will be dealt with.', 4),
('HI3102', 5, 'Hispanic Heritage', 'Taught in English. The Moorish (Muslim) invasion of the Iberian Peninsula in 711 AD, together with the growing presence of Jewish culture and religion in the Iberian Peninsula (Spain and Portugal), transformed the history and culture of the region in ways that are still visible today. Spain’s world-view, religion, artistic and intellectual expres-sion, architecture, and most importantly its language, are a result of that cross-cultural evolution that started more than twelve centuries ago. This course will explore the pivotal role played by Spain in modern European history and culture. Topics, such as the Counter Reformation, the Inquisition, the “Golden Age,” the “merging of cultures” as a result of Spain’s conquest of the New World, and modern Imperialism will be studied and analyzed as part of the Western tradition.', 4),
('HI3110', 5, 'Latin American Culture', 'This history of the Latin American countries is studied from its origins through today. Topics explored include the Amerindian cultures, European conquest and colonialism, African slavery, revolution and independence, “caudi-llismo” and dictatorships. These topics will be studied through the use of maps, films and literature.', 4),
('HI3200', 5, 'Contemporary Religious Experience', 'This course introduces students to the major forms of religious worship and practice in the world today. Videos and field trips as well as readings will be used to develop insights into the distinctive features of worship in various branches of well-defined world religions—Christianity, Islam, Hinduism, and Buddhism—as well as less known or less defined paths such as Sikhism, Rastafarianism, and traditional Caribbean and North American traditions. In addition to exploring distinctions and influences, we will consider the nature of worshippers’ experiences of their faiths. At least one semester of academic study of religion is recommended as a prerequisite for this course.', 4),
('HI3323', 5, 'Buddhism', 'This course offers an introduction to the historical, socio-cultural, and philosophical dimensions of Buddhism. It be-gins with the founding of the religion in India by Gautama Buddha and proceeds to trace its many philosophical trajectories and its multi-cultural history extending throughout Southern and Eastern Asia and beyond. The second half of the semester focuses on the Mahayana Buddhist tradition as a case study in the “attaining of enlighten-ment” by ordinary individuals, analyzing how this tradition has been shaped by historical and cultural forces as well as how it may apply to contemporary issues in our increasingly globalized world.', 4),
('HI3455', 5, 'Modern European Revolutions', 'A comprehensive analysis of Europe’s most dramatic revolutions that have fundamentally transformed modern life.  The  course  will  focus  the  French  Revolution,  the  Revolutions  of  1848,  the  Paris  Commune,  and  the  Russian  Revolution. The ideological and socio-economic background of each revolution will be examined  in the context of Europe’s larger cultural, social, and economic development.', 4),
('HI3525', 5, 'Ancient Greek Philosophy', 'An historical introduction to the foundations of Western thought in Ancient Greece and Alexandria. The course focuses on the philosophies of the pre-Socratics, Plato, Aristotle, the Stoics, the Epicureans, and the Neoplatonists. Readings include short selections from the corpus of the Platonic dialogues, Aristotle, and Plotinus.', 4),
('HI3558', 5, 'Classical Greco-Roman History', 'This course will develop an appreciation and understanding of the history of Classical Greek and Roman civilization. It will survey various aspects of society beginning with the early Minoan and Mycenaean civilization and ending with the fall of the Western Roman Empire. The course goals are for students to learn the historical and cultural framework of Greek and Roman civilizations; to understand the social, ethical and religious setting as well as the philosophical thought of the time; to comprehend geographical locations, the names of prominent people in history and their political and military contributions as these influenced both their times and today; to explore the relationship of Greco-Roman civilization to neighboring civilizations to the east and the peoples to the north; and to apply critical and creative thinking to the study of ancient leaders and extrapolate what can be learned from their life experiences.', 4),
('HI3600', 5, 'Global Geography: People, Places, Environments', 'This course develops a human geography approach to a diversity of political economic and cultural topics of global importance from an international, cross-cultural and historical perspective. It highlights the roots of con-temporary global relationships among places as they influence political and economic trends. A wide and shifting range of topics are covered including, among others, the political economy of the world system, globalization and development, geopolitics, the geography of food and agriculture and urban geography. This course also introduces students to us the data of critical thinking skills necessary for a geographical analysis and to sharpen their global awareness.', 4),
('HI3610', 5, 'American\'s African Heritage', 'An examination of the role of Africans in the shaping of America’s culture and society up to the present. An in-terdisciplinary study of the notion of cultural continuity, and of cultural carryovers as they have impacted upon language, music, art forms, religious worship, and political life.', 4),
('HI3692', 5, 'African History', 'Approaches  the  history  of  Africa  from  the  viewpoint  of  African  people.  Archaeological  records,  oral  tradition  and documentary sources bring ancient and medieval Africa to life. Later units will focus on important themes and debates in African history today. Students will come to understand African civilization in the context of who Africans are, the social forces that have shaped their experience, and the new directions and problems they face in the post-independence eras.', 4),
('HI3700', 5, 'Historical Geography of Latin America', 'This course is an exploration of the construction of Latin America as a geographical region from colonial times to the present. The course focuses on the economic and cultural processes involved in production the region over time. We also look at how the region has historically been divided into sub-regions and specific countries, placing an emphasis on the political economic forces underlying these division. In addition, the course pays particular \r\n201attention to the cultural production of Latin American sub-regions with an emphasis on the history of various racial groups in different parts of the region.', 4),
('HI3703', 5, 'Modern Philosophy', 'This course will examine some of the major philosophers of the modern period. Readings will be drawn from think-ers including Descartes, Hume, Kant, Hegel, Marx, Kierkegaard, Nietzsche. The course will conclude with selected topics and issues in 20th Century thought.', 4),
('HI3704', 5, 'African Religions and Philosophy', 'The view of the African cosmology and religion as a system of thought. Principles of what constitutes African phi-losophy and religion will be examined to analyze the effects on society and politics. The study includes animism, Christianity and Islam.', 4),
('HI3710', 5, 'Contemporary Philosophical Issues', 'This course provides a focused analysis of philosophical questions central to contemporary social and political debate. Topics will be drawn from such current issues as war and peace, terrorism and just war theory, human rights, the philosophy of race and gender, the philosophy of law, the nature of social justice, and biomedical and professional ethics.', 4),
('HI3752', 5, 'Ethics', 'What principles should guide my actions? Are moral values relative or absolute? What is the relationship between law and morality? Why should I be moral? The first part of the course will examine the answers to these questions in the works of such thinkers as Plato, Kant, Mill, and James. The second half of the semester will apply these tra-ditional ethical views to contemporary issues such as human rights, the environment, abortion, euthanasia, and racial and sexual discrimination.', 4),
('HI3835', 5, 'Islamic Cultures', 'This course provides an introduction to the history of Muslim people and societies, and the belief system of Islam.  Beginning with the socio-economic background of pre-Islamic Arabia, we will explore the radically transforming message of the Quran and the empire founded by Muhammad as spiritual and political leader.  Students will gain insight into the spread of Islam, as it developed from a regional faith into a force in world civilization in Europe, Africa, the Middle East, and Asia.', 4),
('HI3840', 5, 'Crescent and Cross: Islam and Christianity in History', 'This course provides an introduction to the roles that Islam and Christianity have played in the history and social structures of the Middle East and Europe. After presentation of the origins and essential principles of both faiths, we will explore the interactions of the faith communities across geographic and ideological boundaries, conclud-ing with consideration of how Muslim/ Christian dialogue and conflict shape our world today.', 4);
INSERT INTO `courses` (`course_id`, `dept_id`, `course_title`, `course_desc`, `credits`) VALUES
('HI3950', 5, 'Philosophy of Religion', 'The course is an examination of religion and the logic of religious discourse. It explores formal, philosophical, and mystical types of theologies; epistemological ethics of revelation, sin, guilt, faith, and salvation; the concept of and  arguments for the existence of God; paradigms of experiential religion, such as the  encounter of the human being with the divine in Judaism,  the experience of love in Christianity, the surrender as de-alienation in the Islamic Sufi vision, and the dialectics of dynamic interdependence expressed as yin-yang in Daoism. A consideration of psychological accounts of religion, challenges of naturalism, existential atheism, and philosophical analysis.', 4),
('HI4001', 5, 'Nineteenth Century', 'The impact of European culture and imperialism on the peoples of India and Japan. Literary works of the period are used to highlight the changes reshaping Europe in the early nineteenth century, the encounters between Europeans and Asian peoples which accompanied the expansion of Europe and the attempts of Europeans and Asians to come to terms with these encounters. Readings include Dickens’ Hard Times, stories by Rudyard Kipling and Rabindranath Tagore, Botchan by Natsume Soseki.', 4),
('HI4011', 5, 'Twentieth Century', 'The mutual impact of cultures throughout the world; the end of nineteenth century colonialism; revolutions and wars; the emergence of the “third world.” Study of the interrelationship of European with Asian and African cultures in the twentieth century. Readings include novels from several cultures.', 4),
('HI4051', 5, 'Logic and Scientific Reasoning', 'An introduction to scientific reasoning, including elementary logic, theory testing and decision-making. A practical course designed to help students read and interpret scientific findings, especially reports that appear in popular magazines and newspapers. More specific topics include probability, causal and statistical hypotheses, correla-tions, causation and sampling techniques. Although the course offers special benefits to students in the sciences and social sciences, no technical background is assumed.', 4),
('HI4062', 5, 'Making History', 'Students will examine a variety of approaches to the study and writing of history. The course challenges the popular conceptions of history as a simple record of the past and of historians as the keepers of that record. The aim is to \r\n202reveal the active role of the historian in the making of history and to show the uses of the past in the present and for the future.', 4),
('HI4210', 5, 'Special Topics', 'This special topics course offers upper division courses in History that are offered only occasionally or on a one-time basis. These courses are designed for majors in History (Liberal Arts and Social Studies track) and will fulfill upper division requirements in that major.', 4),
('HI4305', 5, 'Islam and the Quran', 'Through readings in the scripture, this course will introduce students to the character and content of the Quran, to gain an appreciation of its role in Muslim worship and community. In addition, the class will examine conceptions of revelation, prophethood, hidden or “mystical” truth, and basic theological questions in Islam.  In examining modes of interpretation, students will gain insight into the development of schools of Islamic law and the differ-ences between groups such as Sunni, Shia, and Sufi.', 4),
('HI4306', 5, 'Golden Age of Islam', 'This course focuses on the intellectual and cultural achievements of Islamic civilization, from Islam’s emergence to Arabia in the 7th century through the Mongol invasions in the 13th century. Topics include:  the development of Islamic law, science, arts, philosophy; the role of trade and the teachings of mysticism, and the rise of distinctive Persian and Turkish cultures in Islamic settings. The interactions of Islamic civilization with Byzantium and Europe, as well as Central Asia nomadic groups, will be discussed.', 4),
('HI4308', 5, 'History of the Modern Middle East', 'This course is a survey of the major trends in the development of history, politics, and society in the Middle East from the nineteenth century on.  We will cover this period with an emphasis on four inter-related themes: imperial-ism/colonialism, nationalism, war & conflict, and social history.  We will think critically about the transformation of sovereignty in the Middle East from “Islamic” dynasties, to colonized mandates, to post-colonial nation-states.  We will also be reading primary sources that provide opportunities to encounter the legal, ideological, and political shifts that re-made the Middle East in the modern age.', 4),
('HI4318', 5, 'Islamic Philosophy and Mysticism', 'This course is an introduction to the history of Islamic philosophy and mysticism. It covers topics of human concern such as the ethical role of love and knowledge of the good life and human happiness. The course will compare Muslim and Western philosophers on topics such as “being,” philosophical analysis, and “process metaphysics.” The themes of the “clash of civilizations” vs. dialogue among cultures/philosophical issues will be explored.', 4),
('HI4395', 5, 'Philosophy from the 20th to the 21st Century', 'This course covers highlights of philosophy in the twentieth and twenty first centuries. It begins with Modern European thought (British empiricism, continental rationalism) and its development in the nineteenth century (I. Kant and German Idealism); continues with early and later analytical philosophy; turns thereafter to existentialism, phenom-enology, and pragmatism; and culminates in the philosophy of A. N. Whitehead. Readings include key selections from the works of Carnap, Sartre, Dewey, Heidegger, and the later works of Wittgenstein', 4),
('HI4415', 5, 'Europe of the Dictators', 'The course focuses on the rise of the totalitarian regimes (Fascism, Stalinism and Nazism) in the context of the development of modern Europe. It begins by tracing their roots in the nineteenth century; surveys their appear-ance and development in the early twentieth century, and concludes with  the collapse of the Soviet bloc and the emergence of the new Europe in the 1980s and 1990s.', 4),
('HI4420', 5, 'Women and Witchcraft', 'Witchcraft has generally been associated with women. The course examines the relationship between women and witchcraft in order to uncover the roots and assess the consequences of this association. It begins with a look at the anthropological record, focuses on the early modern witch persecutions, and concludes with an examination of the survival of witchcraft beliefs and their relationship to women in the present.', 4),
('HI4557', 5, 'Renaissance and Reformation in Europe', 'The foundations of Modern Europe were laid in the two movements examined in this course. It begins with the revival of pagan classical culture in the commercial and urban milieu of Renaissance Italy, and traces the diffusion of the artistic and intellectual movement pioneered there to the rest of Europe. As Renaissance culture spread, it merged with existing traditions, and thereby contributed to the Reformation, a religious reform movement that transformed the Christian religion and convulsed Europe for more than a century. The course emphasizes the in-terconnections between Europe’s socio-economic development, its political upheavals, and its dramatic cultural achievements.', 4),
('HI4600', 5, 'World Regional Geography', 'This  course  focuses  on  the  heightened  connections  between  different  parts  of  the  world  through  a  survey  of  the world’s major regions. The course not only provides a description of the different environmental, economic, cultural, political and social aspects of world regions, it provides an understanding of the differential effects on globalizaion as it interacts with particular local and regional settings. This course should give students a groad, yet \r\n203relevant understanding of the world in which they live and how histories and events of distant regions are related to their daily lives.', 4),
('HI4632', 5, 'Japanese History through Literature', 'From  Samurai  to  Businessmen:    a  survey  of  Japanese  history  and  culture  from  before  the  days  of  the  Samurai  warrior to the world of the modern business corporation.  Special emphasis on aspects of Japanese culture that remain important today:  the question of Japan as a country of cultural “imitators”; the relationship between the traditional importance of groups in Japanese society and Japan’s enormous industrial success; and the signifi-cance of the Japanese emphasis on skills of art and violence—once so admired in Samurai warriors and still highly valued today. ', 4),
('HI4650', 5, 'The History of African Enslavement', 'The study of various forms of enslavement in Africa from precolonial times to the present.  Topics  include:  domes-tic/African slavery, “Oriental” and trans-Atlantic slave trade & human trafficking.', 4),
('HI4800', 5, 'History of India', 'Fat Maharajas atop bejeweled elephants, naked holy men sitting silently along the roadside, ragged children begging for scraps of food, maddened zealots attacking each other from caste hatred or religious fanaticism -these are the stark images that dominate American and Western ideas about India. But India’s 5,000-year history offers much more. From the intricacies of an ancient Sanskrit-based culture and the grandeur of Mughal tombs to the vibrancy of modern Bollywood films and the contending ethnic/religious identities of post Independence India—India’s history tells the story of how diverse populations wove together their different ways of life to create the multi-dimensional tapestry that is India today. This one semester course explores the vibrant diversity of India’s past with an emphasis on its multiple legacies and the ways 20th and 21st century Indians have used these lega-cies to construct modern identities and a modern, democratic nation.', 4),
('HI4850', 5, 'Domesticity in the 19th and Early 20th Century', '“A place for everything and everything in its place.”  This trans-regional history course explores the spread of Eu-ropean, middle-class ideas about home and family life-global domesticity—throughout the 19th century world, with special focus on origins in England and development in and impact on America, India and Africa. What re-lationship should exist between a husband and a wife, how a mother should raise her children, even how kitchen spices should be arranged on a storeroom wall—all became issues for debate and contestation. We look at these debates and conflicts through domestic manuals produced in these countries and through the life stories of people (mostly women) who wrote and/or read these materials.', 4),
('HI4900', 5, 'Modern China - a Study Abroad Course on Chinese Civilization', 'Offered in conjunction with the faculty and staff of a university in China. Through lectures, trips, and everyday living experiences, this 4 week summer course will introduce students to all aspects of life in modern China—from its culture to its business community, from its political philosophy to the ideas of the men and women on its streets. Students will attend lectures and live at Wuyi University and work with Wuyi faculty and students. Day trips will allow students to explore cultural spots and cities in Guangdong Province and a special four day trip will take students to nearby Hong Kong and Macao.', 4),
('HI4905', 5, 'Chinese Civilization', 'An introduction to one of the oldest civilizations of the world. This course will provide students with general knowl-edge of 5,000 years of Chinese history and peoples, cultures and traditions, languages and literatures, music and arts, as well as philosophies and beliefs. It will also introduce students to the impact of cultures on the establishment and development of the Chinese social, political and economic  systems.', 4),
('HI4910', 5, 'Chinese Diaspora across the Pacific', 'This trans-regional course provides historical analyses in the migration of the Chinese to the United States from the early 19th century to the present. It discusses issues relating to immigration policies, race, class and ethnicity.  It also examines trans-cultural identity in global perspectives.', 4),
('HI5000', 5, 'Social Studies Senior Seminar', 'This course is the required capping course for History majors completing the Social Studies Track and for Adoles-cence Education Social Studies majors completing the B.A. in History (Social Studies Track).  It focuses on the issue of global human rights.  Students define, research, and write a major research paper on some aspect of human rights.  ', 4),
('HI5900', 5, 'Senior Seminar', 'Designed for students earning degrees in History (Liberal Arts Track), the Senior Seminar focuses on global human rights.  Students define, research, and write a major research paper on an historical topic related to a human rights issue.', 4),
('HI5910', 5, 'Senior Research Project', 'A research project required of Philosophy and Religion majors that can be structured in one of the following ways:  1) The student may enroll in HI5910 at the same time as another upper-division Philosophy and Religion course and do the research project in conjunction with the course;  OR 2) The student may enroll in HI5910 and do the research project as a “stand-alone” undertaking in consultation with an adviser.', 4),
('IR2210', 6, 'Unions and Management: An Introduction', 'Focusing on the current state of labor-management relations, this course introduces students to collective bargain-ing, labor and employment law, history of labor relations, labor union and management organizational structures, grievance handling and arbitration, and labor and management strategies. Required for all Industrial and Labor Relations majors.', 4),
('IR3120', 6, 'History of American Labor Relations', 'This course follows the broad contours of American labor-management history, with an emphasis on the sources of growth and decline of the modern labor movement. Factors examined include:  forms of employer and union organization, legal status of unions, immigration, race, gender, globalization, technology, politics, and ideology. Organizations surveyed include:  Knights of Labor, Industrial Workers of the World, American Federation of Labor, Congress of Industrial Organizations, and the AF-CIO.', 4),
('IR3140', 6, 'Unions and Public Policy', 'The global economy has pushed issues such as free trade vs. fair trade, international investment, distribution of income, health care policies, child and sweatshop labor, and the legal rights of labor unions onto center stage. This course examines union and employer views and activities regarding these and other important public policy issues including minimum wage, unemployment insurance, worker compensation, and occupational safety and health. ', 4),
('IR3415', 6, 'Labor Economics', 'Develops different frameworks for understanding today’s labor markets, ranging from market-based to institutional-ist theories. Includes analysis of current trends, major factors affecting the labor supply (e.g., immigration, women workers, unions) and the demand for labor (e.g., automation, investment policies, business cycle, productivity).', 4),
('IR3500', 6, 'Arbitration and Mediation', 'This course studies the function of arbitration in the field of labor-management relations, including an analysis of principles and practices, the law of arbitration, briefs, the conduct of an arbitration hearing, and the preparation of an arbitration opinion and award. Students also study the use of mediation in resolving contract grievances.', 4),
('IR3860', 6, 'Development of the Modern Corporation', 'The  modern  corporation  viewed  as  the  dominant  institution  of  the  21st  century.  Major  areas  of  study  include:    historical development; multinationals and conglomerates in today’s global economy; political and economic power; private planning; labor relations.', 4),
('IR4320', 6, 'Labor and Employment Law', 'Taught by an attorney. Detailed introduction to labor (union) and employment law affecting employers, unions, and workers in the United States. Examines social philosophy, including employment-at-will doctrine, and histori-cal context. Includes major provisions of the National Labor Relations Act; Taft-Hartley Act and Landrum-Griffin Act; NLRB and federal court legal interpretations; New York State’s Taylor Law and other public sector labor law; anti-discrimination statutes; Fair Labor Standards Act; pension law; family and medical leave.', 4),
('IR5900', 6, 'Senior Project/Internship in Industrial and Labor Relations', 'Student completes a major research project or internship, individually tailored to her or his background and ex-perience. Offered every semester', 4),
('MA', 7, 'Applied Cryptography', 'This course develops notions of information security and deals with the tools for guaranteeing secure communica-tions in an adversarial setting. Topics include basic number theory, cryptographic methods, key distribution, and protocols for authentication and confidential communications. The course examines C++/Java security applica-tions that employ cryptography. Students will be assigned several small programs incorporating security.', 4),
('MA1010', 7, 'Powertrack Math', 'Powertrack  Math  is  a  highly  structured  course  which  utilizes  an  active  learning  approach.  The  course  involves  mandatory attendance at a lecture class and required hours working in a lab. The purpose of the course is to prepare students in an accelerated way for entry into MA1020 College Algebra and other courses that meet the Mathematics Proficiency requirement at the College. It will include topics of real number arithmetic as well as topics in Introductory Algebra, including linear equations and inequalities, graphing linear equations, exponents, polynomials and factoring, and systems of equations. Attendance at an orientation meeting prior to the begin-ning of the semester is mandatory.', 4),
('MA1020', 7, 'College Algebra', 'Topics include functions, factoring polynomials, rational and algebraic expressions, exponents and radicals, solu-tions to quadratic equations, inequalities, graphs of functions, exponential and logarithmic functions, solution of exponential and logarithmic equations.', 4),
('MA2000', 7, 'Applied Statistics', 'Applied Statistics is a Liberal Education Curriculum course intended to develop the statistical literacy of all students regardless of their major. The emphasis is on organizing and summarizing data, applying appropriate statistics, and on understanding and interpreting the results of statistical tests. Real data derived from a variety of fields including  education,  psychology,  sociology,  life  and  physical  sciences,  economics,  and  business  will  be  used  throughout the course.', 4),
('MA2010', 7, 'Foundations of Mathematics I', 'A course designed primarily for students majoring in elementary education. MA 2010 covers fundamental theory, historical  context  and  underlying  logic  of  mathematics  taught  in  elementary  school.  Content  is  intended  to  complement the recommendations in the National Council of Teachers of Mathematics Standards, and emphasis is placed on problem solving and communication in mathematics. Topics studied include introductory problem solving, functions, number systems, the operations and properties of arithmetic, estimation, and selected topics from set theory and number theory. ', 4),
('MA2050', 7, 'Quantitative Reasoning and Decision Making', 'This course was designed for Liberal Education Curriculum, and is intended to improve quantitative literacy and reasoning skills regardless of major. MA2050 provides essential skills in logic, problem solving, critical thinking and decision making. Quantitative methods and applications to real-life problems are explored, as well as decision tools  for  individuals  and  society.  Topics  include  measurement,  patterns  and  trends,  proportion  and  equity,  un-derstanding data and graphs, logic and sequential reasoning, risk, uncertainty, probabilistic reasoning, natural law,  descriptive  statistics,  decision  trees.  Personal  decisions  and  applications  across  disciplines  are  explored  in  areas that include consumer finance, advertising, numbers in the news, personal behavior, health and medicine, incidents and accidents, insurance, energy, environment and sustainability.', 4),
('MA2080', 7, 'Precalculus for Business and Economics', 'The study of linear, quadratic, exponential, and logarithmic functions and their graphs. Systems of equations and an introduction to matrices. Applications in the fields of business and economics.', 4),
('MA2090', 7, 'Precalculus', 'A course designed primarily for students who wish to take MA2310. A study of algebraic, logarithmic, exponential, and trigonometric functions and their graphs.', 4),
('MA2300', 7, 'Calculus for Business and Economics', 'Limits, differentiation, and integration. Relevant applications from the areas of business, economics and the social sciences. ', 4),
('MA2310', 7, 'Calculus & Analytic Geometry I', 'Topics include functions and their graphs, limits and continuity, derivatives of polynomials, rational functions, alge-braic functions, exponential & logarithmic functions, and trigonometric functions, applications of the derivative, definite and indefinite integrals, fundamental theorem of calculus.', 4),
('MA2320', 7, 'Calculus & Analytic Geometry II', 'Topics include indefinite and definite integral, applications of definite integral, integration techniques, infinite series, and analytic geometry. ', 4),
('MA2500', 7, 'History of Mathematics', 'A survey of the history of mathematics from the beginnings through the 20th century. With special attention to culture and mathematics. Emphasis on topics germane to the high school curriculum.', 4),
('MA3020', 7, 'Foundations of Mathematics II', 'A course designed primarily for students majoring in elementary education. MA2020 covers fundamental theory, historical  context  and  underlying  logic  of  mathematics  taught  in  elementary  school.  Content  is  intended  to  complement the recommendations in the National Council of Teachers of Mathematics Standards, and emphasis is placed on problem solving and communication in mathematics. The syllabus includes topics from elementary combinatorics, probability, statistics, geometry and measurement.', 4),
('MA3030', 7, 'Discrete Mathematics', 'An introduction to discrete mathematical structures. Topics include propositional and predicate logic, set theory, relations and functions, induction and recursion, methods of proof, number theory, and graphs and trees.', 4),
('MA3160', 7, 'Linear Algebra', 'An introduction to linear algebra. Topics included systems of linear equations, matrices and matrix algebra, de-terminants and their properties, vectors and vector spaces, linear independence, span of a set of vectors, basis and dimension of a vector space, linear transformations of vector spaces, rank of a matrix and the rank theorem,  eigenvalues and eigenvectors, and diagonalization of matrices.', 4),
('MA3180', 7, 'Foundations of Secondary School Mathematics', 'This course is designed for students planning to be secondary school mathematics teachers. The course covers the fundamental theory, historical context and underlying logic of mathematics taught in secondary school. It follows the National Council of Teachers of Mathematics Standards. The goal is for students to develop a deep understanding of secondary mathematics and to enable future teachers to provide their students with the highest quality instruction. This course can be used as a preparation for the New York State Teacher Certification Examina-tion in Mathematics, Content Specialty Test.', 4),
('MA3210', 7, 'Introduction to Probability and Statistics', 'This course provides a foundation in probability and statistical inference. Topics include set operations, combi-natorics, games of chance, models for uncertainty, tree diagrams, random variables, discrete and continuous distributions, bayesian analysis, expectation, variance, sampling statistics, estimation, hypotesis testing. Emphasis on reasoning skills, model development and problem solving across disciplines.', 4),
('MA3330', 7, 'Calculus and Analytic Geometry III', 'Three main areas will be studied. The first is the Vector algebra and geometry of three-dimensional space including: lines, planes, and curves in space; polar, cylindrical, and spherical coordinate systems. Using this geometry, limits, partial differentiation, directional derivatives, max-min theory and Lagrange Multipliers are studied. The final area of study is integration, including double, triple integrals, line integrals, and the divergence, Green’s and Stokes Theorems.', 4),
('MA3520', 7, 'Transition to Advanced Mathematics', 'An  introduction  to  concepts  commonly  used  in  advanced  mathematics  with  an  emphasis  on  writing  proofs.  Topics include logic, set theory, relations, functions, and cardinality as well as selected topics from other areas of advanced mathematics such as number theory, abstract algebra, topology, and real analysis.', 4),
('MA4100', 7, 'Number Theory', 'A study of the utilization of concrete examples to introduce concepts of modern algebra; prime numbers, congru-ences, diophantine equations, elementary combinatorial analysis.', 4),
('MA4160', 7, 'Advanced Linear Algebra', 'This course is a rigorous, abstract treatment of linear algebra. Topics to be covered include vector spaces, linear transformations, eigenvalues and eigenvectors, diagonalization, inner product spaces, and canonical forms.', 4),
('MA4200', 7, 'Probability', 'Sample space, concepts of probability, conditional, marginal and joint probabilities, random variables and func-tions of random variables; discrete and continuous and other special distributions; moment generating functions; law of large numbers and central limit theorem; conditional expectations, and introduction to stochastic processes.', 4),
('MA4300', 7, 'Numerical Analysis', 'A study of numerical methods with computer work: solution of algebraic and transcendental equations, systems of linear equations, interpolation, numerical solution of differential equations, error estimation.', 4),
('MA4360', 7, 'Differential Equations', 'A study of differential equations and their applications; ordinary differential equations with particular emphasis on linear differential equations, systems of differential equations, boundary value problems and applications to electrical, mechanical and chemical systems.', 4),
('MA4510', 7, 'Geometry', 'Geometry from a modern axiomatic standpoint. Higher Euclidean geometry emphasizing incidence and separa-tion properties, metric properties, area theory. Euclidean constructions.', 4),
('MA4910', 7, 'Operations Research I', 'An introductory course in operations research theory and methodologies. Operations research uses systematic mathematical processes to find optimal solutions to problems in business, government and science. Topics include matrix algebra, Simplex method of Linear Programming, the Big M Method, Duality Theory, Transportation Program-ming, the Assignment Problem, Network Analysis and an Introduction to Dynamic Programming.', 4),
('MA4920', 7, 'Operations Research: Probabilistic', 'The applied math course explores Operations Research models that are probabilistic in nature.  Topics include Queueing Theory, the Birth and Death Process, Stochastic Processes, Markov Chains, Inventory Theory,  Transporta-tion Systems and Energy Systems. To demonstrate applied learning, students undertake an original project involving field observations, model development, analysis and written report.', 4),
('MA5120', 7, 'Abstract Algebra I', 'An introduction to basic algebraic structures. Topics will include groups, rings, integral domains, ideals and fields together with their homomorphisms. ', 4),
('MA5130', 7, 'Abstract Algebra II', 'Continuation of MA5120 and includes the Sylow Theorems, free groups, extension fields, Galois theory, finite fields.', 4),
('MA5230', 7, 'Mathematical Statistics', 'Review  of  set  theory,  probability,  random  variables  and  some  standard  distributions.  Focuses  on  estimation  of  parameters, confidence intervals, hypothesis testing, likelihood ration tests, sampling distributions, one-sample and two-sample test. ', 4),
('MA5320', 7, 'Advanced Calculus I', 'An analytical study of the theory underlining calculus. Topics will include the real number system, limits, continuity, uniform continuity, differentiability, sequences and series of functions, uniform convergence, Taylor series, theory of integration, elementary transcendental functions.', 4),
('MA5330', 7, 'Advanced Calculus II', 'Rigorous study of vector calculus. Topics will include continuity, differentiation and integration of vector valued functions, inverse and implicit function theorems, differential forms and general Stokes’ Theorem.', 4),
('MA5360', 7, 'Real Analysis', 'Theory of the Lebesque integral; outer measure, measure and measurable sets; simple functions and the space of Lebesque integrable functions; theorems of Fatou and Lebesque; dominated (and bounded) convergence theorems; Riemann-Stieltje’s integrable; the Lp spaces; inequalities. Signed measure; the decomposition theorems of Hahn and Jordan.', 4),
('MA5380', 7, 'Complex Analysis', 'Introduction to the theory of analytic functions of complex variables including such topics as complex arithmetic, power series expansion, conformal mapping, analytic functions, and residues.', 4),
('MA5510', 7, 'Topology', 'A study of general topology and introductory algebraic topology, including such topics as topological spaces, metric spaces, continuity, connectedness, compactness, product and quotient spaces, functions spaces, homo-topy, fundamental groups.', 4),
('MA5900', 7, 'Research', 'Research project carried out under the supervision of a faculty member.', 4),
('MA5910', 7, 'Special Topics', 'Selected topics in mathematics.', 4),
('MA9990', 7, 'Independent Study', 'Designed to give the advanced student the opportunity for independent reading, development of a project or a mathematical model.', 4),
('ML1000', 9, 'Basic French I', 'Open to students with no previous training in French. Each provides for acquisition of the communication skills in French, with special emphasis on aural comprehension and speaking. Students are also given the opportunity to achieve basic competency in reading and writing.', 4),
('ML1010', 9, 'Basic French II', 'Open to students with no previous training in French. Each provides for acquisition of the communication skills in French, with special emphasis on aural comprehension and speaking. Students are also given the opportunity to achieve basic competency in reading and writing.', 4),
('ML1100', 9, 'Basic Spanish I and II', 'All communications skills in standard Spanish including basic speaking and aural comprehension, basic reading and writing are covered in these courses. Not appropriate for students with background in spoken Spanish. ML1110 is open to students who have completed ML 1100 or its equivalent. Both are offered in the fall and in the spring.', 4),
('ML1150', 9, 'American Sign Language I', 'n introduction to American sign language, the natural language of the deaf community in the United States and Canada. Focuses on conversations in sign, basic rules of grammar and aspects of the deaf community.', 4),
('ML1160', 9, 'American Sign Language II', 'Continuation of basic American sign language and deaf culture study, with opportunities to build receptive and expressive sign vocabulary and phrases; use of signer space; social expressions and body language; introduction to fingerspelling.', 4),
('ML1200', 9, 'Basic Chinese I', 'Open to students with no previous, or limited, knowledge of Chinese. Each provides for acquisition of communica-tion skills in Chinese and introduces writing.', 4),
('ML1210', 9, 'Basic Chinese II', 'Open to students with no previous, or limited, knowledge of Chinese. Each provides for acquisition of communica-tion skills in Chinese and introduces writing. ', 4),
('ML1300', 9, 'Basic Arabic Language I', 'This course provides an introduction to Modern Standard Arabic, the language of print and broadcast media throughout the Arabic-speaking world. Alongside conversation, a substantial portion of the course will be devoted to mastery of basic reading and writing skills. Students will be introduced to common greetings, numbers, colors and basic vocabulary relevant to everyday environments. By the end of the course, students should be able to formulate questions and present basic information about themselves relating to family and school experience. Music, visual media, maps and other supplementary material (including field trips, as possible) will reinforce lan-guage skills and introduce students to the diverse aspects of culture in the Arab world.', 4),
('ML1310', 9, 'Basic Arabic Language II', 'This course continues the introduction to Modern Standard Arabic, the language of print and broadcast media throughout the Arabic-speaking world, begun in Basic Arabic Language I. Students will progress toward simple conversations about themselves and others, classroom and travel experience, leisure activities and basic needs. By the end of the course, students should have mastered several hundred words of vocabulary. Work on reading and writing skills will continue, so that students can create and recognize the vocabulary in written form, as well as understanding authentic printed material such as signs and newspaper headlines. Music, visual media, maps, interviews and other supplementary material (including field trips, as possible) will reinforce both language skills and cross-cultural understanding. ', 4),
('ML1400', 9, 'Basic Italiam I', 'Open to students with no previous, or very limited, knowledge of Italian. Each provides for acquisition of com-munication skills in Italian, with emphasis on aural comprehension and speaking. Students will also develop basic competency in reading and writing.', 4),
('ML1410', 9, 'Basic Italian II', 'Open to students with no previous, or very limited, knowledge of Italian. Each provides for acquisition of com-munication skills in Italian, with emphasis on aural comprehension and speaking. Students will also develop basic competency in reading and writing.', 4),
('ML1600', 9, 'Basic Punjabi I', 'Basic Punjabi I and II introduce students to basic Punjabi Language skills: reading, writing, speaking and listening. Emphasis is placed on the history and culture of Punjab. Basic I is designed for students with no experience in the language.', 4),
('ML1610', 9, 'Basic Punjabi II', 'Basic Punjabi I and II introduce students to basic Punjabi Language skills: reading, writing, speaking and listening. Emphasis is placed on the history and culture of Punjab. Basic I is designed for students with no experience in the language.', 4),
('ML2000', 9, 'Intermediate French I', 'This course provides for a broadening and intensification of the four language skills (listening, speaking, reading and writing) in standard French. It is designed for students who have had at least 2 years of high school French or \r\n214have some familiarity with basic vocabulary and structures.', 4),
('ML2005', 9, 'French-English Translation', 'This is an introductory course in the practice and theory of French to English translation. After a basic introduc-tion to modern translation theory, students will practice the precision skills necessary to understand, analyze and accurately translate short prose texts from French into English. They will learn how to preserve the meaning, style, syntax and tone of source text. Passages selected for translation will come from a variety of sources, including short stories, plays, newspaper or magazine articles on different topics, and will be of increasing complexity and length.', 4),
('ML2010', 9, 'Intermediate French II', 'Designed for students who wish to improve their ability to write in French, to expand their vocabulary and to lessen the interference of English in French oral communication. The course will offer a review of grammar and correct usage and intensive oral practice based on different topics related to French-Caribbean culture. Reading and writing assignments will help students sharpen their communication skills in standard French.', 4),
('ML2100', 9, 'Intermediate Spanish I', 'This course is designed for non-native speakers who have learned the basic structures of Spanish and for Hispanic students with some knowledge of spoken Spanish but no prior academic training in the language. Students will \r\n209work on the four language skills (listening, speaking, reading and writing) in standard Spanish. Special emphasis, however, is placed on listening and speaking. Expanding vocabulary and building confidence in speaking are the main goals of this course.', 4),
('ML2110', 9, 'Intermediate Spanish II', 'This course offers a comprehensive review of Spanish grammar and intensive work on vocabulary building. It is designed both for non-native speakers who have some competence in spoken Spanish and for Hispanic students who have had limited academic training in the language. The course is intended to develop competence in reading, writing and speaking.', 4),
('ML2400', 9, 'Intermediate Italian I', 'The primary aim of this course is to continue learning the Italian language and culture while enabling further com-municative proficiency in conversational situations.  Emphasis continues on the development of the language skills: speaking, reading, writing and listening to develop advanced cultural understanding and communication.', 4),
('ML2500', 9, 'Hispanic Language and Culture', 'Taught in Spanish. Increases oral proficiency using authentic reading materials and “real life” situations, which focus on themes such as ethnicity, education, art, religion, economic and political developments in the Spanish-speaking world.', 4),
('ML2550', 9, 'Intro to Spanish, Latin-American and Latino Cultural Studies', 'Students will examine the effects that social and cultural models associated with colonialism, nation building and Western modernity have had on the formation and development of Spanish, Latin American and Latino identities and cultures.', 4),
('ML3100', 9, 'Advanced Spanish Conversation and Composition', 'Designed for both non-native speakers who have had at least two years of Spanish study, and for Hispanic stu-dents who need to activate and expand their ability to think and express themselves in their heritage language. This course will provide intensive oral practice on different topics related to Hispanic culture as well as current events of particular interest to students. A variety of reading and writing assignments will help students amplify their vocabulary, lessen the interference of English in Spanish oral communication and strengthen their ability to express ideas both in conversation and in writing. ', 4),
('ML3150', 9, 'Modern Italian Civilization', 'Taught in English.  This course will provide students with an introduction to modern Italian culture and civilization as repre-sented in works of art, literature and film.  We will examine the prominent role played by Italy in the development of Euro-pean art, culture, history and thought, and the shaping of Western values and taste.  From the Renaissance to the present.', 4),
('ML3200', 9, 'Translation Workshop', 'This is an introductory course in the theory and practice of English/Spanish translation. A variety of prose texts, both literary and non-literary, will be selected for translation, using mostly Spanish as the target language, with some practice of Spanish to English translation. English and Spanish grammar rules are reviewed so students can develop a strong sense of proper usage. Students will work on comparative grammar, style, rhetorical structures and levels of  discourse. Emphasis will be placed on expansion of vocabulary in both languages, and on the development of a clearer understanding of the morphologi-cal and syntactical differences between the two languages.', 4),
('ML3250', 9, 'Fundamentals of Spanish Linguistics', 'This course provides an essential survey of the major areas of Spanish linguistics geared primarily towards the un-dergraduate Spanish Education major. Topics to be covered include advanced grammar and syntax, phonology, and lexical morphology. Course readings and fieldwork assignments are intended to provide the student with both a descriptive introduction to the field, which should enable non-natives to improve their own Spanish gram-mar, listening comprehension and pronunciation; and native speakers to be sensitive to learner difficulties, and to make them more effective educators of Spanish. The course is taught in Spanish with technical terminology given in both Spanish and English. ', 4),
('ML3260', 9, 'Spanish Linguistics: Universals of Grammar', 'In this course, students will learn linguistic terminology for an exhaustive classification of parts of speech, word formation (morphology) features and marking, and syntactic function. By examining specific grammar topics that are problematic to native speakers of English or Spanish, the course will enable students to improve both their grammar and writing skills by generating grammatical sentences and by analyzing errors. Course taught on-line in Spanish with exercises and examples in Spanish and  English, as well as other world languages.', 4),
('ML3300', 9, 'Artistic Expressions of Spain', 'Summer  course  taught  in  English  in  Santiago  de  Compostela,  Spain.  This  course  is  an  overview  of  the  art  and  culture of Spain through guided readings and visits to museums and galleries. Students will become familiar with masterpieces of Spanish painting, from El Greco to contemporary painters. Artistic styles and movements will be discussed, as well as the influence of various cultures on the arts of Spain.', 4),
('ML3310', 9, 'Chicano/a Cultural Studies', 'Through interdisciplinary, cross cultural studies in the humanities this course examines current historical and theoreti-cal writings on the lived experiences of Chicano/a in U.S. history. Themes include culture, politics, re-presentations, contestation, social reproduction, identity and difference, and domination/resistance. Taught in Spanish.', 4),
('ML3362', 9, 'Advanced Spanish Grammar and Composition', 'Designed for both Heritage speakers and second-language learners. The focus of this course is on the develop-ment of reading and writing skills through a thorough review of grammar and weekly exercises and compositions. Students will improve their ability to write in correct Spanish, expand their overall vocabulary and perfect and systematize their knowledge of grammar and correct usage.', 4),
('ML3410', 9, 'Latino/a Writers in the United States', 'Taught in English. This course recognizes the contributions of “Latino” writers who have produced a body of litera-ture in English. The works represent the cultural diversity within the Latino communities in the United States, and the response by various authors to questions of acculturation to new social conditions. ', 4),
('ML3430', 9, 'Intro to the Pre-Columbian Culture', 'An interdisciplinary survey course in the humanities intended to introduce students to the scientific achievements and  cultural  innovations  of  the  Pre-Columbian  civilizations  of  the  Americas  from  ancient  times  to  the  colonial  period. The course will draw upon interdisciplinary scholarship including readings from history, art history and an-thropology of the cultures of Mesoamerica (Mexico and Central America) and the Andes (Peru, Ecuador, Bolivia, Chile) to identify and explore the contributions to the ancient and early modern world; and current explorations into evidence for Pre-Columbian activity in the Mississippian civilizations of the present day United States.  Offered in English.', 4),
('ML3450', 9, 'Italian Cinema-Neorealism to Present', 'Italian films, which emphasize post-war genre and Neorealism to present day Italy are viewed, analyzed and discussed in terms of their historical, political, economic, and social context.  The selected films cover a wide range of both historical and social perspective. The course is conducted in English and films have English subtitles.', 4),
('ML3500', 9, 'Critical Writing and Textual Analysis', 'Taught in Spanish. For the student who is interested in pursuing the study of literature in Spanish, this course devel-ops critical reading and writing skills and introduces methods of textual analysis. Through intensive practice and class discussions, students will refine their ability to express independent ideas, organize their thoughts, develop a theme and interpret a literary text, in order to write effective essays and term papers in Spanish. Revising and rewriting will be an integral part of the course. ', 4),
('ML3510', 9, 'Creative Writing', 'Taught in Spanish. This course will function as a broad-based introduction to various forms of writing, such as short fiction, autobiography and non-fiction narrative. Literary works will serve as models through analysis, application and imitation. Class work will consist of technique and style discussions, reading assignments and mostly collabora-tive writing exercises. Students will be introduced to the concept of a writing workshop, wherein they share pieces with peers in order to give and receive feedback.', 4),
('ML3600', 9, 'Introduction to the Study of Hispanic Literature', 'Taught in Spanish. A prerequisite for all upper-level literature and culture courses, this course introduces students to the study of literary genres (poetry, drama, the narrative and the essay). Students will also become familiarized with literary schools and aesthetic movements. Works of noted Hispanic authors (plays, short stories and poems) will be read and analyzed with regard to form and content.', 4),
('ML3650', 9, 'Cinema of Latin America and the Iberian Peninsula', ' Taught in English. This course will provide students with an introduction to Latin American and Spanish films of the 20th and 21st centuries. Topics pertinent to cinema such as Cinema Novo in Brazil, “La movida” in Spain, etc., will be explored. Films chosen will present social, political and cultural issues.  Films will be previewed in their native language with English subtitles.', 4),
('ML3750', 9, 'Afro Cuban Cultures', 'This course is an overview of the history and culture of Afro-Cuban traditions through guided readings, lectures at the University of Matanzas Camilo Cienfuegos, visits to national museums and other sites of interest in Cuba.  Students will be exposed to key masterpieces of Afro-Cuban artistic expressions in painting, music and other tra-ditions as they are found and expressed in two important cities: Matanzas and Havana. Offered in English with Spanish language instruction.  ', 4),
('ML3800', 9, 'Modern French Culture: France and Francophone World', 'Taught in English. This course will provide students with an introduction to French culture and civilization. We will analyze  the  pivotal  role  played  by  France  in  modern  European  history  and  culture  and  the  contributions  the  French and Francophone nations have made in such domains as architecture, fine arts, philosophy, literature and cinema. Starting from the French classical age, in the 17th century, and continuing through the Enlightenment, the age of revolutions, colonialism and post-colonialism, the course aims to give students an understanding of the aesthetic and intellectual currents that have shaped French thought and creative expressions. Readings will include letters, fiction and essays. Modules of discussion and research may include: the emergence of modern subjects; the culture of sensuality; feminism and gender definitions; stories of love and desire; the image of human experience in the French novel; immigration, racism and the multicultural society; the', 4),
('ML3880', 9, 'Masterpieces of Hispanic Literature', 'Selections  of  outstanding  literary  works  of  Spain  and  Latin  America  from  the  picaresque  novel  to  the  present.  Study includes major writers: Cervantes, Lorca, Unamuno, García Márquez, and others. Given in English. ', 4),
('ML4100', 9, 'The Spanish Golden Age', 'Taught in Spanish. A study of the literature of the Spanish Golden Age (ca. 1500-1660) which includes some of the major texts and best-known stories of world literature. Students will be guided through the reading and analysis of selections from Cervantes, Rojas, Tirso de Molina, Lope de Vega, Calderon, Gongora, etc. The works presented will provide a basis for the examination of the Baroque concepts of reality and illusion, dream and disenchant-ment.', 4),
('ML4325', 9, 'Contemporary Theatre of the Hispanic World', 'Taught in Spanish. Selected plays by a variety of Spanish-speaking dramatists will be read and examined critically and analytically. The plays will represent a broad range of styles and subject matter, and touch upon the philo-sophical, social and cultural issues that have preoccupied Spanish and Latin American playwrights in modern times. Works by Arrabal, Dragun, Garro, Triana, Paz, Fuentes and Vargas Llosa may be included as well as recent performance pieces by Latino playwrights. A focal point of the course will be the preparation of dramatic read-ings of selected scenes.', 4);
INSERT INTO `courses` (`course_id`, `dept_id`, `course_title`, `course_desc`, `credits`) VALUES
('ML4350', 9, 'Recurrent Themes in Latin American Painting and Literature', 'Taught in Spanish.  This course explores the importance of art and literature in the construction of national, cul-tural and social discourses in Latin America. Representations of Latin America by European engravers of the 16thand 17th centuries will be analyzed alongside excerpts from colonial literary texts concerned with explaining the newly “discovered” lands to their European sponsors. We will look at nationalistic discourses as presented by the Mexican Muralist movement and writings by Octavio Paz. We will also examine the Hispanic Caribbean painters’ and writers’ project to develop a new artistic vocabulary, and their (dis) illusions with their countries’ social and political conditions.', 4),
('ML4450', 9, 'Hispanic Women Writers', 'Taught in Spanish. A close reading and analysis of major works of fiction and poetry by Hispanic women. Students will be introduced to significant pre-20th century authors; however, the main focus of the course will be on con-temporary texts. Selected writers from different areas, such as Emilia Pardo Bazan, Maria Luisa Bombal, Julia de Burgos, Rosario Ferre, Elena Poniatowska, Gabriela Mistral, Isabel Allende, et al., will give students a sense of the diversity and range of Hispanic women’s writing. We will examine these writers’ response to “machismo” and the limited role of women in traditional societies. Questions concerning the feminine literary tradition, such as how the female experience is represented in texts written by women, and whether there is a specifically “female” writing, will also be discussed.', 4),
('ML4500', 9, 'Culture and Literature of Spain from the Middle Ages to the 18th Century', 'Taught in Spanish. A study of the culture and literature of Spain through representative works, beginning with the epic poem El Cid, Spain’s first recorded literary work, and continuing through the 18th century. Students will exam-ine the concepts of honor, religious duty, love, conquest, and the nation as represented in the Spanish tradition.', 4),
('ML4510', 9, 'Civilization and Culture of Spain', 'Taught in Spanish. This course will provide students with an introduction to the culture and civilization of Spain. After a brief overview of key events in Spanish history, emphasis will be placed more specifically on contemporary Spain. Analysis and discussion of literary works, films, music and art will help students understand and appreciate the role played by Spain in modern European history and her contributions in the arts as well as in popular culture. Themes for discussion and research may include: the image of human experience in the Spanish novel; pluralism, unity and the Spanish identity; post-modern cinema; the Civil War and the Franco era; Spain as Romantic myth and tourist heaven, etc. ', 4),
('ML4515', 9, 'Recent Narrative from Spain', 'Taught in Spanish. This course provides an analytical and historical approach to narratives written in Spain during the last two decades of the 20th century. Students will be introduced to various aesthetic styles (parodic, historical and urban novels and short stories, science fiction and detective novels) which flourished during this period. Special attention will be given to the sociological background and the so-called “post-modern condition” which made those narratives possible. Authors such as Eduardo Mendoza, José Angel Mañas, Javier Cercas, Belén Gopegui, Manuel Rivas, etc., will be read throughout the semester.', 4),
('ML4520', 9, 'Culture and Literature of the Spanish Caribbean', 'Taught in Spanish. A study of the major literary trends of this century in the Caribbean area (Dominican Republic, Puerto Rico, and Cuba) seen in a general Latin-American sociocultural and political perspective. Representative works by Henriquez Urena, Llorens Torres, Pales Matos, Guillen, del Cabral, Bosch, Marques, Carpentier, Laguerre, Cabrera Infante, Gonzalez, Cesaire, Mir, Burgos, Rodriguez-Julia, etc.', 4),
('ML4540', 9, 'Latin American Culture and Literature: From the European Conquest to Independence', 'Taught in Spanish. This course will examine the variety of genres produced in Latin America, from the earlier histori-cal writings (diarios, crónicas, relaciones, poemas épicos, etc.) through the European-inspired literatures of the Baroque, Neoclassic, and Romantic periods. The social and political ideas of the Enlightenment and subsequent “progressive” (liberal) ideologies, culminating in the Latin American Wars of Independence and the modern pro-cess of “nation building,” will be studied within a literary context. ', 4),
('ML4545', 9, 'Civilization and Culture of Latin America', 'Taught in Spanish. This course will serve as an introduction to various aspects of daily life and culture in Latin Ameri-can countries from early times to the present. We will explore the question of the Latin–American identity: What is Latin America and who are the Latin Americans?  We will consider some of the significant intellectual, artistic, historical, and sociopolitical movements that have shaped Latin America since the beginning of its history. Major periods to be examined will be the pre-Columbian civilization, the “Conquista” and the colonial empire, the in-dependence movements and the contemporary period. Students will become familiarized with major issues and institutions of Latin America as represented in contemporary Latin American essays, films, art, music, short stories, plays and novels.', 4),
('ML4630', 9, 'Latin American Literature', 'Taught in English. This course is a survey of Latin American literature since the conquest. The class will first read and discuss descriptions of the Americas as seen by the first European conquerors as well as pre-Colombian texts writ-ten by native Americans. We will then read representative works of various literary periods from baroque poems to “magical-realist” novels. We will analyze such themes as the collision of cultures, “civilization and barbarity”, the African influence on Latin American letters and the making of a Latin American identity.', 4),
('ML4645', 9, 'French Literature', 'Taught in English. This survey course is intended to serve as an introduction to French literature from the French classical age, in the 17th century, to the present time. Students will be guided through the reading and analysis of narrative fiction, plays and poems by major French writers so as to develop an understanding of the aesthetic and intellectual currents that have shaped French literature. Readings will be organized around thematic modules rather than in chronological order. Topics may include: representations of the self; stories of love and desire; the making of modernity; tradition and experimentation; social reflections; colonialism and post-colonialism, among others.', 4),
('ML4700', 9, 'Studies in Spanish Literature of the Nineteenth and Twentieth Centuries', 'Taught in Spanish. A study of the major literary trends prevailing in Spain from the beginning of the 19th century to late 20th century: Romanticism, Realism, Naturalism, the “Generation of ‘98”, the “Generation of ‘27”, the era known as “la postguerra” and postmodernism. Representative works of poetry and prose will serve as an illustration of the historical, social and artistic issues characteristic of each period. ', 4),
('ML4725', 9, 'The Novel and the City', 'Taught in Spanish. The course explores the basic connection between the modern period and the novel as a form, noting the parallel rise to prominence of the novel and the large urban centers. By the 19th century, the novel had become the most widely read form of literature, in Europe as well as in the Americas, and thus exercised consider-able power not only to express but also to shape urban readers’ understanding of themselves, their desires, and their relation to their social world. A selection of city-centered novels by Spanish and Latin American writers of the 19th and 20th centuries will help students understand how writers expand our awareness of urban sites and how they develop complex sets of themes and aesthetics concerns central to the urban experience. We will study crucial interpretive and narratological issues (character development, time and point of view) while also research-ing the development of public architecture and urban planning in the cities in question.', 4),
('ML4750', 9, 'Fiction into Film: the Spanish and Latin American Cinema', 'Taught in Spanish. A study of classic Spanish-speaking films from Latin America and Spain and their contribution to Hispanic culture. The class will view, discuss and analyze films in the context of socio-political events and aesthetic movements, and place each work in cultural perspective. Particular attention will be paid to the ways in which literary works are translated into cinematic form, and to contrasting narrative practices in the novel and in film.', 4),
('ML4800', 9, 'Modernism and Modernity: The Latin American Experience', 'Taught in Spanish. An historical and analytical approach to the Modernist and Avant-garde movements in Latin American letters. Students will be introduced to the various aesthetic styles which flourished from the late 19th to the middle of the 20th century. The course will examine major poetic trends, as well as representative prose fic-tion of the two periods (Modernismo and Vanguardismo), paying particular attention to symbolism, decadentism, impressionism, surrealism, cubism, etc.', 4),
('ML5400', 9, 'Contemporary Literary Theory and Its Applications', 'Taught in Spanish. Recent contributions by Jacques Derrida (deconstruction theory), Edward Said (on orientalism), Julia Kristeva and Hèléne Cixous (feminist theories) have questioned the authority of the author as well as the reader, and have brought into consideration other mechanisms that affect our critical evaluation of the world around us. This course attempts to establish principles for interpreting and evaluating literary texts, visual arts and films through readings of contemporary literary theory.', 4),
('ML5450', 9, 'Major Trends in Latin American Thought', 'Taught  in  Spanish.  The  course  examines  the  major  intellectual  and  artistic  trends  in  Latin  American  letters,  as  reflected in the works of representative writers:  Sarmiento, Bello, Martí, Rodó, Henriquez-Ureña, Mariategui, Zea, Paz, Vargas Llosa, among others. Readings of the historical, social and literary essay will constitute the primary focus of the course. Special attention will be given to regional and cultural differences. Topics such as race and ethnicity; national identity; the role of women in society, etc., will be closely examined. Offered eve', 4),
('ML5650', 9, 'Contemporary Latin American Narrative', 'Taught in Spanish. Introduction to narrative techniques and socio-political topics prevalent in the contemporary Spanish American narrative. Authors include Borges, Arguedas, Cortazar, Carpentier, Rulfo, Bombal, Garcia Mar-quez, Fuentes, Roa Bastos, Vargas Llosa, Poniatowska, Allende, etc.', 4),
('ML5900', 9, 'Senior Seminar', 'With the guidance and supervision of a faculty member, students must prepare a Senior Thesis. The thesis must focus on a specific area of Spanish language, Hispanic literature and culture involving detailed research.', 4),
('PE1401', 10, 'Introduction to Economics', 'A survey course that begins with a brief examination of the evolution of the modern market economy and of the major schools of economic thought. The course progresses to an explanation of fundamental economic principles and concepts and to the study of some contemporary economic problems in the U.S.', 4),
('PE1600', 10, 'People, Power, Politics', 'An introductory course that begins with an examination of the nature of power in different areas of human experi-ence, and then proceeds to look at power issues related to lawmaking, governmental institutions, and political participation both inside and outside of those institutions. The course is intended to illustrate the various sources of power that people possess to bring about political and social change. It draws on current events in order to better illustrate the topics discussed.', 4),
('PE2220', 10, 'Introduction to Urban Issues', 'An examination of various perspectives on urban areas and of important urban issues, including social problems of minority communities, housing and public services.', 4),
('PE2240', 10, 'Introduction to Latin American Studies', 'This course is an interdisciplinary introduction to Latin American history, social and economic development, and diverse  cultures.  Historical  documentaries,  readings,  and  dramatic  films  are  used  to  examine  the  legacies  of  colonialism, uneven development, reform and revolution, the social construction of race, and changing gender roles. ', 4),
('PE2300', 10, 'Introduction to Law', 'This course is intended to familiarize students with the basic substantive, procedural, and structural components of the legal system of the United States of America. This course provides an introduction to the common law and the essential characteristics of the United States legal system: basic constitutional structures and the judicial func-tion, the basics of legal methodology, the role of the legal profession in an adversary system and a survey of core legal principles in different areas of the law.', 4),
('PE2400', 10, 'Introduction to Politcal Economy', 'This course is an introduction to capitalism, as seen initially through the great works of political economy by Adam Smith, David Ricardo and Karl. It presents their writings in a theoretical and social context, as well as in relation to \r\n216modern economics. The curriculum then turns to the present and applies this foundation to an examination of economic crises, labor exploitation, the profit motive, and the role of the government under capitalism.', 4),
('PE2420', 10, 'Principles of Microeconomics', 'An introduction to neoclassical economic theory. Consumer and producer behaviors, price formation in the mar-ket and the role of the market in allocating resources and coordinating social production are among the topics covered.', 4),
('PE2430', 10, 'Principles of Macroeconomics', 'An introduction to conventional macroeconomic theory, including the determination of national income, govern-ment taxing and spending policy, money and banking, unemployment, and inflation.', 4),
('PE2650', 10, 'Introduction to U.S. Politics', 'This introduction to power and politics in the U.S. explores the Declaration of Independence and the Constitution; public opinion, interest groups, social movements, and voting; the institutions of Congress, the Presidency and the Supreme Court; and the making of current policies. Emphasis is placed on issues of power, democracy, and political and social change.', 4),
('PE3100', 10, 'International Relations', 'Introduces principles of state-to-state relations, basic modes of resolving international disputes and the evolution of international organizations. The course emphasizes how each individual is related to global politics and en-courages students to study and propose solutions to some of the most severe problems of human rights, national security and environmental survival.', 4),
('PE3155', 10, 'Model United Nations', 'The course prepares students for a Model United Nations conference where students perform the role of a diplomat from an assigned counry. Students acquire a working knowledge of the United Nations, a familiarity with current issues on the international agenda, an in -depth knowledge of an assigned country, an unparalleled experience in conducting primary research, and practice negotiation and public speeaking.', 4),
('PE3201', 10, 'Statistics', 'Surveys the basic topics of modern statistics, including descriptive statistics, probability theory, probability distribu-tions, hypothesis testing, simple regression.', 4),
('PE3240', 10, 'Inter-American Relations and Immigration', 'This course examines the political, economic, and social processes that shape foreign policies and international relations in the Western Hemisphere, and the consequences of those policies and relationships for the peoples of the hemisphere. The main themes include manifest destiny, imperialism, the Cold War, neoliberalism, and inter-American immigration.', 4),
('PE3400', 10, 'Global South', 'Analysis of the major political, economic and social problems of the Global South (i.e. nations of Africa, Asia, Latin America, and the Caribbean). The course traces broadly the history of colonialism and considers its impact on the post-colonial political economy of the Global South. Case studies may complement the general analysis.', 4),
('PE3410', 10, 'Contemporary U.S. Political Economy', 'This course is designed to familiarize the student with the workings of the economy within a class and institutional context.  Focuses  on  the  economic  history  of  the  United  States  from  the  perspective  of  competition  between  firms, management/worker relations and the involvement of the state in the economy.', 4),
('PE3425', 10, 'Economic Analysis-Micro', 'An in-depth study of price theory. Develops and redefines the neoclassical principles presented in PE2420.', 4),
('PE3435', 10, 'Economic Analysis-Macro', 'A detailed analysis of classical, Keynesian, monetarist, and rational expectation theories of income determination and growth.', 4),
('PE3440', 10, 'International Economics', 'The focus of this course is international trade theory and policy. It covers as well certain fundamental aspects of international monetary economics. The curriculum is designed to provide students with the basic skills required for an understanding and critical analysis of the principal global economic issues facing the United States and the world today. ', 4),
('PE3450', 10, 'Women from a Global Perspective', 'This course examines the various roles of women in the global economy, with particular emphasis on the interna-tional division of labor. It provides a class, ethnic and historical analysis of the study of women as part of economic and social change. Case studies of women in advanced capitalist and Third World nations show their increasing interactions.', 4),
('PE3610', 10, 'Conflict and Revolution in the 20th Century', 'Rapid changes in the global economy, the rise of 20th Century social movements as well as ethnic tensions have led to conflicts in various parts of the world. The different origins of the violence as well as the outcomes are the subject matter of this course. Case studies including the Middle East, Africa, Latin America and the Caribbean, China and the U.S. Civil Rights movements are used selectively to illustrate instances of rebellion.', 4),
('PE3690', 10, 'City & Suburbs: Political Action and Change', 'A survey of city and suburban organization practices. Examines the role of the community organization in fostering local autonomy and as an agency for social, political and economic change in our cities and suburbs.', 4),
('PE3720', 10, 'Long Island: Economy, Environment and Society', 'Most Americans now live in suburban areas like Long Island. Since the Second World War and the building of Levit-town, Long Island’s economy has been transformed from an agricultural area to a bedroom community. Its natural amenity allowed the creation of a number of parks known world over. Since the seventies, the area has witnessed a boom in commerce and lately, of office space. The course covers the past and recent changes in this region.', 4),
('PE3750', 10, 'Politics of Race and Class', 'This course explores the intersection of race and class in the U.S., inquires into the relationship between race and quality  of  life,  and  examines  limitations  on  the  representativeness  of  the  political  system  at  federal,  state,  and  local levels of government. Central to the course is the question of government responsiveness on issues of race and class. Particular attention is paid to the operation of U.S. political parties, to elections and voting, to legislative process and executive leadership, and to media performance in public debate.', 4),
('PE3850', 10, 'State and Local Politics', 'The course examines government and politics at the state and local level, with particular emphasis on New York State. It discusses issues in state and local government and the impact of the competing interests of the people of New York on public policy. It also explores the historical context and contemporary state of policy initiatives on issues such as  criminal justice, welfare, health care, education, immigration, the environment and taxation. ', 4),
('PE4100', 10, 'International Organizations in the Global Economy', 'This course explores various approaches to international organizations and the contribution these organizations make to the creation, maintenance, and change of  world order. Current issues facing the United Nations and its specialized agencies, the Bretton Woods financial institutions, and regional organizations will be examined. While much attention is given in this course to the role of permanent, intergovernmental organizations, the course also examines the role of nongovernmental organizations, international law, treaties, and norms in international relations.', 4),
('PE4150', 10, 'Terrorism and Politics', 'The class seeks to understand what terrorism is (and is not), and how new networks of political and religious ac-tivists differ strategically from those who used older forms of violence. Building on concepts of international law and organizations, we study both military and non-military approaches to ending terrorism. Students learn about relations between political power and how the suppression of democratic critique is related to terrorist violence. We ask: Does the curtailing of our freedom of expression, assembly and association, writ of habeas corpus and denial of legal representation help or hinder our efforts to end terrorist actions?  ', 4),
('PE4200', 10, 'Middle Eastern Politics', 'Recent events like the terrorist attacks of September the 11th, the Persian Gulf Wars, the U.S. occupation of Iraq, the Arab-Israeli conflict, the rise of political Islam have highlighted awareness of the significance of the Middle East in world politics as well as the lack of understanding about the region in the West. This course explores the geographic, historical, political, economic, and cultural aspects of the Middle East, covering such topics as the making of the modern Middle East, Arab nationalism, the U.S. occupation of Iraq, the Palestinian-Israeli conflict, Islam and human/women’s rights, and Iran and the bomb.', 4),
('PE4275', 10, 'Applied Econometrics', 'Builds on the knowledge and skills in statistics by the study of simple and multiple regression analysis to test empiri-cal propositions in economics and to forecast economic time series. Students are also required to become fluent \r\n218in the use of a statistics computer program.', 4),
('PE4280', 10, 'Environment Politics', 'The course will begin by examining the crucial biophysical, economic, and social issues facing local communities and political leaders today. In the second part of the course students are brought through the history, organizations, interests groups, and processes that shape U.S. and international environmental policy. The latter will conclude with the current debates that inform policies and negotiations within such institutions as the WTO, United Nations and agreements such as NAFTA. Students will be assigned examples of communities that have confronted envi-ronmental problems and they will research the processes by which those communities addressed them.', 4),
('PE4290', 10, 'Environmental Economics', 'This course examines issues involved in sustainable development and is designed as a broad survey covering the most critical topics in environmental economics. The significant contribution that economic analysis can make in understanding the nature of problems in sustainable development and in providing possible solutions is the central focus of the course. Market failures are the cause of many of our most serious environmental problems but can be remedied with economic tools. The role that economic and political institutions play in allocating natural resources is examined. Students are exposed to a number of emerging sustainability issues including global warming and given ample opportunities to develop their own perspective. ', 4),
('PE4325', 10, 'Jurisprudence: Legal Thought', 'This course is a survey of major theoretical approaches to the nature, purposes, interpretation, and practice of law. Through primary classical and contemporary documents, we will explore “classical” legal philosophies such as natural law and legal positivism, as well as the more “modern” theories of American legal thought: legal real-ism, law and society, feminist legal theory, critical race theory, and queer legal theory.', 4),
('PE4409', 10, 'Urban Economics', 'This course examines the evolution of cities and metropolitan areas as centers of production and the relationship of urban economics to regional, national, and international economics. Attention is paid to the failure to meet the needs of significant numbers of people in urban areas.', 4),
('PE4430', 10, 'Health Economics', 'Health Economics provides a broad overview of healthcare delivery and finance systems, both in the U.S. and abroad, and explores the role that economic theory plays in the national healthcare reform debate. The student will be introduced to a number of basic theoretical tools used in economics to explain the allocation of scarce resources in healthcare markets. The course will also explore a number of controversial questions involving the rationing of care, “market failures” in the current healthcare system, disparities in access to care, and the extent to which recent healthcare reform legislation addresses these issues.', 4),
('PE4440', 10, 'Food and Wine Economics', 'The purpose of this course is to provide students with a systematic introduction to basic economic concepts and issues as they related to food and wine industry. The process requires an understanding of the microeconomic and macroeconomic forces influencing the decisions of producers and consumers. The course builds from micro-economic to macroeconomics to international economics. In the first part, we will go over basic economic and marketing theories that can be applied to study the issues in agricultural economics. Topics include supply and demand of food and wine, food and wine production function, both under perfect and imperfect competition as well as an introduction to behavioral economics. This section is designed to introduce the analytic tools com-monly employed in the study of the economics of food and agriculture. Microeconomic coverage will also address the concepts in natural resources such as the tragedy of the commons and externalities, as well as government programs. I', 4),
('PE4450', 10, 'The Politics of Gender and Sexuality', 'This course examines constructions of gender and sexuality as well as gender and sexual hierarchies in the United States.  It  analyzes  the  development  and  implementation  of  public  policies  in  such  areas  as  childbearing  and  abortion, sodomy, statutory rape, sexual harassment, forcible rape and domestic violence, affirmative action, marriage,  HIV-status,  welfare  reform,  and  political  participation  and  representation.  Students  will  investigate  questions such as what role can, does, and should the state play in regulating gender and sexuality—what is the dividing  line  between  protecting  versus  policing  gender  expression  and  sexual  expression?  How  have  certain  constructions of gender and sexuality been used to wield power against people of color, people in poverty, and people who are unmarried? How has such oppression been resisted and what have been the effects of such resistance? ', 4),
('PE4455', 10, 'Economic Development', 'A comparative study of economic development strategies and problems of Third World countries. The course will locate the application of development strategies in different institutional and political settings. The implication of debt repayment on economic development will also be examined.', 4),
('PE4460', 10, 'International Finance', 'Surveys three areas: international financial markets; open-economy macroeconomics; and international monetary systems and policy. Specific topics include position taking, arbitrage, parity conditions, international banking, monetary and fiscal policy, capital mobility, fixed and flexible exchange rates, the gold standard, Bretton Woods, and the current “free market” international monetary order.', 4),
('PE4470', 10, 'History of Economic Thought', 'Surveys both the central tenets and the divergences among various schools of economic thought, e.g., classical, American institutionalism, Keynesianism, etc. The relationship between economic ideas and their social contexts is emphasized. ', 4),
('PE4580', 10, 'Origins of the Capitalist Economy', 'Studies the economic and social origins of the modern world, from different intellectual perspectives. Topics include antiquity, feudalism, the emergence of capitalism, the Industrial Revolution, the French Revolution, the spread of capitalism, the development of underdevelopment in the Third World, monopoly capitalism and imperialism, the Great Depression.', 4),
('PE4590', 10, 'Global Economy in the 20th Century', 'This course analyzes political and economic change in selected countries of the region from the mid-twentieth century to the present. It examines the impact of foreign control over local resources, uneven capitalist develop-ment, class conflict, and the contemporary “pink tide” of new governments on poverty, inequality, and social progress.', 4),
('PE4600', 10, 'Depression Economics: Lessons from the Great Depression and the Great Recession', 'This course studies depression economics—a recently revived branch of macroeconomics that seeks to under-stand the causes and policy remedies for large, contagious, global collapses in output and employment. We will analyze the causes and policy remedies for depressions by comparing and contrasting the Great Depression of the 1930s with the Great Recession of 2008. The advantage of the comparative approach is that it will enable us to isolate important common characteristics of these two depressions; the circumstances that made each of these crises unique; and it can provide important lessons for thinking about how to prevent future depressions.', 4),
('PE4609', 10, 'Public Administration', 'Examines organizational theories and their application in public policy. Focuses on how decisions made at various levels of government are implemented in local urban and non-urban areas. The course involves field work, visit-ing public offices and contacting interviews of role players in public administration case study projects.', 4),
('PE4610', 10, 'Political Power and Social Class', 'This  course  analyzes  the  interaction  of  political  power  and  social  class  from  two  vantage  points--power  from  above and power from below. The first part of the course considers pluralist and conflict theories of the relationship \r\n220between the state and society. The second part focuses on social movement theories, using cases from various parts of the world to illustrate effective challenges to entrenched political power as well as obstacles faced by people who feel excluded from institutions and structures of power.', 4),
('PE4620', 10, 'Political & Social Thought', 'Examines significant contributions to the development of western political thought from the Greeks to the 19th century. Explores in depth works by Plato, Machiavelli, Hobbes, Locke, Rousseau, Burke and John Stuart Mill.', 4),
('PE4650', 10, 'Topics in U.S. Politics', 'This course examines current debates and divergent views on a wide range of economic, political, and social issues. ', 4),
('PE4655', 10, 'Constitutional Law and Politics', 'This course examines the role of the Supreme Court in battles over representative government and struggles for power between political institutions. Emphasis is placed on cases dealing with separation of powers, federalism, economic regulation and property rights, elections and voting rights. Attention is given to the historical context of cases, the internal politics of the court and the political implications of court decisions.', 4),
('PE4658', 10, 'Law and Civil Liberties', 'Examines the historical development and philosophical and political underpinnings of constitutional civil liberties. Analyzes Supreme Court cases and other writings on such topics as freedoms of speech, press, religion, assembly, petition, and association; the right to privacy; police searches and seizures; self-incrimination; the rights to counsel and to fair trials; and cruel and unusual punishment and the death penalty.', 4),
('PE4659', 10, 'Law and Civil Rights', 'Examines the historical development and philosophical and political underpinnings of constitutional civil rights. Analyzes Supreme Court cases and other writings on discrimination based on race, ethnicity, gender, sexuality, and class, and discusses such topics as desegregation, affirmative action, voting and political representation, privacy, sexual harassment, Native American treaties, and welfare benefits.', 4),
('PE4660', 10, 'Politics of India and the Region', 'Introduction to the politics of selected countries in the Indian subcontinent. The course will examine the origins of the independence movements. Major emphasis will be placed on post-independence politics, social and eco-nomic change.', 4),
('PE4665', 10, 'Human Rights', 'This  course  aims  to  provide  students  with  a  broad  working  knowledge  of  human  rights  as  both  an  intellectual  discourse and a realm of political action. The course examines: the emergence and institutionalization of human rights in the 20th century, human rights as a form of international politics, the difficulties in enforcing international standards as well as a specific analysis of a number of human rights issues.', 4),
('PE4690', 10, 'Politics of Latin America and the Caribbean', 'This course analyzes political and economic change in selected countries of the region from the mid-twentieth century to the present. It examines the impact of foreign control over local resources, uneven capitalist develop-ment, class conflict, and the contemporary “pink tide” of new governments on poverty, inequality, and social progress. ', 4),
('PE5990', 10, 'Internship', 'This internship will give students practical experience in the fields of public policy, legal affairs, economics as well as state and local governments. Students will be working in various public nonprofit advocacy agencies. The working hours and duration of the internship will be determined by the instructor and the agency. Students will be required to submit a journal and a portfolio of work at the end of the semester. This is an excellent opportunity for students to acquire training in their chosen area of specialization.', 4),
('PE9970', 10, 'New York State Assembly Session Internship', 'This is a fifteen-credit course that takes place in Albany every spring semester. It begins the first week of January and runs through the middle of May. Students work approximately 30 hours per week in the office of a member of the New York State Assembly and take one seminar course focusing on government and politics in New York State.', 4);

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
  `max_credits` int(2) NOT NULL DEFAULT 20,
  `min_credits` int(2) NOT NULL DEFAULT 12
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grad_full`
--

INSERT INTO `grad_full` (`student_id`, `max_credits`, `min_credits`) VALUES
(113, 20, 12),
(114, 20, 12),
(115, 20, 12);

-- --------------------------------------------------------

--
-- Table structure for table `grad_part`
--

CREATE TABLE `grad_part` (
  `student_id` int(10) NOT NULL,
  `max_credits` int(2) NOT NULL DEFAULT 11
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grad_part`
--

INSERT INTO `grad_part` (`student_id`, `max_credits`) VALUES
(111, 11),
(112, 11);

-- --------------------------------------------------------

--
-- Table structure for table `grad_program`
--

CREATE TABLE `grad_program` (
  `grad_program_id` int(10) NOT NULL,
  `dept_id` int(3) NOT NULL,
  `grad_program_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grad_program`
--

INSERT INTO `grad_program` (`grad_program_id`, `dept_id`, `grad_program_title`) VALUES
(1, 16, 'Accounting'),
(2, 18, 'Adolescence Education: Social Studies (7-12)'),
(3, 18, 'Adolescence Education: Spanish (7-12)'),
(4, 18, 'Childhood Special Education'),
(5, 7, 'Data Analytics'),
(6, 16, 'Forensic Accounting'),
(7, 18, 'Literacy Education'),
(8, 11, 'Mental Health Counseling'),
(9, 16, 'Taxation'),
(10, 18, 'Adolescence Education: Biology (7-12)'),
(11, 18, 'Adolescence Education: English Language Arts (7-12)'),
(12, 18, 'Adolescence Education: Mathematics (7-12)'),
(13, 18, 'Adolescence Education: Social Studies (7-12)'),
(14, 18, 'Adolescence Education: Spanish (7-12)');

-- --------------------------------------------------------

--
-- Table structure for table `grad_program_requirements`
--

CREATE TABLE `grad_program_requirements` (
  `grad_program_id` int(10) NOT NULL,
  `course_id` varchar(6) NOT NULL
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

--
-- Dumping data for table `grad_student`
--

INSERT INTO `grad_student` (`student_id`, `time_type`) VALUES
(111, 'part'),
(112, 'part'),
(113, 'full'),
(114, 'full'),
(115, 'full');

-- --------------------------------------------------------

--
-- Table structure for table `holds`
--

CREATE TABLE `holds` (
  `hold_type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `holds`
--

INSERT INTO `holds` (`hold_type`) VALUES
('Academic'),
('Disciplinary'),
('Financial'),
('Health');

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
(16, 14, 'Visual Arts'),
(17, 16, 'Accounting'),
(18, 18, 'Adolescence Eduction: Biology (7-12)'),
(19, 18, 'Adolescence Education: Mathematics (7-12)'),
(20, 2, 'Biochemistry'),
(21, 16, 'Business Administration'),
(22, 18, 'Childhood Education (1-6)'),
(23, 18, 'Childhood Education with Bilingual Extension (1-6)'),
(24, 7, 'Computer & Information Science'),
(25, 13, 'Criminology'),
(26, 17, 'Finance'),
(27, 12, 'Health and Society'),
(28, 7, 'Management Information Systems'),
(29, 17, 'Marketing'),
(30, 7, 'Mathematics'),
(31, 18, 'Middle Childhood Education: Biology (5-9)'),
(32, 18, 'Middle Childhood Education: Chemistry (5-9)'),
(33, 18, 'Middle Childhood Education: Mathematics (5-9)'),
(34, 18, 'Middle Childhood Education: Spanish (5-9)'),
(35, 14, 'Visual Arts: Electronic Media');

-- --------------------------------------------------------

--
-- Table structure for table `major_requirements`
--

CREATE TABLE `major_requirements` (
  `major_id` int(11) NOT NULL,
  `req_course_id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `major_requirements`
--

INSERT INTO `major_requirements` (`major_id`, `req_course_id`) VALUES
(24, 'CS2510'),
(24, 'CS2511'),
(24, 'CS3620'),
(24, 'CS3810'),
(24, 'CS3911'),
(24, 'CS4100'),
(24, 'CS4400'),
(24, 'CS4501'),
(24, 'CS4550'),
(24, 'CS4720'),
(24, 'CS5610'),
(24, 'CS5710'),
(24, 'CS5910'),
(24, 'MA2310'),
(24, 'MA3030'),
(24, 'MA3160'),
(24, 'MA3210');

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
  `req_course_id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prereq`
--

CREATE TABLE `prereq` (
  `course_id` varchar(6) NOT NULL,
  `prereq_course_id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prereq`
--

INSERT INTO `prereq` (`course_id`, `prereq_course_id`) VALUES
('AS4212', 'AS2112'),
('AS4215', 'AS2112'),
('AS4218', 'AS2112'),
('AS4222', 'AS2122'),
('AS4250', 'AS2122'),
('AS4252', 'AS2122'),
('AS4253', 'AS2122'),
('AS4260', 'AS2802'),
('AS4282', 'AS2122'),
('AS4283', 'AS2122'),
('AS4285', 'AS2122'),
('AS4290', 'AS2122'),
('AS4292', 'AS2122'),
('AS4402', 'AS2122'),
('AS4420', 'AS2122'),
('AS4432', 'AS2122'),
('AS4435', 'AS1512'),
('AS4442', 'AS2802'),
('AS4715', 'AS2122'),
('AS4732', 'AS2122'),
('AS4812', 'AS2802'),
('AS4812', 'AS3800'),
('AS4825', 'AS2802'),
('AS4825', 'AS3800'),
('AS4832', 'AS4802'),
('AS4852', 'AS2802'),
('AS4852', 'AS3247'),
('AS4870', 'AS2802'),
('AS4882', 'AS2802'),
('AS4940', 'AS3800'),
('AS4940', 'AS4442'),
('AS4945', 'AS3820'),
('AS4955', 'AS2020'),
('AS4965', 'AS3247'),
('AS5000', 'AS2112'),
('AS5000', 'AS2122'),
('AS5112', 'AS2112'),
('AS5112', 'AS2122'),
('AS5200', 'AS2112'),
('AS5200', 'AS2122'),
('AS5212', 'AS2112'),
('AS5212', 'AS2122'),
('AS5312', 'AS2112'),
('AS5312', 'AS2122'),
('AS5350', 'AS2112'),
('AS5350', 'AS2122'),
('AS5412', 'AS2112'),
('AS5412', 'AS2122'),
('AS5420', 'AS2112'),
('AS5420', 'AS2122'),
('AS4212', 'AS2112'),
('AS4215', 'AS2112'),
('AS4218', 'AS2112'),
('AS4222', 'AS2122'),
('AS4250', 'AS2122'),
('AS4252', 'AS2122'),
('AS4253', 'AS2122'),
('AS4260', 'AS2802'),
('AS4282', 'AS2122'),
('AS4283', 'AS2122'),
('AS4285', 'AS2122'),
('AS4290', 'AS2122'),
('AS4292', 'AS2122'),
('AS4402', 'AS2122'),
('AS4420', 'AS2122'),
('AS4432', 'AS2122'),
('AS4435', 'AS1512'),
('AS4442', 'AS2802'),
('AS4715', 'AS2122'),
('AS4732', 'AS2122'),
('AS4812', 'AS2802'),
('AS4812', 'AS3800'),
('AS4825', 'AS2802'),
('AS4825', 'AS3800'),
('AS4832', 'AS4802'),
('AS4852', 'AS2802'),
('AS4852', 'AS3247'),
('AS4870', 'AS2802'),
('AS4882', 'AS2802'),
('AS4935', 'AS4870'),
('AS4940', 'AS3800'),
('AS4940', 'AS4442'),
('AS4945', 'AS3820'),
('AS4955', 'AS2020'),
('AS4965', 'AS3247'),
('AS5000', 'AS2112'),
('AS5000', 'AS2122'),
('AS5112', 'AS2112'),
('AS5112', 'AS2122'),
('AS5200', 'AS2112'),
('AS5200', 'AS2122'),
('AS5212', 'AS2112'),
('AS5212', 'AS2122'),
('AS5312', 'AS2112'),
('AS5312', 'AS2122'),
('AS5350', 'AS2112'),
('AS5350', 'AS2122'),
('AS5412', 'AS2112'),
('AS5412', 'AS2122'),
('AS5420', 'AS2112'),
('AS5420', 'AS2122'),
('AS5712', 'AS2112'),
('AS5712', 'AS2122'),
('AS5725', 'AS2112'),
('AS5725', 'AS2122'),
('AS5800', 'AS2112'),
('AS5800', 'AS2122'),
('AS5862', 'AS2112'),
('AS5862', 'AS2122'),
('AS4212', 'AS2112'),
('AS4215', 'AS2112'),
('AS4218', 'AS2112'),
('AS4222', 'AS2122'),
('AS4250', 'AS2122'),
('AS4252', 'AS2122'),
('AS4253', 'AS2122'),
('AS4260', 'AS2802'),
('AS4282', 'AS2122'),
('AS4283', 'AS2122'),
('AS4285', 'AS2122'),
('AS4290', 'AS2122'),
('AS4292', 'AS2122'),
('AS4402', 'AS2122'),
('AS4420', 'AS2122'),
('AS4432', 'AS2122'),
('AS4435', 'AS1512'),
('AS4442', 'AS2802'),
('AS4715', 'AS2122'),
('AS4732', 'AS2122'),
('AS4812', 'AS2802'),
('AS4812', 'AS3800'),
('AS4825', 'AS2802'),
('AS4825', 'AS3800'),
('AS4832', 'AS4802'),
('AS4852', 'AS2802'),
('AS4852', 'AS3247'),
('AS4870', 'AS2802'),
('AS4882', 'AS2802'),
('AS4935', 'AS4870'),
('AS4940', 'AS3800'),
('AS4940', 'AS4442'),
('AS4945', 'AS3820'),
('AS4955', 'AS2020'),
('AS4965', 'AS3247'),
('AS5000', 'AS2112'),
('AS5000', 'AS2122'),
('AS5112', 'AS2112'),
('AS5112', 'AS2122'),
('AS5200', 'AS2112'),
('AS5200', 'AS2122'),
('AS5212', 'AS2112'),
('AS5212', 'AS2122'),
('AS5312', 'AS2112'),
('AS5312', 'AS2122'),
('AS5350', 'AS2112'),
('AS5350', 'AS2122'),
('AS5412', 'AS2112'),
('AS5412', 'AS2122'),
('AS5420', 'AS2112'),
('AS5420', 'AS2122'),
('AS5712', 'AS2112'),
('AS5712', 'AS2122'),
('AS5725', 'AS2112'),
('AS5725', 'AS2122'),
('AS5800', 'AS2112'),
('AS5800', 'AS2122'),
('AS5862', 'AS2112'),
('AS5862', 'AS2122'),
('AS9990', 'AS2112'),
('AS9990', 'AS2122'),
('BS2300', 'MA1020'),
('BS2310', 'BS2300'),
('BS2400', 'MA1020'),
('BS2410', 'BS2400'),
('BS3400', 'BS2400'),
('BS3400', 'BS2410'),
('BS3450', 'BS2400'),
('BS3450', 'BS2410'),
('BS3500', 'BS2400'),
('BS3500', 'BS2410'),
('BS3520', 'BS2400'),
('BS3520', 'BS2410'),
('BS3530', 'BS2400'),
('BS3530', 'BS2410'),
('BS3710', 'BS2400'),
('BS3710', 'BS2410'),
('BS3810', 'BS2400'),
('BS3810', 'BS2410'),
('BS3910', 'BS2400'),
('BS3910', 'BS2410'),
('BS4400', 'BS2400'),
('BS4400', 'BS2410'),
('BS4410', 'BS2400'),
('BS4410', 'BS2410'),
('BS4420', 'BS4400'),
('BS4430', 'BS2400'),
('BS4430', 'BS2410'),
('BS4440', 'BS2400'),
('BS4440', 'BS2410'),
('BS4460', 'BS2400'),
('BS4460', 'BS2410'),
('BS4461', 'BS4400'),
('BS4461', 'CP2120'),
('BS4461', 'CP2130'),
('BS4470', 'BS2400'),
('BS4470', 'BS2410'),
('BS4471', 'BS2400'),
('BS4471', 'BS2410'),
('BS4474', 'BS2400'),
('BS4474', 'CP2130'),
('BS4474', 'CP2120'),
('BS4480', 'BS2400'),
('BS4480', 'BS2410'),
('BS4491', 'BS2400'),
('BS4491', 'BS2410'),
('BS4500', 'BS2400'),
('BS4500', 'BS2410'),
('BS4550', 'BS2400'),
('BS4550', 'BS2410'),
('BS4560', 'BS4400'),
('BS4651', 'BS2400'),
('BS4651', 'BS2410'),
('BS5590', 'BS2400'),
('BS5590', 'BS2410'),
('BS5591', 'BS2400'),
('BS5591', 'BS2410'),
('BS9990', 'BS2400'),
('BS9990', 'BS2410'),
('BU3071', 'MA2000'),
('BU3502', 'MA1020'),
('BU3511', 'BU3502'),
('BU3605', 'BU3600'),
('BU3610', 'BU3605'),
('BU3071', 'MA2000'),
('BU3502', 'MA1020'),
('BU3511', 'BU3502'),
('BU3605', 'BU3600'),
('BU3610', 'BU3605'),
('BU3071', 'MA2000'),
('BU3502', 'MA1020'),
('BU3511', 'BU3502'),
('BU3605', 'BU3600'),
('BU3610', 'BU3605'),
('BU4500', 'BU3511'),
('BU3071', 'MA2000'),
('BU3502', 'MA1020'),
('BU3511', 'BU3502'),
('BU3605', 'BU3600'),
('BU3610', 'BU3605'),
('BU4500', 'BU3511'),
('BU4510', 'BU4500'),
('BU4570', 'BU3511'),
('BU4590', 'BU3511'),
('BU4720', 'BU4762'),
('BU3071', 'MA2000'),
('BU3502', 'MA1020'),
('BU3511', 'BU3502'),
('BU3605', 'BU3600'),
('BU3610', 'BU3605'),
('BU4500', 'BU3511'),
('BU4510', 'BU4500'),
('BU4570', 'BU3511'),
('BU4590', 'BU3511'),
('BU4720', 'BU4762'),
('BU4762', 'BU3502'),
('BU4762', 'MA2000'),
('BU4130', 'BU4110'),
('BU4125', 'PE2420'),
('BU4125', 'PE2430'),
('BU4774', 'PE2430'),
('BU4774', 'BU4762'),
('BU4860', 'BU3800'),
('BU5115', 'BU3010'),
('BU5115', 'MA2000'),
('BU5125', 'BU4110'),
('BU5171', 'MA2000'),
('BU5171', 'BU4110'),
('BU5190', 'BU4110'),
('BU5190', 'BU3800'),
('BU5190', 'BU4762'),
('BU5195', 'BU4110'),
('BU5195', 'MA2000'),
('BU5505', 'BU4500'),
('BU5520', 'BU4510'),
('BU5525', 'BU4510'),
('BU5540', 'BU4510'),
('BU5550', 'BU4510'),
('BU5555', 'BU4500'),
('BU5555', 'BU3010'),
('BU5560', 'BU4510'),
('BU5571', 'BU4570'),
('BU4774', 'PE2430'),
('BU4774', 'BU4762'),
('BU4860', 'BU3800'),
('BU5115', 'BU3010'),
('BU5115', 'MA2000'),
('BU5125', 'BU4110'),
('BU5171', 'MA2000'),
('BU5171', 'BU4110'),
('BU5190', 'BU4110'),
('BU5190', 'BU3800'),
('BU5190', 'BU4762'),
('BU5195', 'BU4110'),
('BU5195', 'MA2000'),
('BU5505', 'BU4500'),
('BU5520', 'BU4510'),
('BU5525', 'BU4510'),
('BU5540', 'BU4510'),
('BU5550', 'BU4510'),
('BU5555', 'BU4500'),
('BU5555', 'BU3010'),
('BU5560', 'BU4510'),
('BU5571', 'BU4570'),
('BU5710', 'MA2000'),
('BU5710', 'PE2420'),
('BU5710', 'PE2430'),
('BU5740', 'BU4762'),
('BU5760', 'BU4762'),
('BU4774', 'PE2430'),
('BU4774', 'BU4762'),
('BU4860', 'BU3800'),
('BU5115', 'BU3010'),
('BU5115', 'MA2000'),
('BU5125', 'BU4110'),
('BU5171', 'MA2000'),
('BU5171', 'BU4110'),
('BU5190', 'BU4110'),
('BU5190', 'BU3800'),
('BU5190', 'BU4762'),
('BU5195', 'BU4110'),
('BU5195', 'MA2000'),
('BU5505', 'BU4500'),
('BU5520', 'BU4510'),
('BU5525', 'BU4510'),
('BU5540', 'BU4510'),
('BU5550', 'BU4510'),
('BU5555', 'BU4500'),
('BU5555', 'BU3010'),
('BU5560', 'BU4510'),
('BU5571', 'BU4570'),
('BU5710', 'MA2000'),
('BU5710', 'PE2420'),
('BU5710', 'PE2430'),
('BU5740', 'BU4762'),
('BU5760', 'BU4762'),
('BU5790', 'BU4762'),
('BU5790', 'BU5760'),
('BU4774', 'PE2430'),
('BU4774', 'BU4762'),
('BU4860', 'BU3800'),
('BU5115', 'BU3010'),
('BU5115', 'MA2000'),
('BU5125', 'BU4110'),
('BU5171', 'MA2000'),
('BU5171', 'BU4110'),
('BU5190', 'BU4110'),
('BU5190', 'BU3800'),
('BU5190', 'BU4762'),
('BU5195', 'BU4110'),
('BU5195', 'MA2000'),
('BU5505', 'BU4500'),
('BU5520', 'BU4510'),
('BU5525', 'BU4510'),
('BU5540', 'BU4510'),
('BU5550', 'BU4510'),
('BU5555', 'BU4500'),
('BU5555', 'BU3010'),
('BU5560', 'BU4510'),
('BU5571', 'BU4570'),
('BU5710', 'MA2000'),
('BU5710', 'PE2420'),
('BU5710', 'PE2430'),
('BU5740', 'BU4762'),
('BU5760', 'BU4762'),
('BU5790', 'BU5760'),
('BU4774', 'PE2430'),
('BU4774', 'BU4762'),
('BU4860', 'BU3800'),
('BU5115', 'BU3010'),
('BU5115', 'MA2000'),
('BU5125', 'BU4110'),
('BU5171', 'MA2000'),
('BU5171', 'BU4110'),
('BU5190', 'BU4110'),
('BU5190', 'BU3800'),
('BU5190', 'BU4762'),
('BU5195', 'BU4110'),
('BU5195', 'MA2000'),
('BU5505', 'BU4500'),
('BU5520', 'BU4510'),
('BU5525', 'BU4510'),
('BU5540', 'BU4510'),
('BU5550', 'BU4510'),
('BU5555', 'BU4500'),
('BU5555', 'BU3010'),
('BU5560', 'BU4510'),
('BU5571', 'BU4570'),
('BU5710', 'MA2000'),
('BU5710', 'PE2420'),
('BU5710', 'PE2430'),
('BU5740', 'BU4762'),
('BU5760', 'BU4762'),
('BU4774', 'PE2430'),
('BU4774', 'BU4762'),
('BU4860', 'BU3800'),
('BU5115', 'BU3010'),
('BU5115', 'MA2000'),
('BU5125', 'BU4110'),
('BU5171', 'MA2000'),
('BU5171', 'BU4110'),
('BU5190', 'BU4110'),
('BU5190', 'BU3800'),
('BU5190', 'BU4762'),
('BU5195', 'BU4110'),
('BU5195', 'MA2000'),
('BU5505', 'BU4500'),
('BU5520', 'BU4510'),
('BU5525', 'BU4510'),
('BU5540', 'BU4510'),
('BU5550', 'BU4510'),
('BU5555', 'BU4500'),
('BU5555', 'BU3010'),
('BU5560', 'BU4510'),
('BU5571', 'BU4570'),
('BU5710', 'MA2000'),
('BU5710', 'PE2420'),
('BU5710', 'PE2430'),
('BU5740', 'BU4762'),
('BU5760', 'BU4762'),
('BU5800', 'BU3800'),
('BU5800', 'MA2000'),
('BU5820', 'PE2420'),
('BU5820', 'PE2430'),
('BU5820', 'BU3800'),
('BU5841', 'BU3800'),
('BU5851', 'BU3800'),
('BU5880', 'BU3800'),
('BU5891', 'BU3800'),
('CP2000', 'MA1010'),
('CP2210', 'MA1020'),
('CP2300', 'CP2210'),
('CP2120', 'MA1020'),
('CP2130', 'CP2120'),
('CP2220', 'MA2090'),
('CP2230', 'CP2220'),
('CP2240', 'MA2310'),
('CP2250', 'CP2240'),
('CP2700', 'MA1020'),
('CP3230', 'MA2320'),
('CP3300', 'CP2130'),
('CP3310', 'CP3300'),
('CP3400', 'CP2130'),
('CP3450', 'CP2130'),
('CP4320', 'CP3310'),
('CP4490', 'CP3310'),
('CP4510', 'CP3310'),
('CP4515', 'CP4510'),
('CP4700', 'CP2130'),
('CP4700', 'MA2320'),
('CP4700', 'CP2230'),
('CP4710', 'CP2130'),
('CP4710', 'MA2320'),
('CP4710', 'CP2230'),
('CP4800', 'CP3310'),
('CP2000', 'MA1010'),
('CP2210', 'MA1020'),
('CP2300', 'CP2210'),
('CP2120', 'MA1020'),
('CP2130', 'CP2120'),
('CP2220', 'MA2090'),
('CP2230', 'CP2220'),
('CP2240', 'MA2310'),
('CP2250', 'CP2240'),
('CP2700', 'MA1020'),
('CP3230', 'MA2320'),
('CP3300', 'CP2130'),
('CP3310', 'CP3300'),
('CP3400', 'CP2130'),
('CP3450', 'CP2130'),
('CP4320', 'CP3310'),
('CP4490', 'CP3310'),
('CP4510', 'CP3310'),
('CP4515', 'CP4510'),
('CP4700', 'CP2130'),
('CP4700', 'MA2320'),
('CP4700', 'CP2230'),
('CP4710', 'CP2130'),
('CP4710', 'MA2320'),
('CP4710', 'CP2230'),
('CP4800', 'CP3310'),
('CP4800', 'CP3400'),
('CP4800', 'CP4700'),
('CS2510', 'MA1020'),
('CS2511', 'CS2510'),
('CS2521', 'MA2310'),
('CS3611', 'CS2510'),
('CS3620', 'CS2511'),
('CS3620', 'MA3030'),
('CS3630', 'CS3620'),
('CS3810', 'CS2511'),
('CS3620', 'MA3030'),
('CS3910', 'CS3810'),
('CS3911', 'CS2511'),
('CS3911', 'MA3030'),
('CS3620', 'CS2511'),
('CS4200', 'CS3810'),
('CS4400', 'CS3810'),
('CS4400', 'MA3210'),
('CS4501', 'CS3611'),
('CS4600', 'CS3810'),
('CS4610', 'CS3911'),
('CS4705', 'CS3810'),
('CS4710', 'CS4705'),
('CS4710', 'MA4100'),
('CS4720', 'CS4550'),
('CS5551', 'CS4550'),
('CS5610', 'CS3620'),
('CS5610', 'CS3810'),
('CS5710', 'CS4501'),
('CS5710', 'MA2000'),
('CS5720', 'CS3810'),
('CS5720', 'CS4550'),
('CS5720', 'CS5710'),
('CS5730', 'CS5710'),
('CS5730', 'CS4710'),
('CS5800', 'CS4550'),
('CS5810', 'CS4550'),
('CS5810', 'MA2000'),
('CS5820', 'CS5810'),
('CS5820', 'MA3210'),
('CS5910', 'CS4501'),
('CS5910', 'CS4720'),
('CR3099', 'CR1500'),
('CR4000', 'CR1500'),
('CR4091', 'CR1500'),
('CR4550', 'CR1500'),
('CR4999', 'CR1500'),
('ED3950', 'ED3700'),
('ED4050', 'ED3700'),
('ED4050', 'ED3950'),
('ED3950', 'ED3700'),
('ED4050', 'ED3700'),
('ED4050', 'ED3950'),
('ED3950', 'ED3700'),
('ED4050', 'ED3700'),
('ED4050', 'ED3950'),
('ED3950', 'ED3700'),
('ED4050', 'ED3700'),
('ED4050', 'ED3950'),
('ED3950', 'ED3700'),
('ED4050', 'ED3700'),
('ED4050', 'ED3950'),
('ED3950', 'ED3700'),
('ED4050', 'ED3700'),
('ED4050', 'ED3950'),
('ED3950', 'ED3700'),
('ED4050', 'ED3700'),
('ED4050', 'ED3950'),
('ED4200', 'ED3700'),
('ED4200', 'ED3950'),
('ED4220', 'ED3700'),
('ED4220', 'ED3950'),
('ED4220', 'ED4050'),
('ED4220', 'ED4200'),
('ED3950', 'ED3700'),
('ED4050', 'ED3700'),
('ED4050', 'ED3950'),
('ED4200', 'ED3700'),
('ED4200', 'ED3950'),
('ED4220', 'ED3700'),
('ED4220', 'ED3950'),
('ED4220', 'ED4050'),
('ED4220', 'ED4200'),
('ED4231', 'ED4230'),
('ED4250', 'ED3700'),
('ED4250', 'ED3950'),
('ED3950', 'ED3700'),
('ED4050', 'ED3700'),
('ED4050', 'ED3950'),
('ED4200', 'ED3700'),
('ED4200', 'ED3950'),
('ED4220', 'ED3700'),
('ED4220', 'ED3950'),
('ED4220', 'ED4050'),
('ED4220', 'ED4200'),
('ED4231', 'ED4230'),
('ED4250', 'ED3700'),
('ED4250', 'ED3950'),
('ED4300', 'ED4850'),
('ED4670', 'ED4850'),
('ED4670', 'ED4200'),
('ED3950', 'ED3700'),
('ED4050', 'ED3700'),
('ED4050', 'ED3950'),
('ED4200', 'ED3700'),
('ED4200', 'ED3950'),
('ED4220', 'ED3700'),
('ED4220', 'ED3950'),
('ED4220', 'ED4050'),
('ED4220', 'ED4200'),
('ED4231', 'ED4230'),
('ED4250', 'ED3700'),
('ED4250', 'ED3950'),
('ED4300', 'ED4850'),
('ED4670', 'ED4850'),
('ED4670', 'ED4200'),
('ED4670', 'ED3700'),
('ED3950', 'ED3700'),
('ED4050', 'ED3700'),
('ED4050', 'ED3950'),
('ED4200', 'ED3700'),
('ED4200', 'ED3950'),
('ED4220', 'ED3700'),
('ED4220', 'ED3950'),
('ED4220', 'ED4050'),
('ED4220', 'ED4200'),
('ED4231', 'ED4230'),
('ED4250', 'ED3700'),
('ED4250', 'ED3950'),
('ED4300', 'ED4850'),
('ED4670', 'ED4850'),
('ED4670', 'ED4200'),
('ED4670', 'ED3700'),
('ED4810', 'ED4850'),
('ED3950', 'ED3700'),
('ED4050', 'ED3700'),
('ED4050', 'ED3950'),
('ED4200', 'ED3700'),
('ED4200', 'ED3950'),
('ED4220', 'ED3700'),
('ED4220', 'ED3950'),
('ED4220', 'ED4050'),
('ED4220', 'ED4200'),
('ED4231', 'ED4230'),
('ED4250', 'ED3700'),
('ED4250', 'ED3950'),
('ED4300', 'ED4850'),
('ED4670', 'ED4850'),
('ED4670', 'ED4200'),
('ED4670', 'ED3700'),
('ED4810', 'ED4850'),
('ED4890', 'ED4850'),
('ED5900', 'ED4082'),
('ED5925', 'ED4082'),
('ED3950', 'ED3700'),
('ED4050', 'ED3700'),
('ED4050', 'ED3950'),
('ED4200', 'ED3700'),
('ED4200', 'ED3950'),
('ED4220', 'ED3700'),
('ED4220', 'ED3950'),
('ED4220', 'ED4050'),
('ED4220', 'ED4200'),
('ED4231', 'ED4230'),
('ED4250', 'ED3700'),
('ED4250', 'ED3950'),
('ED4300', 'ED4850'),
('ED4670', 'ED4850'),
('ED4670', 'ED4200'),
('ED4670', 'ED3700'),
('ED4810', 'ED4850'),
('ED4890', 'ED4850'),
('ED5900', 'ED4082'),
('ED5925', 'ED4082'),
('ED3950', 'ED3700'),
('ED4050', 'ED3700'),
('ED4050', 'ED3950'),
('ED4200', 'ED3700'),
('ED4200', 'ED3950'),
('ED4220', 'ED3700'),
('ED4220', 'ED3950'),
('ED4220', 'ED4050'),
('ED4220', 'ED4200'),
('ED4231', 'ED4230'),
('ED4250', 'ED3700'),
('ED4250', 'ED3950'),
('ED4300', 'ED4850'),
('ED4670', 'ED4850'),
('ED4670', 'ED4200'),
('ED4670', 'ED3700'),
('ED4810', 'ED4850'),
('ED4890', 'ED4850'),
('ED5900', 'ED4082'),
('ED5925', 'ED4082'),
('ED3950', 'ED3700'),
('ED4050', 'ED3700'),
('ED4050', 'ED3950'),
('ED4200', 'ED3700'),
('ED4200', 'ED3950'),
('ED4220', 'ED3700'),
('ED4220', 'ED3950'),
('ED4220', 'ED4050'),
('ED4220', 'ED4200'),
('ED4231', 'ED4230'),
('ED4250', 'ED3700'),
('ED4250', 'ED3950'),
('ED4300', 'ED4850'),
('ED4670', 'ED4850'),
('ED4670', 'ED4200'),
('ED4670', 'ED3700'),
('ED4810', 'ED4850'),
('ED4890', 'ED4850'),
('ED5900', 'ED4082'),
('ED5925', 'ED4082'),
('ED3950', 'ED3700'),
('ED4050', 'ED3700'),
('ED4050', 'ED3950'),
('ED4200', 'ED3700'),
('ED4200', 'ED3950'),
('ED4220', 'ED3700'),
('ED4220', 'ED3950'),
('ED4220', 'ED4050'),
('ED4220', 'ED4200'),
('ED4231', 'ED4230'),
('ED4250', 'ED3700'),
('ED4250', 'ED3950'),
('ED4300', 'ED4850'),
('ED4670', 'ED4850'),
('ED4670', 'ED4200'),
('ED4670', 'ED3700'),
('ED4810', 'ED4850'),
('ED4890', 'ED4850'),
('ED5900', 'ED4082'),
('ED5925', 'ED4082'),
('IR3120', 'IR2210'),
('MA1020', 'MA1010'),
('MA2000', 'MA1010'),
('MA2010', 'MA1020'),
('MA2050', 'MA1010'),
('MA2080', 'MA1020'),
('MA2090', 'MA1020'),
('MA2300', 'MA2090'),
('MA2310', 'MA2090'),
('MA2320', 'MA2310'),
('MA2500', 'MA2310'),
('MA3020', 'MA1020'),
('MA3030', 'MA2090'),
('MA3160', 'MA2310'),
('MA3180', 'MA2320'),
('MA3180', 'MA3030'),
('MA3180', 'MA3160'),
('MA3210', 'MA2310'),
('MA3330', 'MA2320'),
('MA3520', 'MA2320'),
('MA3520', 'MA3030'),
('MA4200', 'MA3330'),
('MA4360', 'MA3160'),
('MA4510', 'MA3160'),
('MA4510', 'MA2320'),
('MA1020', 'MA1010'),
('MA2000', 'MA1010'),
('MA2010', 'MA1020'),
('MA2050', 'MA1010'),
('MA2080', 'MA1020'),
('MA2090', 'MA1020'),
('MA2300', 'MA2090'),
('MA2310', 'MA2090'),
('MA2320', 'MA2310'),
('MA2500', 'MA2310'),
('MA3020', 'MA1020'),
('MA3030', 'MA2090'),
('MA3160', 'MA2310'),
('MA3180', 'MA2320'),
('MA3180', 'MA3030'),
('MA3180', 'MA3160'),
('MA3210', 'MA2310'),
('MA3330', 'MA2320'),
('MA3520', 'MA2320'),
('MA3520', 'MA3030'),
('MA4200', 'MA3330'),
('MA4360', 'MA3160'),
('MA4510', 'MA3160'),
('MA4510', 'MA2320'),
('MA1020', 'MA1010'),
('MA2000', 'MA1010'),
('MA2010', 'MA1020'),
('MA2050', 'MA1010'),
('MA2080', 'MA1020'),
('MA2090', 'MA1020'),
('MA2300', 'MA2090'),
('MA2310', 'MA2090'),
('MA2320', 'MA2310'),
('MA2500', 'MA2310'),
('MA3020', 'MA1020'),
('MA3030', 'MA2090'),
('MA3160', 'MA2310'),
('MA3180', 'MA2320'),
('MA3180', 'MA3030'),
('MA3180', 'MA3160'),
('MA3210', 'MA2310'),
('MA3330', 'MA2320'),
('MA3520', 'MA2320'),
('MA3520', 'MA3030'),
('MA4200', 'MA3330'),
('MA4360', 'MA3160'),
('MA4510', 'MA3160'),
('MA4510', 'MA2320'),
('MA5120', 'MA3160'),
('MA5120', 'MA3520'),
('MA5130', 'MA5120'),
('MA5320', 'MA2320'),
('MA5320', 'MA3520'),
('MA5360', 'MA3520'),
('MA5380', 'MA3330'),
('MA5510', 'MA3330'),
('MA5510', 'MA3520');

-- --------------------------------------------------------

--
-- Table structure for table `researcher`
--

CREATE TABLE `researcher` (
  `Researcher_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `researcher`
--

INSERT INTO `researcher` (`Researcher_Id`) VALUES
(110);

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
  `GPA` decimal(3,0) DEFAULT NULL,
  `student_type` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `GPA`, `student_type`) VALUES
(111, '0', 'grad'),
(112, '0', 'grad'),
(113, '0', 'grad'),
(114, '0', 'grad'),
(115, '0', 'grad'),
(116, '0', 'undergrad'),
(117, '0', 'undergrad'),
(118, '0', 'undergrad'),
(119, '0', 'undergrad'),
(120, '0', 'undergrad');

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
  `max_credits` int(2) NOT NULL DEFAULT 20,
  `min_credits` int(2) NOT NULL DEFAULT 12
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `undergrad_full`
--

INSERT INTO `undergrad_full` (`student_id`, `max_credits`, `min_credits`) VALUES
(118, 20, 12),
(119, 20, 12),
(120, 20, 12);

-- --------------------------------------------------------

--
-- Table structure for table `undergrad_part`
--

CREATE TABLE `undergrad_part` (
  `student_id` int(10) NOT NULL,
  `max_credits` int(2) NOT NULL DEFAULT 11
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `undergrad_part`
--

INSERT INTO `undergrad_part` (`student_id`, `max_credits`) VALUES
(116, 11),
(117, 11);

-- --------------------------------------------------------

--
-- Table structure for table `undergrad_student`
--

CREATE TABLE `undergrad_student` (
  `student_id` int(10) NOT NULL,
  `time_type` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `undergrad_student`
--

INSERT INTO `undergrad_student` (`student_id`, `time_type`) VALUES
(116, 'part'),
(117, 'part'),
(118, 'full'),
(119, 'full'),
(120, 'full');

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
  `Phone` varchar(12) NOT NULL,
  `Role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_Id`, `Email`, `Password`, `First_Name`, `Last_Name`, `Street_Address`, `City`, `State`, `Zipcode`, `Phone`, `Role`) VALUES
(1, 'RSanchez@weu.edu', 'password', 'Robert', 'Sanchez', '16-54 ORD ST', 'Tulsa', 'OK', 74101, '588-555-4793', 'faculty'),
(2, 'PWalker@weu.edu', 'password', 'Philip', 'Walker', '109-71 GOLD ST', 'Los_Angeles', 'CA', 90001, '115-555-6461', 'faculty'),
(3, 'SKing@weu.edu', 'password', 'Shlomo', 'King', '14 I-280 TO HWY 101 RAMP', 'Newport', 'RI', 2841, '749-555-8269', 'faculty'),
(4, 'KWilliams@weu.edu', 'password', 'Kelly', 'Williams', '81-18 FAIRBANKS ST', 'Wichita', 'KS', 67201, '265-555-4263', 'faculty'),
(5, 'NPerry@weu.edu', 'password', 'Nathan', 'Perry', '3194OLD CHINATOWN LN', 'Aberdeen', 'SD', 57402, '218-555-9784', 'faculty'),
(6, 'SPerry@weu.edu', 'password', 'Samantha', 'Perry', '4490 CLARKSON ST', 'Los_Angeles', 'CA', 90001, '465-555-8855', 'faculty'),
(7, 'LTaylor@weu.edu', 'password', 'Lauren', 'Taylor', '3379 LUDLOW ALY', 'Anchorage', 'AK', 99501, '334-555-4921', 'faculty'),
(8, 'CRoberts@weu.edu', 'password', 'Caitlin', 'Roberts', '8505 BELDEN ST', 'Duluth', 'MN', 55801, '244-555-8912', 'faculty'),
(9, 'RHall@weu.edu', 'password', 'Raymond', 'Hall', '94-43OAKWOOD ST', 'Des_Moines', 'IA', 52801, '440-555-6504', 'faculty'),
(10, 'WSmith@weu.edu', 'password', 'Willie', 'Smith', '93-78 MANSEAU ST', 'Aberdeen', 'SD', 57402, '158-555-7163', 'faculty'),
(11, 'RCampbell@weu.edu', 'password', 'Ryan', 'Campbell', '9037 NATOMA ST', 'Portland', 'OR', 97201, '729-555-5771', 'faculty'),
(12, 'SButler@weu.edu', 'password', 'Samuel', 'Butler', '97-63 PENINSULA AVE', 'Honolulu', 'HI', 96801, '189-555-8591', 'faculty'),
(13, 'RJohnson@weu.edu', 'password', 'Ramona', 'Johnson', '4854 BIGELOW CT', 'Newport', 'RI', 2841, '298-555-8199', 'faculty'),
(14, 'admin@weu.edu', 'password', 'Samantha', 'James', '80-15 OLIVE ST', 'Nashville', 'TN', 37201, '338-555-3923', 'admin'),
(15, 'EBell@weu.edu', 'password', 'Emma', 'Bell', '24-54 SAN ANTONIO PL', 'Coldwater', 'MI', 49036, '744-555-8349', 'faculty'),
(16, 'MRichardson@weu.edu', 'password', 'Mark', 'Richardson', '968 THOMAS MELLON CIR', 'Logan', 'UT', 84321, '492-555-4619', 'faculty'),
(17, 'RMoore@weu.edu', 'password', 'Ronald', 'Moore', '16-89 GENOA PL', 'Honolulu', 'HI', 96801, '670-555-2208', 'faculty'),
(18, 'RHarris@weu.edu', 'password', 'Rose', 'Harris', '101-45 SAINT GEORGE ALY', 'Cleveland', 'OH', 44101, '104-555-2049', 'faculty'),
(19, 'MCarter@weu.edu', 'password', 'Megan', 'Carter', '746 NIAGARA AVE', 'Pensacola', 'FL', 32501, '283-555-6960', 'faculty'),
(20, 'NCampbell@weu.edu', 'password', 'Noah', 'Campbell', '4931 CAMPBELL AVE', 'Los_Angeles', 'CA', 90001, '545-555-9810', 'faculty'),
(21, 'DCarter@weu.edu', 'password', 'Donna', 'Carter', '73-101 GUERRERO ST', '62701,62709', 'IN', 62701, '380-555-9570', 'faculty'),
(22, 'AMurphy@weu.edu', 'password', 'Ann', 'Murphy', '72-15 ADELE CT', 'Biloxi', 'MS', 39530, '495-555-8274', 'faculty'),
(23, 'SAlexander@weu.edu', 'password', 'Samuel', 'Alexander', '82-16 LIGGETT AVE', 'Walhalla', 'ND', 58282, '718-555-8327', 'faculty'),
(24, 'KYoung@weu.edu', 'password', 'Kenneth', 'Young', '7268 OSHAUGHNESSY BLVD', 'Logan', 'UT', 84321, '102-555-2291', 'faculty'),
(25, 'PWard@weu.edu', 'password', 'Paul', 'Ward', '55-102 OXFORD ST', 'Honolulu', 'HI', 96801, '328-555-9831', 'faculty'),
(26, 'MBrooks@weu.edu', 'password', 'Makenzie', 'Brooks', '5750 FARVIEW CT', '62701,62709', 'IN', 62701, '564-555-4156', 'faculty'),
(27, 'JClark@weu.edu', 'password', 'Jack', 'Clark', '5620 WEDEMEYER ST', 'Bellevue', 'WA', 98004, '413-555-9223', 'faculty'),
(28, 'DLee@weu.edu', 'password', 'Donna', 'Lee', '7610 FALLON PL', 'Des_Moines', 'IA', 52801, '116-555-3380', 'faculty'),
(29, 'AButler@weu.edu', 'password', 'Ann', 'Butler', '2048 MERCEDES WAY', 'Orlando', 'FL', 32801, '729-555-8455', 'faculty'),
(30, 'APeterson@weu.edu', 'password', 'Amanda', 'Peterson', '63-38 PAGODA PL', 'Des_Moines', 'IA', 52801, '496-555-7171', 'faculty'),
(31, 'CWalker@weu.edu', 'password', 'Cheryl', 'Walker', '105-43 WILLARD ST NORTH', 'Miami', 'FL', 33124, '368-555-3373', 'faculty'),
(32, 'LFoster@weu.edu', 'password', 'Lee', 'Foster', '89-74 KEARNY ST', 'IL', 'Sp', 60601, '457-555-3650', 'faculty'),
(33, 'GCox@weu.edu', 'password', 'Gary', 'Cox', '97-33 SHARON ST', 'Pensacola', 'FL', 32501, '418-555-8874', 'faculty'),
(34, 'JHall@weu.edu', 'password', 'Jerry', 'Hall', '79-37 FOUNTAIN ST', 'Hartford', 'CT', 6101, '736-555-8449', 'faculty'),
(35, 'PNelson@weu.edu', 'password', 'Percival', 'Nelson', '5658 OWENS ST', 'Honolulu', 'HI', 96801, '201-555-9944', 'faculty'),
(36, 'CReed@weu.edu', 'password', 'Caitlin', 'Reed', '38-22 IRON ALY', 'Dover', 'DE', 19901, '240-555-8624', 'faculty'),
(37, 'VSimmons@weu.edu', 'password', 'Virginia', 'Simmons', '7111 CORDELIA ST', 'Portland', 'OR', 97201, '123-555-7441', 'faculty'),
(38, 'BRodriguez@weu.edu', 'password', 'Brandon', 'Rodriguez', '49-11 HARRISON BLVD', 'Boston', 'MA', 2101, '746-555-5252', 'faculty'),
(39, 'KButler@weu.edu', 'password', 'Kathleen', 'Butler', '74-14 EMERALD COVE WAY', 'Beaver', 'WV', 25813, '274-555-6071', 'faculty'),
(40, 'KGonzalez@weu.edu', 'password', 'Kyle', 'Gonzalez', '9166 OREILLY AVE', 'Miami', 'FL', 33124, '528-555-3122', 'faculty'),
(41, 'AThomas@weu.edu', 'password', 'Aaron', 'Thomas', '81-70 GARRISON AVE', 'Lakes', 'MN', 49734, '691-555-9048', 'faculty'),
(42, 'MKelly@weu.edu', 'password', 'Malay', 'Kelly', '74-70 SUTRO HEIGHTS AVE', 'Santa_Fe', 'NM', 87500, '255-555-6215', 'faculty'),
(43, 'RGriffin@weu.edu', 'password', 'Roger', 'Griffin', '101-109 TORNEY AVE', '20001,20020', 'DC', 20001, '644-555-4056', 'faculty'),
(44, 'JYoung@weu.edu', 'password', 'Judy', 'Young', '100-10 MERCURY ST', 'Walhalla', 'ND', 58282, '185-555-2281', 'faculty'),
(45, 'WEdwards@weu.edu', 'password', 'Walter', 'Edwards', '7626 PELICAN COVE TER', 'Newport', 'RI', 2841, '175-555-3051', 'faculty'),
(46, 'AFoster@weu.edu', 'password', 'Amy', 'Foster', '3481 CORBIN PL', 'Beaver', 'WV', 25813, '147-555-9672', 'faculty'),
(47, 'GEdwards@weu.edu', 'password', 'Gabriel', 'Edwards', '106-107 MARGARET AVE', 'Sacramento', 'CA', 94203, '122-555-9218', 'faculty'),
(48, 'LFlores@weu.edu', 'password', 'Larry', 'Flores', '4685 CONVERSE ST', 'Miami', 'FL', 33124, '731-555-8627', 'faculty'),
(49, 'SAnderson@weu.edu', 'password', 'Stephanie', 'Anderson', '6535 BERCUT ACCESS RD', 'New_Orleans', 'LA', 70112, '345-555-9193', 'faculty'),
(50, 'WWhite@weu.edu', 'password', 'William', 'White', '6380 CRISP RD', 'Austin', 'TX', 78701, '198-555-3226', 'faculty'),
(51, 'DRodriguez@weu.edu', 'password', 'Doris', 'Rodriguez', '15-48 BEALE ST', 'New_Orleans', 'LA', 70112, '459-555-2262', 'faculty'),
(52, 'ZHill@weu.edu', 'password', 'Zachary', 'Hill', '81-53 PIERCE ST', 'Altavista', 'VA', 24517, '244-555-7643', 'faculty'),
(53, 'LJones@weu.edu', 'password', 'Lawrence', 'Jones', '48-104 FRENCH CT', 'Chicago', 'IL', 60002, '172-555-2198', 'faculty'),
(54, 'DPeterson@weu.edu', 'password', 'Deborah', 'Peterson', '9228 COLONIAL WAY', 'Nashville', 'TN', 37201, '523-555-8005', 'faculty'),
(55, 'RButler@weu.edu', 'password', 'Raquila', 'Butler', '19-24 CRESTWELL WALK', 'Sacramento', 'CA', 94203, '431-555-5964', 'faculty'),
(56, 'ATorres@weu.edu', 'password', 'Amanda', 'Torres', '69-43 OAK PARK DR', 'Phoenix', 'AZ', 85001, '244-555-8350', 'faculty'),
(57, 'RCook@weu.edu', 'password', 'Ralph', 'Cook', '9294 CHANNEL ST', 'Tulsa', 'OK', 74101, '551-555-7472', 'faculty'),
(58, 'WJames@weu.edu', 'password', 'Willie', 'James', '9662 TAPIA DR', 'Pensacola', 'FL', 32501, '484-555-4353', 'faculty'),
(59, 'SSanders@weu.edu', 'password', 'Suli', 'Sanders', '30-12 VERDUN WAY', 'Reno', 'NV', 89501, '258-555-7070', 'faculty'),
(60, 'SAnderson@weu.edu', 'password', 'Sean', 'Anderson', '977 ELLINGTON AVE', 'Reno', 'NV', 89501, '263-555-2382', 'faculty'),
(61, 'SAlexander@weu.edu', 'password', 'Sean', 'Alexander', '89-48 ARBOR ST', 'Coldwater', 'MI', 49036, '573-555-2802', 'faculty'),
(62, 'JKelly@weu.edu', 'password', 'Janice', 'Kelly', '6911 EL DORADO ST', 'Ashland', 'NH', 3217, '694-555-9655', 'faculty'),
(63, 'NEvans@weu.edu', 'password', 'Nancy', 'Evans', '43-76 MORNINGSIDE DR', 'New_Orleans', 'LA', 70112, '718-555-4434', 'faculty'),
(64, 'TPhillips@weu.edu', 'password', 'Titi', 'Phillips', '110-102 ROSCOE ST', 'Santa_Fe', 'NM', 87500, '489-555-3387', 'faculty'),
(65, 'RWhite@weu.edu', 'password', 'Ryan', 'White', '8530 ROSSMOOR DR', 'Sacramento', 'CA', 94203, '697-555-5877', 'faculty'),
(66, 'HHayes@weu.edu', 'password', 'Hannah', 'Hayes', '108-39 SEACLIFF AVE', 'Laurel', 'MT', 59044, '726-555-2604', 'faculty'),
(67, 'WClark@weu.edu', 'password', 'Wayne', 'Clark', '7144 WEDEMEYER ST', 'none', 'no', 0, '774-555-6896', 'faculty'),
(68, 'JRichardson@weu.edu', 'password', 'Jacqueline', 'Richardson', '4159 BLANCHE ST', 'New_York', 'NY', 10001, '419-555-4082', 'faculty'),
(69, 'SCampbell@weu.edu', 'password', 'Samantha', 'Campbell', '4025 CAMBRIDGE ST', 'Wichita', 'KS', 67201, '654-555-4174', 'faculty'),
(70, 'EWright@weu.edu', 'password', 'Ethan', 'Wright', '7509 TOMPKINS AVE', 'Atlanta', 'GA', 30301, '387-555-7885', 'faculty'),
(71, 'MKelly@weu.edu', 'password', 'Morgan', 'Kelly', '70-26 CENTRAL AVE', 'Pinedale', 'WY', 82941, '768-555-2607', 'faculty'),
(72, 'GJames@weu.edu', 'password', 'Grace', 'James', '3178 BURR AVE', 'Freeport', 'ME', 4032, '285-555-5275', 'faculty'),
(73, 'PHill@weu.edu', 'password', 'Patrick', 'Hill', '79-41 I-80 WESTBOUND', 'Anchorage', 'AK', 99501, '439-555-3357', 'faculty'),
(74, 'MSanchez@weu.edu', 'password', 'Mary', 'Sanchez', '6867 WATERFRONT ST', 'Sacramento', 'CA', 94203, '694-555-5587', 'faculty'),
(75, 'EBryant@weu.edu', 'password', 'Emily', 'Bryant', '28-35 BATTERY EAST RD', 'Kansas_City', 'KS', 50301, '127-555-6166', 'faculty'),
(76, 'GBailey@weu.edu', 'password', 'Gina', 'Bailey', '7710 INNES AVE', 'Coldwater', 'MI', 49036, '749-555-2565', 'faculty'),
(77, 'JTorres@weu.edu', 'password', 'Joshua', 'Torres', '6933 VISTA VIEW CT', 'Tulsa', 'OK', 74101, '723-555-6228', 'faculty'),
(78, 'JWilliams@weu.edu', 'password', 'Jason', 'Williams', '107-96 FRIEDELL ST', 'Hartford', 'CT', 6101, '281-555-6221', 'faculty'),
(79, 'MBrooks@weu.edu', 'password', 'Malay', 'Brooks', '7959 DICKINSON ST', 'New_Orleans', 'LA', 70112, '697-555-5878', 'faculty'),
(80, 'RParker@weu.edu', 'password', 'Raquila', 'Parker', '6392 ROANOKE ST', 'Montpelier', 'ID', 83254, '613-555-4196', 'faculty'),
(81, 'CPerez@weu.edu', 'password', 'Charles', 'Perez', '35-30 HAWKINS LN', 'Chicago', 'IL', 60002, '103-555-3749', 'faculty'),
(82, 'JLewis@weu.edu', 'password', 'Jeremy', 'Lewis', '10-79 TALBERT CT', 'Coldwater', 'MI', 49036, '215-555-5199', 'faculty'),
(83, 'EWashington@weu.edu', 'password', 'Ethan', 'Washington', '44-106 COLIN P KELLY JR ST', 'Phoenix', 'AZ', 85001, '176-555-2747', 'faculty'),
(84, 'CParker@weu.edu', 'password', 'Caitlin', 'Parker', '4374 ANTONIO ST', 'Hazard', 'KY', 41701, '441-555-2629', 'faculty'),
(85, 'JBennett@weu.edu', 'password', 'Jonathan', 'Bennett', '8481 COLTON ST', 'Los_Angeles', 'CA', 90001, '338-555-4206', 'faculty'),
(86, 'LCampbell@weu.edu', 'password', 'Lauren', 'Campbell', '80-45 CRESTA VISTA DR', 'Austin', 'TX', 78701, '138-555-4882', 'faculty'),
(87, 'PAlexander@weu.edu', 'password', 'Philip', 'Alexander', '108-98 AGUA WAY', 'Killington', 'VT', 5751, '185-555-9983', 'faculty'),
(88, 'DWalker@weu.edu', 'password', 'Deborah', 'Walker', '3143 GATUN ALY', 'Tulsa', 'OK', 74101, '323-555-6736', 'faculty'),
(89, 'RBrooks@weu.edu', 'password', 'Ronald', 'Brooks', '44-63 QUICKSTEP LN', 'Boston', 'MA', 2101, '246-555-7775', 'faculty'),
(90, 'LRamirez@weu.edu', 'password', 'Lee', 'Ramirez', '8427 SHORE VIEW AVE', 'Miami', 'FL', 33124, '486-555-4699', 'faculty'),
(91, 'RWilliams@weu.edu', 'password', 'Russell', 'Williams', '9421 MALTA DR', 'Livingston', 'NJ', 7039, '375-555-5505', 'faculty'),
(92, 'JPrice@weu.edu', 'password', 'Jordan', 'Price', '69-81 AUTOMOBILE DR', 'Wichita', 'KS', 67201, '306-555-4877', 'faculty'),
(93, 'DWright@weu.edu', 'password', 'Deepa', 'Wright', '8378 NEPTUNE ST', 'Kansas_City', 'KS', 50301, '558-555-8744', 'faculty'),
(94, 'BTaylor@weu.edu', 'password', 'Brandon', 'Taylor', '7671 SANTA ROSA AVE', 'Killington', 'VT', 5751, '120-555-6180', 'faculty'),
(95, 'EFlores@weu.edu', 'password', 'Evelyn', 'Flores', '7827 VAN NESS AVE', 'Des_Moines', 'IA', 52801, '322-555-7269', 'faculty'),
(96, 'AHill@weu.edu', 'password', 'Ashley', 'Hill', '5956 RODRIGUEZ ST', 'Oxford', 'NC', 27565, '506-555-2687', 'faculty'),
(97, 'JMartinez@weu.edu', 'password', 'Jesse', 'Martinez', '6310 BERWICK PL', 'Reno', 'NV', 89501, '232-555-3977', 'faculty'),
(98, 'HSimmons@weu.edu', 'password', 'Helen', 'Simmons', '35-91 CAMELLIA AVE', 'Laurel', 'MT', 59044, '105-555-3007', 'faculty'),
(99, 'GHill@weu.edu', 'password', 'Gabriel', 'Hill', '4320 FUNSTON AVE', 'Cleveland', 'OH', 44101, '194-555-3618', 'faculty'),
(100, 'APowell@weu.edu', 'password', 'Alexis', 'Powell', '7358 STILL ST', 'Montpelier', 'ID', 83254, '763-555-4032', 'faculty'),
(101, 'MWilliams@weu.edu', 'password', 'Michael', 'Williams', '3361 MCALLISTER ST', 'Hazard', 'KY', 41701, '768-555-9515', 'faculty'),
(102, 'ABell@weu.edu', 'password', 'Austin', 'Bell', '7353 COMERFORD ST', 'Montpelier', 'ID', 83254, '713-555-2015', 'faculty'),
(103, 'RHoward@weu.edu', 'password', 'Russell', 'Howard', '53-60 MALTA DR', 'Dover', 'DE', 19901, '758-555-9986', 'faculty'),
(104, 'RWashington@weu.edu', 'password', 'Rebecca', 'Washington', '32-82 DICHA ALY', 'Santa_Fe', 'NM', 87500, '116-555-9847', 'faculty'),
(105, 'ABailey@weu.edu', 'password', 'Albert', 'Bailey', '69-82 PINTO AVE', '62701,62709', 'IN', 62701, '613-555-3984', 'faculty'),
(106, 'SLong@weu.edu', 'password', 'Sean', 'Long', '61-75 GILLETTE AVE', '62701,62709', 'IN', 62701, '648-555-9059', 'faculty'),
(107, 'DHall@weu.edu', 'password', 'Denise', 'Hall', '69-97 JUSTIN DR', '20001,20020', 'DC', 20001, '721-555-7885', 'faculty'),
(108, 'JRamirez@weu.edu', 'password', 'Judith', 'Ramirez', '2211 MANSELL ST', 'Cleveland', 'OH', 44101, '515-555-8214', 'faculty'),
(109, 'LBennett@weu.edu', 'password', 'Lisa', 'Bennett', '3508 ASHBURY ST', 'Hazard', 'KY', 41701, '798-555-2063', 'faculty'),
(110, 'researcher@weu.edu', 'password', 'Patricia', 'Russell', '8032 CASTRO ST', 'Chicago', 'IL', 60002, '529-555-5801', 'researcher'),
(111, 'DThompson@weu.edu', 'password', 'Debra', 'Thompson', '3978 WHITE ST', 'Milwaukee', 'WI', 53201, '538-555-9715', 'student'),
(112, 'JAnderson@weu.edu', 'password', 'Jonathan', 'Anderson', '109-48 RONDEL PL', 'Portland', 'OR', 97201, '789-555-6344', 'student'),
(113, 'CCooper@weu.edu', 'password', 'Christian', 'Cooper', '36-20 LAKEWOOD AVE', 'Phoenix', 'AZ', 85001, '746-555-2039', 'student'),
(114, 'HTurner@weu.edu', 'password', 'Henry', 'Turner', '6000 PILGRIM AVE', 'Logan', 'UT', 84321, '780-555-4293', 'student'),
(115, 'JMartinez@weu.edu', 'password', 'Julie', 'Martinez', '7813 HEALY AVE', 'Walhalla', 'ND', 58282, '726-555-2053', 'student'),
(116, 'AHarris@weu.edu', 'password', 'Aaron', 'Harris', '5644 AMATISTA LN', 'Tulsa', 'OK', 74101, '627-555-5032', 'student'),
(117, 'AMartinez@weu.edu', 'password', 'Aaron', 'Martinez', '7415 GLADYS ST', 'Davenport', 'IA', 0, '561-555-3312', 'student'),
(118, 'RMoore@weu.edu', 'password', 'Ronald', 'Moore', '9160 WHEAT ST', 'Ashland', 'NH', 3217, '549-555-8878', 'student'),
(119, 'RMorgan@weu.edu', 'password', 'Robert', 'Morgan', '83-13 CLAREMONT BLVD', 'Logan', 'UT', 84321, '216-555-7229', 'student'),
(120, 'JAnderson@weu.edu', 'password', 'Joyce', 'Anderson', '2820 JUDSON AVE', 'Boston', 'MA', 2101, '291-555-2539', 'student');

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
  ADD KEY `grad_registration_ibfk_2` (`student_id`),
  ADD KEY `grad_program_id` (`grad_program_id`);

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
  ADD PRIMARY KEY (`major_id`,`req_course_id`),
  ADD KEY `req_course_id` (`req_course_id`);

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
  ADD PRIMARY KEY (`minor_id`,`req_course_id`),
  ADD KEY `req_course_id` (`req_course_id`);

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
-- AUTO_INCREMENT for table `grad_program`
--
ALTER TABLE `grad_program`
  MODIFY `grad_program_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `major`
--
ALTER TABLE `major`
  MODIFY `major_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

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
  MODIFY `User_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

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
  ADD CONSTRAINT `grad_program_requirements_ibfk_3` FOREIGN KEY (`grad_program_id`) REFERENCES `grad_program` (`grad_program_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `grad_program_requirements_ibfk_4` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE;

--
-- Constraints for table `grad_registration`
--
ALTER TABLE `grad_registration`
  ADD CONSTRAINT `grad_registration_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `grad_registration_ibfk_3` FOREIGN KEY (`grad_program_id`) REFERENCES `grad_program` (`grad_program_id`) ON DELETE CASCADE;

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
  ADD CONSTRAINT `major_courses_ibfk_1` FOREIGN KEY (`major_id`) REFERENCES `major` (`major_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `major_requirements_ibfk_1` FOREIGN KEY (`req_course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE;

--
-- Constraints for table `minor`
--
ALTER TABLE `minor`
  ADD CONSTRAINT `minor_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`Dept_Id`);

--
-- Constraints for table `minor_requirements`
--
ALTER TABLE `minor_requirements`
  ADD CONSTRAINT `minor_requirements_ibfk_1` FOREIGN KEY (`minor_id`) REFERENCES `minor` (`minor_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `minor_requirements_ibfk_2` FOREIGN KEY (`req_course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE;

--
-- Constraints for table `prereq`
--
ALTER TABLE `prereq`
  ADD CONSTRAINT `prereq_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prereq_ibfk_2` FOREIGN KEY (`prereq_course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE;

--
-- Constraints for table `researcher`
--
ALTER TABLE `researcher`
  ADD CONSTRAINT `researcher_ibfk_1` FOREIGN KEY (`Researcher_Id`) REFERENCES `user` (`User_Id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
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
