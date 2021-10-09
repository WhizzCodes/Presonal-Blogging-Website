-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2021 at 04:02 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pythonca2`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogposts`
--

CREATE TABLE `blogposts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogposts`
--

INSERT INTO `blogposts` (`id`, `title`, `slug`, `content`, `date`) VALUES
(1, '...My First Blog...', 'my-first-blog', 'This is my first blog posting today in my own created website using python flask and mysql database.', '2021-08-06 21:42:39');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `msg`, `date`) VALUES
(1, 'Sana Patil', 'sanapatil@gmail.com', 'I am a content writer as well and have exprience of 1.5 years, i would like work with you and we can together grow this. \r\nLets me know if you are interrested.\r\n', '2021-09-11 22:15:37');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `date`) VALUES
(1, 'Covid third wave could peak between October-November', 'Covid third wave', 'India may see a third wave of COVID-19 peaking between October and November if a more virulent mutant than the existing ones emerge by September, but its intensity is expected to be much lower than the second wave, a scientist involved in the mathematical modelling of the pandemic said on Monday.\r\n\r\nManindra Agrawal, an IIT-Kanpur scientist who is part of the three-member team of experts that have been tasked with predicting any surge in infections, said if no new virulent emerges, then the situation is unlikely to change.\r\n\r\nIf the third wave peaks, the country may see only 1 lakh daily cases as against more than 4 lakh when the deadly second wave was at its peak in May. The second wave killed thousands and infected several lakh.\r\n\r\n\"Status Quo is when no new mutant comes and New Variant is when 50% more infectious mutant comes by September. As one can see, the only scenario with some semblance of third wave is New Variant one for epsilon = 1/33. In this scenario, new cases rise to ~1 lakh per day,\" Mr. Agrawal tweeted.\r\n\r\n\r\nLast month, the model suggested that the third wave could peak between October and November and the daily cases could shoot between 1.5 lakh to 2 lakh every day if a more virulent mutant of SARS-CoV2 drive fresh infections.\r\n\r\nHowever, no mutant that was more infectious than the Delta, which drove the infections during the third wave, emerged.\r\n\r\nLast week\'s forecast was the same, but only the range of daily cases has been brought down to 1-1.5 lakh in the latest one.\r\n\r\nWith the fresh data, the daily infections are further expected to drop in the range of a lakh.\r\n\r\nMr. Agrawal said the fresh data comprising the vaccinations that have taken place in July and August, the sero-surveys that gave insights about the anti-bodies were factored in while assuming the scenarios. According to a study by the researchers of Institute of Mathematical Sciences, the R or the Reproductive value of the coronavirus pandemic was 0.89. It is necessary that the R value is under one that can help arrest the spread of infection.\r\n\r\nVaccination has been the biggest weapon worldwide to combat coronavirus and more than 63 crore doses have been administered in the country, according to the CoWIN dashboard.  ', '2021-09-11 20:35:36'),
(3, 'Kerala reports 20,487 cases and 181 deaths; positivity at 15%', 'Kerala reports 20,487 cases and 181 deaths; positivity at 15%', 'Kerala on 10th sept reported 20,487 fresh Covid-19 cases, 22,155 recoveries and 181 deaths. The death toll has reached 22,484 and there are 2,31,792 active cases. The positivity rate is at 15.19%.\r\n\r\nIndia had on Friday reported 33,376 new Covid-19 cases and 308 related deaths. Although the case count saw a slight dip from Thursday’s 34,973, the number of people who succumbed to the disease witnessed a spike from 276. The country currently has over 3.91 lakh active cases.\r\n\r\nPrime Minister Narendra Modi on Friday chaired a high-level meeting to review the Covid-19 situation and progress of the vaccination drive in the country and was briefed about the concentration of cases “in a few geographies”. In Friday’s meeting, the Prime Minister’s Office (PMO) said in a statement that Modi was briefed about the concentration of cases “in a few geographies, districts with high test positivity as well as the week-on-week test positivity rate in the country”.\r\n\r\nMeanwhile, Maharashtra is set to witness muted Ganesh Chaturthi celebrations for the second consecutive year, due to the ongoing coronavirus pandemic. In Mumbai, city police have banned gatherings of more than four people and processions between September 10 and 19. Instead of visiting Ganesh pandals, devotees have been instructed to participate in virtual darshans.', '2021-09-11 21:02:42'),
(4, 'WHO chief scientist says India is better equipped to deal with COVID 3rd wave ', 'WHO chief scientist says India is better equipped to deal with COVID 3rd wave ', ' World Health Organization chief scientist Dr. Soumya Swaminathan said India is better prepared deal with new Covid-19 waves, CNBC reported. \r\n\r\nIndia suffered a devastating second wave between February and early May, when the daily infection count and death rates rose at an alarming pace. Since then the pace of vaccination has also climbed sharply in the country and currently, the cases are averaging to around 30,000 to 40,000 a day.\r\n \r\nSwaminathan told CNBC that the world has learned enough about the coronavirus to understand which of the weaknesses in the human body it exploits, and which public health tools and measures are effective at tackling it.\r\n\r\n“I think we are much better equipped now in India, but also in other countries, to prevent any catastrophic waves from happening,\" she said.\r\n\r\n“I think the preparations at health system level have really increased, particularly with respect to oxygen and critical care facilities,\" Swaminathan said.\r\n\r\n“What is needed also is to ramp up the health workforce because it’s not enough to just have the equipment and the materials and the drugs. We also need trained nurses, doctors, anesthesiologists, critical care technicians and others,\" she added.\r\n\r\nPointing out that pace of vaccination has increased significantly, she said, “At this rate, it should be possible to get to that goal of almost all adults being vaccinated in the country. It’s a huge population — 700 million doses administered already.\" \r\n\r\n“There is a still a long way to go, but if this pace continues, if the supplies from the manufacturers continue, then ... I think it should be possible to meet that goal.\"\r\n\r\nIndia recorded 43,263 new coronavirus infections taking the total tally of COVID-19 cases to 3,31,39,981, while the active cases increased to 3,93,614, according to the Union Health Ministry data updated on Thursday.\r\n\r\nThe death toll climbed to 4,41,749 with 338 fresh fatalities, according to the data updated at 8 am.\r\n\r\nThe active cases comprise 1.19 per cent of the total infections and the national COVID-19 recovery rate was recorded at 97.48 per cent, the ministry said.', '2021-09-11 21:06:15'),
(5, 'Ganesh festival begins in Maharashtra, state watching Covid situation', 'Ganesh festival begins in Maharashtra, state watching Covid situation', ' While Covid numbers are rising, the state has not decided to impose any lockdown restrictions during Ganesh festival.\r\nA family takes Ganesh idol home in Mumbai. The state authorities are concerned about rise in Covid cases during the festival.\r\nAs the 10-day long Ganeshotsav begins on Friday, the Maharashtra government is closely monitoring the Covid situation, amid a jump in active cases on Thursday. The state reported 4,219 fresh Covid infections, while the active cases jumped from 47,880 on Wednesday to 50,229. The state reported 55 deaths, pushing its toll to 138,017. A day after Mumbai recorded a seven-week high, it reported 457 fresh Covid infections on Thursday. Mumbai also reported two fatalities, pushing the toll to 16,006.\r\nMaharashtra is seeing an overall downward trend in Covid cases over the past few days, but around five districts, including Mumbai and Pune, are showing a rise in daily Covid-19 cases. The rise in cases in the two cities is a cause of concern for authorities, as Mumbai and Pune were major hotspots during the first and second wave of infections since March 2020.\r\n\r\nPune district, too, saw an increase in its active case count. The district’s active cases went from 12,364 on Wednesday to 12,758. On Thursday, Pune city, its rural areas and Pimpri-Chinchwad reported 233, 541 and 177 fresh cases, respectively. Pune city’s cases have gone from 198 to 276 between September 6 and September 8. A similar trend is seen in the rural areas of Pune. Between September 6 and 9, the daily cases increased from 416 to 541 on Thursday.\r\nThe state has not decided to impose any lockdown restrictions during the festive season, but authorities have appealed the people to exercise caution, follow Covid-appropriate behaviour in view of the impending third wave of Covid infections.\r\n\r\n“There are not going to be any restrictions as such, but people should avoid crowding that would lead to more transmission. We all must follow Covid-appropriate behaviour. If people follow these things, it will make our jobs much easier and it will be helpful for the government and administration,” said Rajesh Tope, state public health minister.\r\n\r\nThe state has however imposed restrictions on celebration during Ganesh festival. In view of the Covid-19 situation in Mumbai, the city police have prohibited large-scale celebrations of the upcoming Ganesh Chaturthi festival. As per an order issued on Thursday, section 144 of the CrPC will be in place in India’s financial capital from 10 to 19 September. The police have banned physical darshan at public pandals and restrictions have been imposed on the number of participants in processions during the 10-day long festival. While civic authorities have directed major Ganesh pandals to make arrangements for online viewing and darshan.\r\nSenior health department officials said they are monitoring the situation and would wait for a couple of weeks to recommend imposition of some more curbs to check the spread of the virus. An official, who did not wish to be named, said that they had expected some rise in cases in urban areas once restrictions were lifted in mid-August. “With suburban trains being opened to more people [than before] we expected to see some increase. People are moving out and about during the festive season. While we are concerned about Mumbai and Pune, the rise is not a trend yet. Steps are being taken by the local administration for early detection, more testing, to keep transmission low,” the officer said.\r\nDr Subhash Salunkhe, technical advisor to the state on Covid-19, said the situation was “critical” in urban areas. He said, “While people need to understand and not step out unless necessary, the authorities have to restrict movement of people. Despite understanding the seriousness of the situation, people not wearing masks properly.” He further added that state has to increase surveillance. “Contrary to the practice, the surveillance should increase when numbers are low.”\r\n', '2021-09-11 22:13:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `date`) VALUES
(1, 'Preeti Guin', 'preetiguin@gmail.com', '1', '2021-08-06 19:33:27'),
(2, 'Preeti Guin', 'preetiguin@gmail.com', '7', '2021-08-06 19:43:19'),
(3, 'Preeti Guin', 'preetiguin@gmail.com', 'g', '2021-08-06 19:44:17'),
(4, 'Preeti Guin', 'preetiguin@gmail.com', '1', '2021-08-06 20:12:04'),
(5, 'Hello', 'hi@hi.com', '1', '2021-09-11 13:28:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogposts`
--
ALTER TABLE `blogposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogposts`
--
ALTER TABLE `blogposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
