-- --------------------------------------------------
-- Entity Designer DDL Script for Oracle database
-- --------------------------------------------------
-- Date Created: 23/06/2015 17.50.27
-- Generated from EDMX file: C:\work\UserProfiler\Sviluppo\dev\UserProfiler.Model\UserProfiler.edmx
-- --------------------------------------------------

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------
-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'UPR_APPLICATIVI'
CREATE TABLE "USER_PROFILER"."UPR_APPLICATIVI" (
   "Id" NUMBER(10) NOT NULL,
   "Codice" NVARCHAR2 (10) NOT NULL,
   "Descrizione" NVARCHAR2 (255) NOT NULL
);

-- Creating table 'V_UTENTI'
CREATE TABLE "USER_PROFILER"."V_UTENTI" (
   "Id" NUMBER(10) NOT NULL,
   "Nome" NVARCHAR2 (50) NOT NULL,
   "Cognome" NVARCHAR2 (50) NOT NULL,
   "CodiceFiscale" NVARCHAR2 (16) ,
   "Password" NVARCHAR2 (50) ,
   "Email" NVARCHAR2 (255) NOT NULL
);


-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on "Id"in table 'UPR_APPLICATIVI'
ALTER TABLE "USER_PROFILER"."UPR_APPLICATIVI"
ADD CONSTRAINT "PK_UPR_APPLICATIVI"
   PRIMARY KEY ("Id" )
   ENABLE
   VALIDATE;


-- Creating primary key on "Id"in table 'V_UTENTI'
ALTER TABLE "USER_PROFILER"."V_UTENTI"
ADD CONSTRAINT "PK_V_UTENTI"
   PRIMARY KEY ("Id" )
   ENABLE
   VALIDATE;


-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
