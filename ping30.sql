-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-01-31 10:01:38
-- 服务器版本： 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ping30`
--

-- --------------------------------------------------------

--
-- 表的结构 `cours`
--

CREATE TABLE `cours` (
  `idCours` int(11) NOT NULL,
  `nomCours` varchar(254) NOT NULL,
  `idSalle` int(11) NOT NULL,
  `idEnseignant` int(11) NOT NULL,
  `dateCours` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `cours`
--

INSERT INTO `cours` (`idCours`, `nomCours`, `idSalle`, `idEnseignant`, `dateCours`) VALUES
(1, 'maths', 1, 1, '2016-11-10'),
(2, 'sports', 2, 1, '2016-11-11');

-- --------------------------------------------------------

--
-- 表的结构 `ecole`
--

CREATE TABLE `ecole` (
  `idEcole` int(11) NOT NULL,
  `nomEcole` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `enseignant`
--

CREATE TABLE `enseignant` (
  `idEnseignant` int(11) NOT NULL,
  `nomEnseignant` varchar(254) NOT NULL,
  `prenomEnseignant` varchar(254) NOT NULL,
  `pwdEnseignant` varchar(255) NOT NULL,
  `emailEnseignant` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `enseignant`
--

INSERT INTO `enseignant` (`idEnseignant`, `nomEnseignant`, `prenomEnseignant`, `pwdEnseignant`, `emailEnseignant`) VALUES
(1, 'shi', 'congyi', '11', '11'),
(2, 'xia', 'chuanling', '11111', '1111111');

-- --------------------------------------------------------

--
-- 表的结构 `etudiant`
--

CREATE TABLE `etudiant` (
  `idEtudiant` int(11) NOT NULL,
  `NomEtudiant` varchar(254) NOT NULL,
  `prenomEtudiant` varchar(254) NOT NULL,
  `idGroupeEtudiant` int(11) NOT NULL,
  `INEEtudiant` int(11) NOT NULL,
  `adressePhoto` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `etudiant`
--

INSERT INTO `etudiant` (`idEtudiant`, `NomEtudiant`, `prenomEtudiant`, `idGroupeEtudiant`, `INEEtudiant`, `adressePhoto`) VALUES
(1, 'Serais', 'Sebastien', 1, 1234, '......'),
(2, 'Tenir', 'jesaispas', 2, 11213, '11111'),
(3, 'shi', 'congyi', 1, 0, ''),
(4, 'wabg', 'xa', 2, 11, 'asasas');

-- --------------------------------------------------------

--
-- 表的结构 `groupeetudiant`
--

CREATE TABLE `groupeetudiant` (
  `idGroupeEtudiant` int(11) NOT NULL,
  `nomGroupe` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `groupeetudiant`
--

INSERT INTO `groupeetudiant` (`idGroupeEtudiant`, `nomGroupe`) VALUES
(1, 'ISN'),
(2, 'BDD');

-- --------------------------------------------------------

--
-- 表的结构 `j_ecole_cours`
--

CREATE TABLE `j_ecole_cours` (
  `idj_ecole_cours` int(11) NOT NULL,
  `idEcole` int(11) NOT NULL,
  `idCours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `j_ecole_enseignant`
--

CREATE TABLE `j_ecole_enseignant` (
  `idj_ecole_enseignant` int(11) NOT NULL,
  `idEcole` int(11) NOT NULL,
  `idEnseignant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `j_ecole_etudiant`
--

CREATE TABLE `j_ecole_etudiant` (
  `idj_ecole_etudiant` int(11) NOT NULL,
  `idEcole` int(11) NOT NULL,
  `idEtudiant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `j_ecole_groupeetudiant`
--

CREATE TABLE `j_ecole_groupeetudiant` (
  `idj_ecole_groupeEtudiant` int(11) NOT NULL,
  `idEcole` int(11) NOT NULL,
  `idGroupeEtudiant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `j_ecole_presence`
--

CREATE TABLE `j_ecole_presence` (
  `idj_ecole_presence` int(11) NOT NULL,
  `idEcole` int(11) NOT NULL,
  `idPresenceEtudiant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `j_ecole_salle`
--

CREATE TABLE `j_ecole_salle` (
  `idj_ecole_salle` int(11) NOT NULL,
  `idEcole` int(11) NOT NULL,
  `idSalle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `presence`
--

CREATE TABLE `presence` (
  `idPresence` int(11) NOT NULL,
  `idEtudiant` int(11) NOT NULL,
  `idCours` int(11) NOT NULL,
  `presenceEtudiant` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `presence`
--

INSERT INTO `presence` (`idPresence`, `idEtudiant`, `idCours`, `presenceEtudiant`) VALUES
(1, 1, 1, NULL),
(2, 2, 2, NULL),
(3, 3, 1, NULL),
(4, 4, 2, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `salle`
--

CREATE TABLE `salle` (
  `idSalle` int(11) NOT NULL,
  `nomSalle` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `salle`
--

INSERT INTO `salle` (`idSalle`, `nomSalle`) VALUES
(1, 'B183'),
(2, 'B192');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`idCours`),
  ADD KEY `idSalle` (`idSalle`),
  ADD KEY `idEnseignant` (`idEnseignant`);

--
-- Indexes for table `ecole`
--
ALTER TABLE `ecole`
  ADD PRIMARY KEY (`idEcole`);

--
-- Indexes for table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`idEnseignant`);

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`idEtudiant`),
  ADD KEY `idGroupeEtudiant` (`idGroupeEtudiant`);

--
-- Indexes for table `groupeetudiant`
--
ALTER TABLE `groupeetudiant`
  ADD PRIMARY KEY (`idGroupeEtudiant`);

--
-- Indexes for table `j_ecole_cours`
--
ALTER TABLE `j_ecole_cours`
  ADD PRIMARY KEY (`idj_ecole_cours`),
  ADD KEY `idEcole` (`idEcole`),
  ADD KEY `idCours` (`idCours`);

--
-- Indexes for table `j_ecole_enseignant`
--
ALTER TABLE `j_ecole_enseignant`
  ADD PRIMARY KEY (`idj_ecole_enseignant`),
  ADD KEY `idEcole` (`idEcole`),
  ADD KEY `idEnseignant` (`idEnseignant`);

--
-- Indexes for table `j_ecole_etudiant`
--
ALTER TABLE `j_ecole_etudiant`
  ADD PRIMARY KEY (`idj_ecole_etudiant`),
  ADD KEY `idEcole` (`idEcole`),
  ADD KEY `idEtudiant` (`idEtudiant`);

--
-- Indexes for table `j_ecole_groupeetudiant`
--
ALTER TABLE `j_ecole_groupeetudiant`
  ADD PRIMARY KEY (`idj_ecole_groupeEtudiant`),
  ADD KEY `idEcole` (`idEcole`),
  ADD KEY `idGroupeEtudiant` (`idGroupeEtudiant`);

--
-- Indexes for table `j_ecole_presence`
--
ALTER TABLE `j_ecole_presence`
  ADD PRIMARY KEY (`idj_ecole_presence`),
  ADD KEY `idEcole` (`idEcole`),
  ADD KEY `idPresenceEtudiant` (`idPresenceEtudiant`);

--
-- Indexes for table `j_ecole_salle`
--
ALTER TABLE `j_ecole_salle`
  ADD PRIMARY KEY (`idj_ecole_salle`),
  ADD KEY `idEcole` (`idEcole`),
  ADD KEY `idSalle` (`idSalle`);

--
-- Indexes for table `presence`
--
ALTER TABLE `presence`
  ADD PRIMARY KEY (`idPresence`),
  ADD KEY `idEtudiant` (`idEtudiant`),
  ADD KEY `idCours` (`idCours`);

--
-- Indexes for table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`idSalle`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cours`
--
ALTER TABLE `cours`
  MODIFY `idCours` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `ecole`
--
ALTER TABLE `ecole`
  MODIFY `idEcole` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `enseignant`
--
ALTER TABLE `enseignant`
  MODIFY `idEnseignant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `idEtudiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `groupeetudiant`
--
ALTER TABLE `groupeetudiant`
  MODIFY `idGroupeEtudiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `j_ecole_cours`
--
ALTER TABLE `j_ecole_cours`
  MODIFY `idj_ecole_cours` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `j_ecole_enseignant`
--
ALTER TABLE `j_ecole_enseignant`
  MODIFY `idj_ecole_enseignant` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `j_ecole_etudiant`
--
ALTER TABLE `j_ecole_etudiant`
  MODIFY `idj_ecole_etudiant` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `j_ecole_groupeetudiant`
--
ALTER TABLE `j_ecole_groupeetudiant`
  MODIFY `idj_ecole_groupeEtudiant` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `j_ecole_presence`
--
ALTER TABLE `j_ecole_presence`
  MODIFY `idj_ecole_presence` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `j_ecole_salle`
--
ALTER TABLE `j_ecole_salle`
  MODIFY `idj_ecole_salle` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `presence`
--
ALTER TABLE `presence`
  MODIFY `idPresence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `salle`
--
ALTER TABLE `salle`
  MODIFY `idSalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 限制导出的表
--

--
-- 限制表 `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `FK_cours-idEnseignant` FOREIGN KEY (`idEnseignant`) REFERENCES `enseignant` (`idEnseignant`),
  ADD CONSTRAINT `FK_cours-idSalle` FOREIGN KEY (`idSalle`) REFERENCES `salle` (`idSalle`);

--
-- 限制表 `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `FK_etudiant-groupeEtudiant` FOREIGN KEY (`idGroupeEtudiant`) REFERENCES `groupeetudiant` (`idGroupeEtudiant`) ON UPDATE CASCADE;

--
-- 限制表 `j_ecole_cours`
--
ALTER TABLE `j_ecole_cours`
  ADD CONSTRAINT `FK_j_ecole-cours` FOREIGN KEY (`idCours`) REFERENCES `cours` (`idCours`),
  ADD CONSTRAINT `FK_j_ecole-ecolecours` FOREIGN KEY (`idEcole`) REFERENCES `ecole` (`idEcole`);

--
-- 限制表 `j_ecole_enseignant`
--
ALTER TABLE `j_ecole_enseignant`
  ADD CONSTRAINT `FK_j_ecole-ecoleenseignant` FOREIGN KEY (`idEcole`) REFERENCES `ecole` (`idEcole`),
  ADD CONSTRAINT `FK_j_ecole-enseignant` FOREIGN KEY (`idEnseignant`) REFERENCES `enseignant` (`idEnseignant`);

--
-- 限制表 `j_ecole_etudiant`
--
ALTER TABLE `j_ecole_etudiant`
  ADD CONSTRAINT `FK_j_ecole-ecoleetudiant` FOREIGN KEY (`idEcole`) REFERENCES `ecole` (`idEcole`),
  ADD CONSTRAINT `FK_j_ecole-etudiant` FOREIGN KEY (`idEtudiant`) REFERENCES `etudiant` (`idEtudiant`);

--
-- 限制表 `j_ecole_groupeetudiant`
--
ALTER TABLE `j_ecole_groupeetudiant`
  ADD CONSTRAINT `FK_j_ecole-ecolegroupeEtudiant` FOREIGN KEY (`idEcole`) REFERENCES `ecole` (`idEcole`),
  ADD CONSTRAINT `FK_j_ecole-groupeEtudiant` FOREIGN KEY (`idGroupeEtudiant`) REFERENCES `groupeetudiant` (`idGroupeEtudiant`);

--
-- 限制表 `j_ecole_presence`
--
ALTER TABLE `j_ecole_presence`
  ADD CONSTRAINT `FK_j_ecole-ecolepresence` FOREIGN KEY (`idEcole`) REFERENCES `ecole` (`idEcole`),
  ADD CONSTRAINT `FK_j_ecole-presence` FOREIGN KEY (`idPresenceEtudiant`) REFERENCES `presence` (`idPresence`);

--
-- 限制表 `j_ecole_salle`
--
ALTER TABLE `j_ecole_salle`
  ADD CONSTRAINT `FK_j_ecole-ecolesalle` FOREIGN KEY (`idEcole`) REFERENCES `ecole` (`idEcole`),
  ADD CONSTRAINT `FK_j_ecole-salle` FOREIGN KEY (`idSalle`) REFERENCES `salle` (`idSalle`);

--
-- 限制表 `presence`
--
ALTER TABLE `presence`
  ADD CONSTRAINT `FK_presence-cours` FOREIGN KEY (`idCours`) REFERENCES `cours` (`idCours`),
  ADD CONSTRAINT `FK_presence-etudiant` FOREIGN KEY (`idEtudiant`) REFERENCES `etudiant` (`idEtudiant`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
