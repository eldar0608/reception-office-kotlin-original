
/****** Object:  Table  [ EnrolleeParents]    Script Date: 28.05.2019 17:05:45 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE SEQUENCE  EnrolleeParents_seq;

CREATE TABLE  EnrolleeParents(
  id int DEFAULT NEXTVAL (' EnrolleeParents_seq') NOT NULL PRIMARY KEY,
  enrollee_id int NULL,
  fio_mother varchar(100) NULL,
  place_work_mother varchar(100) NULL,
  position_mother varchar(100) NULL,
  mail_mother varchar(70) NULL,
  mobile_number_mother varchar(12) NULL,
  lived_address_mother varchar(250) NULL,
  fio_father varchar(100) NULL,
  place_work_father varchar(100) NULL,
  position_father varchar(100) NULL,
  mail_father varchar(70) NULL,
  mobile_number_father varchar(12) NULL,
  country_id int NULL,
  region_id int NULL,
  rayon_id int NULL,
  city_id int NULL,
  village varchar(250) NULL,
  address varchar(250) NULL,
  phone_number varchar(12) NULL
  -- 	CONSTRAINT PK_enrollee_parents PRIMARY KEY
  -- 		(
  -- 			id
  -- 		)
);
/****** Object:  Table  [AcademicSubject]    Script Date: 28.05.2019 17:05:45 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE SEQUENCE AcademicSubject_seq;

CREATE TABLE AcademicSubject(
  id int DEFAULT NEXTVAL ('AcademicSubject_seq') NOT NULL PRIMARY KEY,
  name varchar(50) NULL
  -- 	CONSTRAINT PK_AcademicSubject PRIMARY KEY
  -- 		(
  -- 			id
  -- 		)
);
/****** Object:  Table  [ApplicantProgress]    Script Date: 28.05.2019 17:05:45 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE SEQUENCE ApplicantProgress_seq;

CREATE TABLE ApplicantProgress(
  id int DEFAULT NEXTVAL ('ApplicantProgress_seq') NOT NULL PRIMARY KEY,
  enrollee_id int NULL,
  isRecommend Boolean NULL,
  protocol varchar(50) NULL,
  recommend_date date NULL,
  isPaid Boolean NULL,
  isConfirm Boolean NULL,
  confirm_date date NULL,
  isCredited Boolean NULL,
  order_v varchar(50) NULL,
  order_date date NULL,
  number_protocol varchar(50) NULL,
  protocol_date date NULL
  -- 	CONSTRAINT PK_ApplicantProgress PRIMARY KEY
  -- 		(
  -- 			 id
  -- 		)
);
/****** Object:  Table  [Citizenship]    Script Date: 28.05.2019 17:05:45 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE SEQUENCE Citizenship_seq;

CREATE TABLE Citizenship(
  id int DEFAULT NEXTVAL ('Citizenship_seq') NOT NULL PRIMARY KEY,
  name varchar(250) NOT NULL UNIQUE
  -- 	CONSTRAINT pk_Citizenship PRIMARY KEY
  -- 		(
  -- 			 id
  -- 		) ,
  -- 	CONSTRAINT uc_Citizenship_name UNIQUE
  -- 		(
  -- 			name
  -- 		)
);
/****** Object:  Table  [City]    Script Date: 28.05.2019 17:05:45 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE SEQUENCE City_seq;

CREATE TABLE City(
  id int DEFAULT NEXTVAL ('City_seq') NOT NULL PRIMARY KEY,
  name varchar(50) NULL
  -- 	CONSTRAINT PK_City PRIMARY KEY
  -- 		(
  -- 			 id
  -- 		)
);
/****** Object:  Table  [Country]    Script Date: 28.05.2019 17:05:45 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE SEQUENCE Country_seq;

CREATE TABLE Country(
  id int DEFAULT NEXTVAL ('Country_seq') NOT NULL PRIMARY KEY,
  name varchar(50) NULL
  -- 	CONSTRAINT PK_Country PRIMARY KEY
  -- 		(
  -- 			 id
  -- 		)
);
/****** Object:  Table  [Education]    Script Date: 28.05.2019 17:05:46 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE SEQUENCE Education_seq;

CREATE TABLE Education(
  id int DEFAULT NEXTVAL ('Education_seq') NOT NULL PRIMARY KEY,
  enrollee_id int NULL,
  is_original Boolean NULL,
  is_finished_fine Boolean NULL,
  is_gold_medal Boolean NULL,
  is_olympic_medalist Boolean NULL,
  certificate_or_diploma Boolean NULL,
  seria_certificate varchar(50) NULL,
  number_certificate varchar(50) NULL,
  date_of_issue date NULL,
  learn_language_school varchar(20) NULL,
  foreign_language_school varchar(20) NULL,
  kind_sport varchar(50) NULL,
  is_out_competition Boolean NULL,
  number_document varchar(50) NULL,
  country_id int NULL,
  region_id int NULL,
  rayon_id int NULL,
  village varchar(250) NULL,
  city_id int NULL,
  type_school varchar(50) NULL,
  name_school varchar(250) NULL
  -- 	CONSTRAINT PK_Education PRIMARY KEY
  -- 		(
  -- 			 id
  -- 		)
);
/****** Object:  Table  [EnrolleeInfo]    Script Date: 28.05.2019 17:05:46 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE SEQUENCE EnrolleeInfo_seq;

CREATE TABLE EnrolleeInfo(
  id int DEFAULT NEXTVAL ('EnrolleeInfo_seq') NOT NULL PRIMARY KEY,
  name varchar(250) NOT NULL,
  surname varchar(250) NOT NULL,
  patroname varchar(250) NOT NULL,
  birthdate date NOT NULL,
  male_id int NOT NULL,
  socstatus_id int NOT NULL,
  inn int NOT NULL,
  passport_seria varchar(2) NOT NULL,
  passport_number varchar(9) NOT NULL,
  date_of_issue date NOT NULL,
  ethnic Boolean NOT NULL,
  nationality_id int NOT NULL,
  citizenship_id int NOT NULL,
  familyStatus_id int NOT NULL,
  email varchar(250) NOT NULL,
  isStudiedBack Boolean NOT NULL
  -- 	CONSTRAINT pk_EnrolleeInfo PRIMARY KEY
  -- 		(
  -- 			 id
  -- 		)
);
/****** Object:  Table  [Facility]    Script Date: 28.05.2019 17:05:46 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE SEQUENCE Facility_seq;

CREATE TABLE Facility(
  id int DEFAULT NEXTVAL ('Facility_seq') NOT NULL PRIMARY KEY,
  code Char(20) NULL,
  name Char(100) NULL
  -- 	CONSTRAINT PK_Facility PRIMARY KEY
  -- 		(
  -- 			 id
  -- 		)
);
/****** Object:  Table  [FamilyStatus]    Script Date: 28.05.2019 17:05:46 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE SEQUENCE FamilyStatus_seq;

CREATE TABLE FamilyStatus(
  id int DEFAULT NEXTVAL ('FamilyStatus_seq') NOT NULL PRIMARY KEY,
  name varchar(250) NOT NULL UNIQUE
  -- 	CONSTRAINT pk_FamilyStatus PRIMARY KEY
  -- 		(
  -- 			 id
  -- 		) ,
  -- 	CONSTRAINT uc_FamilyStatus_name UNIQUE
  -- 		(
  -- 			name
  -- 		)
);
/****** Object:  Table  [Male]    Script Date: 28.05.2019 17:05:46 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE SEQUENCE Male_seq;

CREATE TABLE Male(
  id int DEFAULT NEXTVAL ('Male_seq') NOT NULL PRIMARY KEY,
  name varchar(250) NOT NULL
  -- 	CONSTRAINT pk_Male PRIMARY KEY
  -- 		(
  -- 			 id
  -- 		)
);
/****** Object:  Table  [MilitaryService]    Script Date: 28.05.2019 17:05:46 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE SEQUENCE MilitaryService_seq;

CREATE TABLE MilitaryService(
  id int DEFAULT NEXTVAL ('MilitaryService_seq') NOT NULL PRIMARY KEY,
  enrollee_id int NULL,
  Document int NULL,
  seria varchar(50) NULL,
  name varchar(250) NULL,
  military_reg_date date NULL,
  is_fit Boolean NULL,
  is_special_reg Boolean NULL,
  number_special_reg Char(50) NULL,
  is_fired Boolean NULL,
  Rank varchar(50) NULL,
  military_specialty varchar(50) NULL,
  number_military_specialty varchar(50) NULL
  -- 	CONSTRAINT PK_MilitaryService PRIMARY KEY
  -- 		(
  -- 			 id
  -- 		)
);
/****** Object:  Table  [Nationality]    Script Date: 28.05.2019 17:05:46 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE SEQUENCE Nationality_seq;

CREATE TABLE Nationality(
  id int DEFAULT NEXTVAL ('Nationality_seq') NOT NULL PRIMARY KEY,
  name varchar(250) NOT NULL UNIQUE
  -- 	CONSTRAINT pk_Nationality PRIMARY KEY
  -- 		(
  -- 			 id
  -- 		) ,
  -- 	CONSTRAINT uc_Nationality_name UNIQUE
  -- 		(
  -- 			name
  -- 		)
);
/****** Object:  Table  [ORT]    Script Date: 28.05.2019 17:05:46 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE SEQUENCE ORT_seq;

CREATE TABLE ORT(
  id int DEFAULT NEXTVAL ('ORT_seq') NOT NULL PRIMARY KEY,
  enrollee_id int NULL,
  isORT Boolean NULL,
  number_certificate varchar(50) NULL,
  color_certificate int NULL,
  primaryScore int NULL,
  biologyScore int NULL,
  chemistryScore int NULL,
  englishScore int NULL,
  historyScore int NULL,
  physicsScore int NULL,
  mathsScore int NULL
  -- 	CONSTRAINT PK_ORT PRIMARY KEY
  -- 		(
  -- 			 id
  -- 		)
);
/****** Object:  Table  [Rayon]    Script Date: 28.05.2019 17:05:46 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE SEQUENCE Rayon_seq;

CREATE TABLE Rayon(
  id int DEFAULT NEXTVAL ('Rayon_seq') NOT NULL PRIMARY KEY,
  name varchar(50) NULL
  -- 	CONSTRAINT PK_Rayon PRIMARY KEY
  -- 		(
  -- 			 id
  -- 		)
);
/****** Object:  Table  [Region]    Script Date: 28.05.2019 17:05:46 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE SEQUENCE Region_seq;

CREATE TABLE Region(
  id int DEFAULT NEXTVAL ('Region_seq') NOT NULL PRIMARY KEY,
  name varchar(50) NULL
  -- 	CONSTRAINT PK_Region PRIMARY KEY
  -- 		(
  -- 			 id
  -- 		)
);
/****** Object:  Table  [Role]    Script Date: 28.05.2019 17:05:46 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE SEQUENCE Role_seq;

CREATE TABLE Role(
  id int DEFAULT NEXTVAL ('Role_seq') NOT NULL PRIMARY KEY,
  name varchar(250) NOT NULL UNIQUE
  -- 	CONSTRAINT pk_Role PRIMARY KEY
  -- 		(
  -- 			 id
  -- 		) ,
  -- 	CONSTRAINT uc_Role_name UNIQUE
  -- 		(
  -- 			name
  -- 		)
);
/****** Object:  Table  [SelectedSpecialty]    Script Date: 28.05.2019 17:05:46 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE SelectedSpecialty(
  id int NOT NULL PRIMARY KEY,
  enrollee_id int NULL,
  specialty_id int NULL,
  registration_date date NULL,
  isRecommended Boolean NULL
  -- 	CONSTRAINT PK_SelectedSpecialty PRIMARY KEY
  -- 		(
  -- 			 id
  -- 		)
);
/****** Object:  Table  [SocStatus]    Script Date: 28.05.2019 17:05:46 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE SEQUENCE SocStatus_seq;

CREATE TABLE SocStatus(
  id int DEFAULT NEXTVAL ('SocStatus_seq') NOT NULL PRIMARY KEY,
  name varchar(250) NOT NULL UNIQUE
  -- 	CONSTRAINT pk_SocStatus PRIMARY KEY
  -- 		(
  -- 			 id
  -- 		) ,
  -- 	CONSTRAINT uc_SocStatus_name UNIQUE
  -- 		(
  -- 			name
  -- 		)
);
/****** Object:  Table  [Speciality]    Script Date: 28.05.2019 17:05:46 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE SEQUENCE Speciality_seq;

CREATE TABLE Speciality(
  id int DEFAULT NEXTVAL ('Speciality_seq') NOT NULL PRIMARY KEY,
  name Char(100) NULL,
  code Char(20) NULL,
  facility_id int NULL
  -- 	CONSTRAINT PK_speciality PRIMARY KEY
  -- 		(
  -- 			id
  -- 		)
);
/****** Object:  Table  [Testing]    Script Date: 28.05.2019 17:05:46 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE SEQUENCE Testing_seq;

CREATE TABLE Testing(
  id int DEFAULT NEXTVAL ('Testing_seq') NOT NULL PRIMARY KEY,
  enrollee_id Char(10) NULL,
  subject_id int NULL,
  result int NULL,
  corps varchar(50) NULL,
  auditory varchar(10) NULL
  -- 	CONSTRAINT PK_Testing PRIMARY KEY
  -- 		(
  -- 			id
  -- 		)
);
/****** Object:  Table  [Users]    Script Date: 28.05.2019 17:05:46 ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE SEQUENCE Users_seq;

CREATE TABLE Users(
  id int DEFAULT NEXTVAL ('Users_seq') NOT NULL PRIMARY KEY,
  name varchar(250) NOT NULL,
  surname varchar(250) NOT NULL,
  patroname varchar(250) NOT NULL,
  email varchar(250) NOT NULL,
  password varchar(250) NOT NULL,
  role_id int NOT NULL
  -- 	CONSTRAINT pk_Users PRIMARY KEY
  -- 		(
  -- 			 id
  -- 		)
);
-- ALTER TABLE EnrolleeParents  WITH CHECK ADD  CONSTRAINT FK_EnrolleeParents_City FOREIGN KEY(city_id)
-- REFERENCES [City] (id)

-- GO
-- ALTER TABLE EnrolleeParents CHECK CONSTRAINT FK_EnrolleeParents_City

-- GO
-- ALTER TABLE EnrolleeParents  WITH CHECK ADD  CONSTRAINT FK_EnrolleeParents_Country FOREIGN KEY(country_id)
-- REFERENCES [Country] (id)
-- GO
-- ALTER TABLE EnrolleeParents CHECK CONSTRAINT FK_EnrolleeParents_Country
-- GO
-- ALTER TABLE EnrolleeParents  WITH CHECK ADD  CONSTRAINT FK_EnrolleeParents_Rayon FOREIGN KEY(rayon_id)
-- REFERENCES [Rayon] (id)
-- GO
-- ALTER TABLE EnrolleeParents CHECK CONSTRAINT FK_EnrolleeParents_Rayon
-- GO
-- ALTER TABLE EnrolleeParents  WITH CHECK ADD  CONSTRAINT FK_EnrolleeParents_Region FOREIGN KEY(region_id)
-- REFERENCES [Region] (id)
-- GO
-- ALTER TABLE  EnrolleeParents CHECK CONSTRAINT FK_EnrolleeParents_Region
-- GO
-- ALTER TABLE  EnrolleeParents  WITH CHECK ADD  CONSTRAINT FK_EnrolleeParents_EnrolleeInfo FOREIGN KEY(enrollee_id)
-- REFERENCES  [EnrolleeInfo] (id)
-- GO
-- ALTER TABLE  EnrolleeParents CHECK CONSTRAINT FK_EnrolleeParents_EnrolleeInfo
-- GO
-- ALTER TABLE Education  WITH CHECK ADD  CONSTRAINT FK_Education_City FOREIGN KEY(city_id)
-- REFERENCES  [City] (id)
-- GO
-- ALTER TABLE Education CHECK CONSTRAINT FK_Education_City
-- GO
-- ALTER TABLE Education  WITH CHECK ADD  CONSTRAINT FK_Education_Country FOREIGN KEY(country_id)
-- REFERENCES  [Country] (id)
-- GO
-- ALTER TABLE Education CHECK CONSTRAINT FK_Education_Country
-- GO
-- ALTER TABLE Education  WITH CHECK ADD  CONSTRAINT FK_Education_EnrolleeInfo FOREIGN KEY(enrollee_id)
-- REFERENCES  [EnrolleeInfo] (id)
-- GO
-- ALTER TABLE Education CHECK CONSTRAINT FK_Education_EnrolleeInfo
-- GO
-- ALTER TABLE Education  WITH CHECK ADD  CONSTRAINT FK_Education_Rayon FOREIGN KEY(rayon_id)
-- REFERENCES  [Rayon] (id)
-- GO
-- ALTER TABLE Education CHECK CONSTRAINT FK_Education_Rayon
-- GO
-- ALTER TABLE Education  WITH CHECK ADD  CONSTRAINT FK_Education_Region FOREIGN KEY(region_id)
-- REFERENCES  [Region] (id)
-- GO
-- ALTER TABLE Education CHECK CONSTRAINT FK_Education_Region
-- GO
-- ALTER TABLE EnrolleeInfo  WITH CHECK ADD  CONSTRAINT fk_EnrolleeInfo_citizenship_id FOREIGN KEY(citizenship_id)
-- REFERENCES  [Citizenship] (id)
-- GO
-- ALTER TABLE EnrolleeInfo CHECK CONSTRAINT fk_EnrolleeInfo_citizenship_id
-- GO
-- ALTER TABLE EnrolleeInfo  WITH CHECK ADD  CONSTRAINT fk_EnrolleeInfo_familyStatus_id FOREIGN KEY(familyStatus_id)
-- REFERENCES  [FamilyStatus] (id)
-- GO
-- ALTER TABLE EnrolleeInfo CHECK CONSTRAINT fk_EnrolleeInfo_familyStatus_id
-- GO
-- ALTER TABLE EnrolleeInfo  WITH CHECK ADD  CONSTRAINT fk_EnrolleeInfo_male_id FOREIGN KEY(male_id)
-- REFERENCES  [Male] (id)
-- GO
-- ALTER TABLE EnrolleeInfo CHECK CONSTRAINT fk_EnrolleeInfo_male_id
-- GO
-- ALTER TABLE EnrolleeInfo  WITH CHECK ADD  CONSTRAINT fk_EnrolleeInfo_nationality_id FOREIGN KEY(nationality_id)
-- REFERENCES  [Nationality] (id)
-- GO
-- ALTER TABLE EnrolleeInfo CHECK CONSTRAINT fk_EnrolleeInfo_nationality_id
-- GO
-- ALTER TABLE EnrolleeInfo  WITH CHECK ADD  CONSTRAINT fk_EnrolleeInfo_socstatus_id FOREIGN KEY(socstatus_id)
-- REFERENCES  [SocStatus] (id)
-- GO
-- ALTER TABLE EnrolleeInfo CHECK CONSTRAINT fk_EnrolleeInfo_socstatus_id
-- GO
-- ALTER TABLE MilitaryService  WITH CHECK ADD  CONSTRAINT FK_MilitaryService_EnrolleeInfo FOREIGN KEY(enrollee_id)
-- REFERENCES  [EnrolleeInfo] (id)
-- GO
-- ALTER TABLE MilitaryService CHECK CONSTRAINT FK_MilitaryService_EnrolleeInfo
-- GO
-- ALTER TABLE ORT  WITH CHECK ADD  CONSTRAINT FK_ORT_EnrolleeInfo FOREIGN KEY(enrollee_id)
-- REFERENCES  [EnrolleeInfo] (id)
-- GO
-- ALTER TABLE ORT CHECK CONSTRAINT FK_ORT_EnrolleeInfo
-- GO
-- ALTER TABLE SelectedSpecialty  WITH CHECK ADD  CONSTRAINT FK_SelectedSpecialty_EnrolleeInfo FOREIGN KEY(id)
-- REFERENCES  [EnrolleeInfo] (id)
-- GO
-- ALTER TABLE SelectedSpecialty CHECK CONSTRAINT FK_SelectedSpecialty_EnrolleeInfo
-- GO
-- ALTER TABLE SelectedSpecialty  WITH CHECK ADD  CONSTRAINT FK_SelectedSpecialty_Speciality FOREIGN KEY(specialty_id)
-- REFERENCES  [Speciality] (id)
-- GO
-- ALTER TABLE SelectedSpecialty CHECK CONSTRAINT FK_SelectedSpecialty_Speciality
-- GO
-- ALTER TABLE Speciality  WITH CHECK ADD  CONSTRAINT FK_Speciality_Facility FOREIGN KEY(facility_id)
-- REFERENCES  [Facility] (id)
-- GO
-- ALTER TABLE Speciality CHECK CONSTRAINT FK_Speciality_Facility
-- GO
-- ALTER TABLE Testing  WITH CHECK ADD  CONSTRAINT FK_Testing_AcademicSubject FOREIGN KEY(subject_id)
-- REFERENCES  [AcademicSubject] (id)
-- GO
-- ALTER TABLE Testing CHECK CONSTRAINT FK_Testing_AcademicSubject
-- GO
-- ALTER TABLE Users  WITH CHECK ADD  CONSTRAINT fk_Users_role_id FOREIGN KEY(role_id)
-- REFERENCES  [Role] (id)
-- GO
-- ALTER TABLE Users CHECK CONSTRAINT fk_Users_role_id
-- GO
--
--
