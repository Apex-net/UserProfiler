-- --------------------------------------------------
-- Entity Designer DDL Script for Oracle database
-- --------------------------------------------------
-- Date Created: 01/07/2015 11.39.12
-- Generated from EDMX file: C:\work\UserProfiler\Sviluppo\dev\UserProfiler.Model\UserProfiler.edmx
-- --------------------------------------------------

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

-- ALTER TABLE "V_ESSE3_UTENTI" DROP CONSTRAINT "FK_UtenteV_ESSE3_UTENTI" CASCADE;

-- ALTER TABLE "V_ESSE3_UTENTI" DROP CONSTRAINT "FK_V_ESSE3_GRP_UTE_V_ESSE3_UTE" CASCADE;

-- ALTER TABLE "UPR_RUOLI" DROP CONSTRAINT "FK_ApplicativoRuolo" CASCADE;

-- ALTER TABLE "UPR_RUOLI_UTE_FORCED" DROP CONSTRAINT "FK_UtenteRuoloUteForced" CASCADE;

-- ALTER TABLE "UPR_RUOLI_UTE_FORCED" DROP CONSTRAINT "FK_RuoloRuoloUteForced" CASCADE;

-- ALTER TABLE "UPR_RUOLI_GRP_UTE" DROP CONSTRAINT "FK_RuoloRuoloGruppoUtente" CASCADE;

-- ALTER TABLE "UPR_RUOLI_GRP_UTE" DROP CONSTRAINT "FK_V_ESSE3_GRUPPI_UTENTERuoloGruppoUtente" CASCADE;
-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

-- DROP TABLE "UPR_APPLICATIVI";

-- DROP TABLE "V_UTENTI";

-- DROP TABLE "V_ESSE3_UTENTI";

-- DROP TABLE "V_ESSE3_GRUPPI_UTENTE";

-- DROP TABLE "UPR_RUOLI";

-- DROP TABLE "UPR_RUOLI_UTE_FORCED";

-- DROP TABLE "UPR_RUOLI_GRP_UTE";

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
   "UserId" NUMBER(10) NOT NULL,
   "Nome" NVARCHAR2 (50) NOT NULL,
   "Cognome" NVARCHAR2 (50) NOT NULL,
   "CodiceFiscale" NVARCHAR2 (16) ,
   "Password" NVARCHAR2 (50) ,
   "Email" NVARCHAR2 (255) NOT NULL
);

-- Creating table 'V_ESSE3_UTENTI'
CREATE TABLE "USER_PROFILER"."V_ESSE3_UTENTI" (
   "UserId" NUMBER(10) NOT NULL,
   "GRP_ID" NUMBER(5) NOT NULL,
   "COGNOME" VARCHAR2 (80 CHAR) ,
   "NOME" VARCHAR2 (80 CHAR) ,
   "COD_FIS" VARCHAR2 (16 CHAR) ,
   "EMAIL" VARCHAR2 (255 CHAR) ,
   "EMAIL_ATE" VARCHAR2 (255 CHAR) ,
   "PERS_ID" NUMBER(10) ,
   "SOGG_EST_ID" NUMBER(10) ,
   "DOCENTE_ID" NUMBER(10) 
);

-- Creating table 'V_ESSE3_GRUPPI_UTENTE'
CREATE TABLE "USER_PROFILER"."V_ESSE3_GRUPPI_UTENTE" (
   "GRP_ID" NUMBER(5) NOT NULL,
   "GRP_NAME" VARCHAR2 (20 CHAR) ,
   "AUTH_PWD_MASTER_LOCATION" NUMBER(5) NOT NULL
);

-- Creating table 'UPR_RUOLI'
CREATE TABLE "USER_PROFILER"."UPR_RUOLI" (
   "RuoloId" NUMBER(10) NOT NULL,
   "ApplicativoId" NUMBER(10) NOT NULL,
   "Codice" NVARCHAR2 (10) NOT NULL,
   "Descrizione" NVARCHAR2 (255) NOT NULL
);

-- Creating table 'UPR_RUOLI_UTE_FORCED'
CREATE TABLE "USER_PROFILER"."UPR_RUOLI_UTE_FORCED" (
   "UserId" NUMBER(10) NOT NULL,
   "RuoloId" NUMBER(10) NOT NULL,
   "ApplicativoId" NUMBER(10) NOT NULL
);

-- Creating table 'UPR_RUOLI_GRP_UTE'
CREATE TABLE "USER_PROFILER"."UPR_RUOLI_GRP_UTE" (
   "RuoloId" NUMBER(10) NOT NULL,
   "ApplicativoId" NUMBER(10) NOT NULL,
   "GRP_ID" NUMBER(5) NOT NULL
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


-- Creating primary key on "UserId"in table 'V_UTENTI'
ALTER TABLE "USER_PROFILER"."V_UTENTI"
ADD CONSTRAINT "PK_V_UTENTI"
   PRIMARY KEY ("UserId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "UserId"in table 'V_ESSE3_UTENTI'
ALTER TABLE "USER_PROFILER"."V_ESSE3_UTENTI"
ADD CONSTRAINT "PK_V_ESSE3_UTENTI"
   PRIMARY KEY ("UserId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "GRP_ID"in table 'V_ESSE3_GRUPPI_UTENTE'
ALTER TABLE "USER_PROFILER"."V_ESSE3_GRUPPI_UTENTE"
ADD CONSTRAINT "PK_V_ESSE3_GRUPPI_UTENTE"
   PRIMARY KEY ("GRP_ID" )
   ENABLE
   VALIDATE;


-- Creating primary key on "RuoloId", "ApplicativoId"in table 'UPR_RUOLI'
ALTER TABLE "USER_PROFILER"."UPR_RUOLI"
ADD CONSTRAINT "PK_UPR_RUOLI"
   PRIMARY KEY ("RuoloId", "ApplicativoId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "UserId", "ApplicativoId", "RuoloId"in table 'UPR_RUOLI_UTE_FORCED'
ALTER TABLE "USER_PROFILER"."UPR_RUOLI_UTE_FORCED"
ADD CONSTRAINT "PK_UPR_RUOLI_UTE_FORCED"
   PRIMARY KEY ("UserId", "ApplicativoId", "RuoloId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "RuoloId", "ApplicativoId", "GRP_ID"in table 'UPR_RUOLI_GRP_UTE'
ALTER TABLE "USER_PROFILER"."UPR_RUOLI_GRP_UTE"
ADD CONSTRAINT "PK_UPR_RUOLI_GRP_UTE"
   PRIMARY KEY ("RuoloId", "ApplicativoId", "GRP_ID" )
   ENABLE
   VALIDATE;


-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on "UserId" in table 'V_ESSE3_UTENTI'
ALTER TABLE "USER_PROFILER"."V_ESSE3_UTENTI"
ADD CONSTRAINT "FK_UtenteV_ESSE3_UTENTI"
   FOREIGN KEY ("UserId")
   REFERENCES "USER_PROFILER"."V_UTENTI"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating foreign key on "GRP_ID" in table 'V_ESSE3_UTENTI'
ALTER TABLE "USER_PROFILER"."V_ESSE3_UTENTI"
ADD CONSTRAINT "FK_V_ESSE3_GRP_UTE_V_ESSE3_UTE"
   FOREIGN KEY ("GRP_ID")
   REFERENCES "USER_PROFILER"."V_ESSE3_GRUPPI_UTENTE"
       ("GRP_ID")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_V_ESSE3_GRP_UTE_V_ESSE3_UTE'
CREATE INDEX "IX_FK_V_ESSE3_GRP_UTE_V_ESSE3_UTE"
ON "USER_PROFILER"."V_ESSE3_UTENTI"
   ("GRP_ID");

-- Creating foreign key on "ApplicativoId" in table 'UPR_RUOLI'
ALTER TABLE "USER_PROFILER"."UPR_RUOLI"
ADD CONSTRAINT "FK_ApplicativoRuolo"
   FOREIGN KEY ("ApplicativoId")
   REFERENCES "USER_PROFILER"."UPR_APPLICATIVI"
       ("Id")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ApplicativoRuolo'
CREATE INDEX "IX_FK_ApplicativoRuolo"
ON "USER_PROFILER"."UPR_RUOLI"
   ("ApplicativoId");

-- Creating foreign key on "UserId" in table 'UPR_RUOLI_UTE_FORCED'
ALTER TABLE "USER_PROFILER"."UPR_RUOLI_UTE_FORCED"
ADD CONSTRAINT "FK_UtenteRuoloUteForced"
   FOREIGN KEY ("UserId")
   REFERENCES "USER_PROFILER"."V_UTENTI"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_UtenteRuoloUteForced'
CREATE INDEX "IX_FK_UtenteRuoloUteForced"
ON "USER_PROFILER"."UPR_RUOLI_UTE_FORCED"
   ("UserId");

-- Creating foreign key on "RuoloId", "ApplicativoId" in table 'UPR_RUOLI_UTE_FORCED'
ALTER TABLE "USER_PROFILER"."UPR_RUOLI_UTE_FORCED"
ADD CONSTRAINT "FK_RuoloRuoloUteForced"
   FOREIGN KEY ("RuoloId", "ApplicativoId")
   REFERENCES "USER_PROFILER"."UPR_RUOLI"
       ("RuoloId", "ApplicativoId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_RuoloRuoloUteForced'
CREATE INDEX "IX_FK_RuoloRuoloUteForced"
ON "USER_PROFILER"."UPR_RUOLI_UTE_FORCED"
   ("RuoloId", "ApplicativoId");

-- Creating foreign key on "RuoloId", "ApplicativoId" in table 'UPR_RUOLI_GRP_UTE'
ALTER TABLE "USER_PROFILER"."UPR_RUOLI_GRP_UTE"
ADD CONSTRAINT "FK_RuoloRuoloGrpUtente"
   FOREIGN KEY ("RuoloId", "ApplicativoId")
   REFERENCES "USER_PROFILER"."UPR_RUOLI"
       ("RuoloId", "ApplicativoId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_RuoloRuoloGrpUtente'
CREATE INDEX "IX_FK_RuoloRuoloGrpUtente"
ON "USER_PROFILER"."UPR_RUOLI_GRP_UTE"
   ("RuoloId", "ApplicativoId");

-- Creating foreign key on "GRP_ID" in table 'UPR_RUOLI_GRP_UTE'
ALTER TABLE "USER_PROFILER"."UPR_RUOLI_GRP_UTE"
ADD CONSTRAINT "FK_V_ESSE3_GRP_UTE_Ruolo"
   FOREIGN KEY ("GRP_ID")
   REFERENCES "USER_PROFILER"."V_ESSE3_GRUPPI_UTENTE"
       ("GRP_ID")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_V_ESSE3_GRP_UTE_Ruolo'
CREATE INDEX "IX_FK_V_ESSE3_GRP_UTE_Ruolo"
ON "USER_PROFILER"."UPR_RUOLI_GRP_UTE"
   ("GRP_ID");

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
