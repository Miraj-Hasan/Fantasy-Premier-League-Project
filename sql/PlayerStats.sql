/*
 Navicat Premium Data Transfer

 Source Server         : FPL_PROJECT
 Source Server Type    : Oracle
 Source Server Version : 190000 (Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production)
 Source Host           : 0.0.0.0:1521
 Source Schema         : FPL_PROJECT

 Target Server Type    : Oracle
 Target Server Version : 190000 (Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production)
 File Encoding         : 65001

 Date: 17/08/2023 02:00:36
*/


-- ----------------------------
-- Table structure for PlayerStats
-- ----------------------------
DROP TABLE "FPL_PROJECT"."PlayerStats";
CREATE TABLE "FPL_PROJECT"."PlayerStats" (
  "Points" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "PlayerId" NUMBER VISIBLE NOT NULL,
  "GameWeekId" NUMBER VISIBLE NOT NULL,
  "minutesPlayed" NUMBER(3,0) VISIBLE DEFAULT 0 NOT NULL,
  "CleanSheet" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "Goals" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "PenaltySaved" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "PenaltyMissed" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "OwnGoal" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "Assists" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "YellowCard" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "RedCard" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "SelectedBy" NUMBER(10,0) VISIBLE DEFAULT 0 NOT NULL,
  "ShotsTaken" NUMBER(3,0) VISIBLE DEFAULT 0 NOT NULL,
  "ChancesCreated" NUMBER(3,0) VISIBLE DEFAULT 0 NOT NULL,
  "Saves" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PlayerStats
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table PlayerStats
-- ----------------------------
ALTER TABLE "FPL_PROJECT"."PlayerStats" ADD CONSTRAINT "SYS_C008706" PRIMARY KEY ("PlayerId", "GameWeekId");

-- ----------------------------
-- Checks structure for table PlayerStats
-- ----------------------------
ALTER TABLE "FPL_PROJECT"."PlayerStats" ADD CONSTRAINT "SYS_C008690" CHECK ("Points" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FPL_PROJECT"."PlayerStats" ADD CONSTRAINT "SYS_C008691" CHECK ("PlayerId" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FPL_PROJECT"."PlayerStats" ADD CONSTRAINT "SYS_C008692" CHECK ("GameWeekId" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FPL_PROJECT"."PlayerStats" ADD CONSTRAINT "SYS_C008693" CHECK ("minutesPlayed" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FPL_PROJECT"."PlayerStats" ADD CONSTRAINT "SYS_C008694" CHECK ("CleanSheet" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FPL_PROJECT"."PlayerStats" ADD CONSTRAINT "SYS_C008695" CHECK ("Goals" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FPL_PROJECT"."PlayerStats" ADD CONSTRAINT "SYS_C008696" CHECK ("PenaltySaved" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FPL_PROJECT"."PlayerStats" ADD CONSTRAINT "SYS_C008697" CHECK ("PenaltyMissed" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FPL_PROJECT"."PlayerStats" ADD CONSTRAINT "SYS_C008698" CHECK ("OwnGoal" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FPL_PROJECT"."PlayerStats" ADD CONSTRAINT "SYS_C008699" CHECK ("Assists" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FPL_PROJECT"."PlayerStats" ADD CONSTRAINT "SYS_C008700" CHECK ("YellowCard" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FPL_PROJECT"."PlayerStats" ADD CONSTRAINT "SYS_C008701" CHECK ("RedCard" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FPL_PROJECT"."PlayerStats" ADD CONSTRAINT "SYS_C008702" CHECK ("SelectedBy" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FPL_PROJECT"."PlayerStats" ADD CONSTRAINT "SYS_C008703" CHECK ("ShotsTaken" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FPL_PROJECT"."PlayerStats" ADD CONSTRAINT "SYS_C008704" CHECK ("ChancesCreated" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FPL_PROJECT"."PlayerStats" ADD CONSTRAINT "SYS_C008705" CHECK ("Saves" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table PlayerStats
-- ----------------------------
ALTER TABLE "FPL_PROJECT"."PlayerStats" ADD CONSTRAINT "stat_of_player" FOREIGN KEY ("PlayerId") REFERENCES "FPL_PROJECT"."Player" ("P_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "FPL_PROJECT"."PlayerStats" ADD CONSTRAINT "stat_of_prev_gw" FOREIGN KEY ("GameWeekId") REFERENCES "FPL_PROJECT"."GameWeek" ("gwId") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
