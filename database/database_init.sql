CREATE TABLE "KeepTradeCutRanking" (
    "Id" varchar(10) NOT NULL PRIMARY KEY,
    "FirstName" varchar(50),
    "LastName" varchar(50),
    "Position" varchar(10),
    "RankingOneQB" integer,
    "RankingTwoQB" integer,
    "Resource" json,
    "UpdatedAt" timestamp
);

CREATE INDEX "KeepTradeCutRanking_IND1" ON "KeepTradeCutRanking" ("FirstName", "LastName");

CREATE INDEX "KeepTradeCutRanking_IND2" ON "KeepTradeCutRanking" ("RankingOneQB", "RankingTwoQB");


CREATE TABLE "SleeperRankings" (
    "Id"                 varchar(50) not null PRIMARY KEY,
    "FirstName"          varchar(50),
    "LastName"           varchar(50),
    "Position"           varchar(10),
    "ADP2QB"             numeric,
    "ADPDynasty"         numeric,
    "ADPDynasty2QB"      numeric,
    "ADPDynastyHalfPPR"  numeric,
    "ADPDynastyPPR"      numeric,
    "ADPDynastyStandard" numeric,
    "ADPHalfPPR"         numeric,
    "ADPFullPPR"         numeric,
    "ADPRookie"          numeric,
    "ADPStandard"        numeric,
    "Resource"           json,
    "UpdatedAt"          timestamp
);

CREATE INDEX "SleeperRanking_IND1" ON "SleeperRankings" ("FirstName", "LastName");


CREATE TABLE "DynastyDaddyMarketRankings" (
    "NameId" varchar(50) not null,
    "Market" varchar(50) not null,
    "OverallRank" integer,
    "SFOverallRank" integer,
    "Resource" json,
    "UpdatedAt" timestamp,
    CONSTRAINT "DynastyDaddyMarketRankings_PK" primary key ("NameId", "Market")
);

CREATE TABLE "DynastyDaddyPlayerData" (
    "NameId"        varchar(50) not null primary key,
    "SleeperId"     varchar(50) not null,
    "FirstName"          varchar(50),
    "LastName"           varchar(50),
    "Position"           varchar(10),
    "Resource"  json,
    "UpdatedAt" timestamp
);

CREATE TABLE "FantasyCalcMarketRankings" (
    "SleeperId" varchar(50) not null,
    "IsDynasty" bool not null,
    "Resource"  json,
    "UpdatedAt" timestamp,
    CONSTRAINT "FantasyCalcMarketRankings_PK" primary key ("SleeperId", "IsDynasty")
);

CREATE INDEX "FantasyCalcMarketRankings_IND1" ON "FantasyCalcMarketRankings" ("IsDynasty");