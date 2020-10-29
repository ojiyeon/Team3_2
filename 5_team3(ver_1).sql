--------------------------------------------------------
--  파일이 생성됨 - 목요일-10월-15-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADMININFO
--------------------------------------------------------

  CREATE TABLE "TEAM3"."ADMININFO" 
   (	"ADMIN_ID" NUMBER(8,0), 
	"ADMIN_PWD" VARCHAR2(50 BYTE), 
	"ADMIN_NAME" VARCHAR2(50 BYTE), 
	"ADMIN_JUMIN" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ATTEND
--------------------------------------------------------

  CREATE TABLE "TEAM3"."ATTEND" 
   (	"ATD_SUBJ_CODE" NUMBER(6,0), 
	"ATD_STU_ID" NUMBER(8,0), 
	"ATD_PRO_ID" NUMBER(8,0), 
	"ATD_YEAR" NUMBER(4,0), 
	"ATD_GRADE" NUMBER(1,0), 
	"ATD_SEMESTER" NUMBER(1,0), 
	"ATD_DATE" DATE, 
	"ATD_STATE" VARCHAR2(50 BYTE), 
	"ATD_REMARK" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "TEAM3"."COMMENTS" 
   (	"CMT_INDEX" NUMBER(6,0), 
	"CMT_NUM" NUMBER(6,0), 
	"CMT_WRITER" VARCHAR2(100 BYTE), 
	"CMT_CONTENT" VARCHAR2(3000 BYTE), 
	"CMT_DATE" DATE DEFAULT sysdate, 
	"CMT_STU_ID" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COMMUNITY
--------------------------------------------------------

  CREATE TABLE "TEAM3"."COMMUNITY" 
   (	"COMM_INDEX" NUMBER(6,0), 
	"COMM_NUM" NUMBER(6,0), 
	"COMM_GROUPN" NUMBER(1,0), 
	"COMM_DATE" DATE DEFAULT SYSDATE, 
	"COMM_TITLE" VARCHAR2(100 BYTE), 
	"COMM_CONTENT" VARCHAR2(3000 BYTE), 
	"COMM_HITS" NUMBER(6,0) DEFAULT 0, 
	"COMM_WRITER" VARCHAR2(50 BYTE), 
	"COMM_STU_ID" NUMBER(8,0), 
	"COMM_STEP" NUMBER(6,0) DEFAULT 0, 
	"COMM_LEVEL" NUMBER(6,0) DEFAULT 0, 
	"COMM_REF" NUMBER(6,0) DEFAULT 0, 
	"COMM_ORIGINFILENAME" VARCHAR2(100 BYTE), 
	"COMM_SYSTEMFILENAME" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DEPARTMENT
--------------------------------------------------------

  CREATE TABLE "TEAM3"."DEPARTMENT" 
   (	"DEPT_CODE" NUMBER(6,0), 
	"DEPT_NAME" VARCHAR2(50 BYTE), 
	"DEPT_MAJORCODE" NUMBER(6,0), 
	"DEPT_MAJORNAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROFESSOR
--------------------------------------------------------

  CREATE TABLE "TEAM3"."PROFESSOR" 
   (	"PRO_ID" NUMBER(8,0), 
	"PRO_PWD" VARCHAR2(50 BYTE), 
	"PRO_NAME" VARCHAR2(50 BYTE), 
	"PRO_ENG_NAME" VARCHAR2(50 BYTE), 
	"PRO_JUMIN" VARCHAR2(50 BYTE), 
	"PRO_MAJOR" NUMBER(6,0), 
	"PRO_TEL" VARCHAR2(50 BYTE), 
	"PRO_ADDR" VARCHAR2(100 BYTE), 
	"PRO_EMAIL" VARCHAR2(50 BYTE), 
	"PRO_IMG" BLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("PRO_IMG") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table SCHEDULE
--------------------------------------------------------

  CREATE TABLE "TEAM3"."SCHEDULE" 
   (	"SCHE_NUM" NUMBER(6,0), 
	"SCHE_CONTENT" VARCHAR2(100 BYTE), 
	"SCHE_STARTYEAR" NUMBER(4,0), 
	"SCHE_STARTMONTH" NUMBER(2,0), 
	"SCHE_STARTDAY" NUMBER(2,0), 
	"SCHE_ENDYEAR" NUMBER(4,0), 
	"SCHE_ENDMONTH" NUMBER(2,0), 
	"SCHE_ENDDAY" NUMBER(2,0), 
	"SCHE_HOLIDAY" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SCORECLASS
--------------------------------------------------------

  CREATE TABLE "TEAM3"."SCORECLASS" 
   (	"SC_SUBJ_CODE" NUMBER(6,0), 
	"SC_STU_ID" NUMBER(8,0), 
	"SC_PRO_ID" NUMBER(8,0), 
	"SC_YEAR" NUMBER(4,0), 
	"SC_GRADE" NUMBER(1,0), 
	"SC_SEMESTER" NUMBER(1,0), 
	"SC_SCORE" NUMBER(2,1), 
	"SC_RETAKE" VARCHAR2(50 BYTE), 
	"SC_SCORE2" VARCHAR2(50 BYTE) DEFAULT 'A+'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STUDENT
--------------------------------------------------------

  CREATE TABLE "TEAM3"."STUDENT" 
   (	"STU_ID" NUMBER(8,0), 
	"STU_PWD" VARCHAR2(50 BYTE), 
	"STU_NAME" VARCHAR2(50 BYTE), 
	"STU_ENG_NAME" VARCHAR2(50 BYTE), 
	"STU_JUMIN" VARCHAR2(50 BYTE), 
	"STU_STATE" NUMBER(1,0), 
	"STU_MAJOR" NUMBER(6,0), 
	"STU_GRADE" NUMBER(1,0), 
	"STU_PRO" NUMBER(8,0), 
	"STU_TEL" VARCHAR2(50 BYTE), 
	"STU_EMG_TEL" VARCHAR2(50 BYTE), 
	"STU_ADDR" VARCHAR2(100 BYTE), 
	"STU_EMAIL" VARCHAR2(50 BYTE), 
	"STU_IMG" BLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("STU_IMG") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table SUBJECT
--------------------------------------------------------

  CREATE TABLE "TEAM3"."SUBJECT" 
   (	"SUBJ_CODE" NUMBER(6,0), 
	"SUBJ_STATE" VARCHAR2(50 BYTE), 
	"SUBJ_MAJORCODE" NUMBER(6,0), 
	"SUBJ_NAME" VARCHAR2(50 BYTE), 
	"SUBJ_HAKJUM" NUMBER(1,0), 
	"SUBJ_PRO" NUMBER(8,0), 
	"SUBJ_ROOM" VARCHAR2(50 BYTE), 
	"SUBJ_DAY1" VARCHAR2(10 BYTE), 
	"SUBJ_DAY2" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TEMP
--------------------------------------------------------

  CREATE TABLE "TEAM3"."TEMP" 
   (	"NO" NUMBER(2,0), 
	"TITLE" VARCHAR2(500 BYTE), 
	"CONTENT" CLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("CONTENT") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for View ATD2
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TEAM3"."ATD2" ("SC_SUBJ_CODE", "SC_STU_ID", "SC_GRADE", "SC_SEMESTER", "SUBJ_STATE", "SUBJ_NAME", "SUBJ_HAKJUM", "PRO_NAME") AS 
  SELECT SC_SUBJ_CODE,SC.SC_STU_ID, SC.SC_GRADE, SC.SC_SEMESTER, S.SUBJ_STATE, S.SUBJ_NAME, S.SUBJ_HAKJUM, P.PRO_NAME 
FROM SUBJECT S, PROFESSOR P, SCORECLASS SC
WHERE S.SUBJ_CODE = SC.SC_SUBJ_CODE
AND S.SUBJ_PRO = P.PRO_ID
AND P.PRO_ID = SC.SC_PRO_ID
;
--------------------------------------------------------
--  DDL for View SCORE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TEAM3"."SCORE" ("STU_ID", "SUBJ_CODE", "SUBJ_NAME", "SUBJ_HAKJUM", "YEAR", "SEMESTER", "SCORE", "RETAKE", "PERCENTAGE") AS 
  SELECT
    C.SC_STU_ID STU_ID,
    S.SUBJ_CODE,
    S.SUBJ_NAME,
    S.SUBJ_HAKJUM,
    C.SC_YEAR YEAR,
    C.SC_SEMESTER SEMESTER,
    C.SC_SCORE SCORE,
    C.SC_RETAKE RETAKE,
    DECODE(C.SC_SCORE, 4.5, 97.5, 4, 92, 3.5, 87, 3, 82, 2.5, 77, 2, 72, 29.5) PERCENTAGE
FROM SUBJECT S, SCORECLASS C WHERE S.SUBJ_CODE = C.SC_SUBJ_CODE
;
--------------------------------------------------------
--  DDL for View TOTALSCORE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TEAM3"."TOTALSCORE" ("STU_ID", "YEAR", "SEMESTER", "ACQUIRED", "TOTAL", "AVG", "PERCENTAGE") AS 
  SELECT
    STU_ID, 
    YEAR, 
    SEMESTER, 
    SUM(DECODE(SCORE, NULL, 0, SUBJ_HAKJUM)) ACQUIRED, 
    SUM(SUBJ_HAKJUM) TOTAL, ROUND(SUM(SCORE)/COUNT(*),2) AVG,
    ROUND(SUM(PERCENTAGE)/COUNT(*), 2) PERCENTAGE
FROM SCORE 
GROUP BY STU_ID, YEAR, SEMESTER 
ORDER BY YEAR, SEMESTER
;
REM INSERTING into TEAM3.ADMININFO
SET DEFINE OFF;
Insert into TEAM3.ADMININFO (ADMIN_ID,ADMIN_PWD,ADMIN_NAME,ADMIN_JUMIN) values (11111111,'test','BIT','111111-2222222');
REM INSERTING into TEAM3.ATTEND
SET DEFINE OFF;
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141002,20201350,80000001,2015,1,1,to_date('15/06/03','RR/MM/DD'),'지각',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141005,20201350,80000001,2015,1,1,to_date('15/06/07','RR/MM/DD'),'출석',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141005,20201350,80000001,2015,1,1,to_date('15/06/12','RR/MM/DD'),'출석',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141005,20201350,80000001,2015,1,1,to_date('15/06/17','RR/MM/DD'),'출석',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141005,20201350,80000001,2015,1,1,to_date('15/06/22','RR/MM/DD'),'출석',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141005,20201350,80000001,2015,1,1,to_date('15/06/27','RR/MM/DD'),'출석',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141005,20201350,80000001,2015,1,1,to_date('15/07/01','RR/MM/DD'),'출석',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141006,20201350,80000001,2015,1,1,to_date('15/06/05','RR/MM/DD'),'출석',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141006,20201350,80000001,2015,1,1,to_date('15/06/07','RR/MM/DD'),'출석',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141006,20201350,80000001,2015,1,1,to_date('15/06/10','RR/MM/DD'),'출석',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141006,20201350,80000001,2015,1,1,to_date('15/06/12','RR/MM/DD'),'출석',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141006,20201350,80000001,2015,1,1,to_date('15/06/15','RR/MM/DD'),'지각',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141006,20201350,80000001,2015,1,1,to_date('15/06/17','RR/MM/DD'),'출석',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141006,20201350,80000001,2015,1,1,to_date('15/06/20','RR/MM/DD'),'출석',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141006,20201350,80000001,2015,1,1,to_date('15/06/22','RR/MM/DD'),'출석',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141006,20201350,80000001,2015,1,1,to_date('15/06/25','RR/MM/DD'),'출석',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141006,20201350,80000001,2015,1,1,to_date('15/06/27','RR/MM/DD'),'출석',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141006,20201350,80000001,2015,1,1,to_date('15/06/30','RR/MM/DD'),'지각',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141007,20201350,80000001,2015,1,1,to_date('15/06/08','RR/MM/DD'),'출석',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141007,20201350,80000001,2015,1,1,to_date('15/06/15','RR/MM/DD'),'출석',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141007,20201350,80000001,2015,1,1,to_date('15/06/22','RR/MM/DD'),'출석',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141007,20201350,80000001,2015,1,1,to_date('15/06/29','RR/MM/DD'),'출석',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141007,20201350,80000001,2015,1,1,to_date('15/07/05','RR/MM/DD'),'지각',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141007,20201350,80000001,2015,1,1,to_date('15/07/12','RR/MM/DD'),'결석',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141007,20201350,80000001,2015,1,1,to_date('15/07/19','RR/MM/DD'),'출석',null);
Insert into TEAM3.ATTEND (ATD_SUBJ_CODE,ATD_STU_ID,ATD_PRO_ID,ATD_YEAR,ATD_GRADE,ATD_SEMESTER,ATD_DATE,ATD_STATE,ATD_REMARK) values (141007,20201350,80000001,2015,1,1,to_date('15/07/26','RR/MM/DD'),'출석',null);
REM INSERTING into TEAM3.COMMENTS
SET DEFINE OFF;
Insert into TEAM3.COMMENTS (CMT_INDEX,CMT_NUM,CMT_WRITER,CMT_CONTENT,CMT_DATE,CMT_STU_ID) values (30,1,'권현정','감사합니다^^',to_date('20/10/13','RR/MM/DD'),20201350);
Insert into TEAM3.COMMENTS (CMT_INDEX,CMT_NUM,CMT_WRITER,CMT_CONTENT,CMT_DATE,CMT_STU_ID) values (28,1,'권현정','오 꿀팁 감사해요!ㅋㅋㅋ조별과제 피해다니는 중이에요!!!',to_date('20/10/13','RR/MM/DD'),20201350);
Insert into TEAM3.COMMENTS (CMT_INDEX,CMT_NUM,CMT_WRITER,CMT_CONTENT,CMT_DATE,CMT_STU_ID) values (34,1,'권현정','저는 싸다고 생각했는데...공강때문에 아깝게 느껴질거 같기도 하네요..ㅠ',to_date('20/10/13','RR/MM/DD'),20201350);
Insert into TEAM3.COMMENTS (CMT_INDEX,CMT_NUM,CMT_WRITER,CMT_CONTENT,CMT_DATE,CMT_STU_ID) values (32,1,'오지연','필수 아니에요! 원하는 사람만 하면 되는데...왜 선배님들은 그렇게 말씀 하셨지...',to_date('20/10/13','RR/MM/DD'),20201352);
Insert into TEAM3.COMMENTS (CMT_INDEX,CMT_NUM,CMT_WRITER,CMT_CONTENT,CMT_DATE,CMT_STU_ID) values (28,2,'이효리',' 맞아요 이 교수님 진짜 좋으세？Dㅋㅋㅋ과제도 별로 안어려워요!',to_date('20/10/13','RR/MM/DD'),20201356);
Insert into TEAM3.COMMENTS (CMT_INDEX,CMT_NUM,CMT_WRITER,CMT_CONTENT,CMT_DATE,CMT_STU_ID) values (41,1,'고사계','알바생 힘들겠어요...ㅋㅋㅋㅋㅋ',to_date('20/10/13','RR/MM/DD'),20201360);
Insert into TEAM3.COMMENTS (CMT_INDEX,CMT_NUM,CMT_WRITER,CMT_CONTENT,CMT_DATE,CMT_STU_ID) values (48,1,'임예람','마자요 코로롱...언제쯤 끝나는지 진짜 괴로워요ㅠㅠ 좀만 컨디션 안좋아도 불안하구...',to_date('20/10/13','RR/MM/DD'),20201351);
Insert into TEAM3.COMMENTS (CMT_INDEX,CMT_NUM,CMT_WRITER,CMT_CONTENT,CMT_DATE,CMT_STU_ID) values (50,1,'권현정','감사합니다! 확정되면 좋을거같은데...ㅠㅠ',to_date('20/10/13','RR/MM/DD'),20201350);
Insert into TEAM3.COMMENTS (CMT_INDEX,CMT_NUM,CMT_WRITER,CMT_CONTENT,CMT_DATE,CMT_STU_ID) values (50,2,'임예람','변동사항 생길 예정이라고는 하더라구요ㅎㅎㅎ그래도 교양과목 추가된다는 얘기가 있는게 어디일까 싶어서 나름 만족....',to_date('20/10/13','RR/MM/DD'),20201351);
Insert into TEAM3.COMMENTS (CMT_INDEX,CMT_NUM,CMT_WRITER,CMT_CONTENT,CMT_DATE,CMT_STU_ID) values (42,1,'임예람','추가된다는 얘기가 있긴 하더라구요! 자유게시판에 첨부파일 있는 글 있어요! 참고하시라고...',to_date('20/10/13','RR/MM/DD'),20201351);
Insert into TEAM3.COMMENTS (CMT_INDEX,CMT_NUM,CMT_WRITER,CMT_CONTENT,CMT_DATE,CMT_STU_ID) values (59,1,'임예람','답댓글 어쩔까요',to_date('20/10/14','RR/MM/DD'),20201351);
Insert into TEAM3.COMMENTS (CMT_INDEX,CMT_NUM,CMT_WRITER,CMT_CONTENT,CMT_DATE,CMT_STU_ID) values (45,1,'도지원','헐 진짜 감사드려요ㅡㅜㅜ사례해드려야되는데ㅠㅠㅠ맡기실때 연락처 혹시 남겨두셨나요? 제가 꼭 밥 한끼 사겠습니다ㅠㅠ',to_date('20/10/13','RR/MM/DD'),20201354);
Insert into TEAM3.COMMENTS (CMT_INDEX,CMT_NUM,CMT_WRITER,CMT_CONTENT,CMT_DATE,CMT_STU_ID) values (46,1,'임예람','ㅎㅎㅎㅎ',to_date('20/10/15','RR/MM/DD'),20201351);
Insert into TEAM3.COMMENTS (CMT_INDEX,CMT_NUM,CMT_WRITER,CMT_CONTENT,CMT_DATE,CMT_STU_ID) values (25,1,'오지연','요거 조교님한테 말씀 함 해보세요!!!!!!',to_date('20/10/13','RR/MM/DD'),20201352);
Insert into TEAM3.COMMENTS (CMT_INDEX,CMT_NUM,CMT_WRITER,CMT_CONTENT,CMT_DATE,CMT_STU_ID) values (33,1,'나훈아','gs가 더 맛있는게 많지 않나요?ㅋㅋㅋ cu는 후문 앞에 하나 있긴 한데 좀 멀죠..?ㅎㅎㅎ',to_date('20/10/13','RR/MM/DD'),20201359);
Insert into TEAM3.COMMENTS (CMT_INDEX,CMT_NUM,CMT_WRITER,CMT_CONTENT,CMT_DATE,CMT_STU_ID) values (38,1,'임예람','아! 감사합니다^^',to_date('20/10/13','RR/MM/DD'),20201351);
Insert into TEAM3.COMMENTS (CMT_INDEX,CMT_NUM,CMT_WRITER,CMT_CONTENT,CMT_DATE,CMT_STU_ID) values (31,1,'오지연','혹시 물리테이블 자료는 없나요....?',to_date('20/10/13','RR/MM/DD'),20201352);
Insert into TEAM3.COMMENTS (CMT_INDEX,CMT_NUM,CMT_WRITER,CMT_CONTENT,CMT_DATE,CMT_STU_ID) values (32,2,'송은아','맞아요 필수 아닌데 왜 그렇게 말한거지;;',to_date('20/10/13','RR/MM/DD'),20201355);
Insert into TEAM3.COMMENTS (CMT_INDEX,CMT_NUM,CMT_WRITER,CMT_CONTENT,CMT_DATE,CMT_STU_ID) values (31,2,'나훈아','지연님 물리테이블은 저 있어요 답글로 달아드릴게요',to_date('20/10/13','RR/MM/DD'),20201359);
Insert into TEAM3.COMMENTS (CMT_INDEX,CMT_NUM,CMT_WRITER,CMT_CONTENT,CMT_DATE,CMT_STU_ID) values (18,1,'권현정','저 범죄심리학 필요한데 혹시 시간 언제되시나요??',to_date('20/10/13','RR/MM/DD'),20201350);
REM INSERTING into TEAM3.COMMUNITY
SET DEFINE OFF;
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (23,4,1,to_date('20/10/13','RR/MM/DD'),'학교 주변에 맛집 추천해주실 분 계신가요?','새내기 입니다! 아직 학교 주변을 제대로 둘러보지 못했는데<br>선배님들의 추천을 받고싶어서요!<br>혹시 학교 주변에 동기들끼리 갈만한 맛집이 있을까요?<br><br>술집도 괜찮구 밥만 먹을 수 있는데도 좋습니다!<br>',1,'임예람',20201351,0,0,23,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (24,19,4,to_date('20/10/13','RR/MM/DD'),'2020-2학기 재입학 모집 공고','2020-2학기 재입학 모집 공고<br><br>  2020-2학기 재입학을 아래와 같이 공고합니다.<br><br> <br><br>- 아  래 -<br><br>1. 접수기간<br>2020년 7월 2일(목) ~ 8월 21일(금)<br> <br><br>2. 신청대상<br>2020년 4월 1일 이전 제적생<br> <br><br>3. 모집인원<br> * (야간) : 모집여석 없음<br><br> <br>4. 신청방법 및 절차<br>교무처 방문(밀레니엄관 4층) → 재입학원 제출 → 현금등록 → 입학허가<br>※ 미등록시 재입학 신청 취소<br><br><br>5. 선발방법<br>선착순 마감<br> <br><br>6. 제출서류<br>일반 재입학 : 재입학원 1부, 신분증 사본 1부.<br>인하 재입학 : 인하 재입학원 1부, 신분증 사본 1부, 보호자 도장 또는 신분증 사본, 성적증명서(열람용) 1부.<br> <br><br>7. 기타 안내사항<br>위 대상자 및 신청방법 이외에는 신청 불가합니다.<br>재입학의 경우 배정되어 있는 신청(접수) 해당학기 재입학 여석만큼만 신청 및 접수가 가능합니다.<br>처음 입학당시 입학 유형이 정원 외인 학생은 정원 외에 재입학 여석이 있을 경우에만 신청이 가능합니다.<br>재입학 시 학적상태는 제적될 당시의 학적으로만 재입학 신청 가능하며, 경우에 따라 인하 재입학도 신청 가능합니다.<br>※ 인하 재입학 : 제적될 당시의 학년보다 아래 학년으로 재입학 신청하는 것으로 인하하는 학년만큼의 성적 삭제.<br><br>징계로 인해 제적된 자는 재입학 할 수 없습니다.<br> ',2,'BIT',11111111,0,0,24,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (25,5,1,to_date('20/10/13','RR/MM/DD'),'학교 종이 너무 작은거 같지 않아요...?','수업 할때마다 느끼는건데 마이크 쓰시는 교수님 수업 들으면<br>종이 거의 안울려서 쉬는시간 패스 될때가 너무 많아요.....<br>개선 되면 좋을거 같은데...<br>저만 그렇게 느끼나요..ㅠㅠ',8,'임예람',20201351,0,0,25,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (26,20,4,to_date('20/10/13','RR/MM/DD'),'2020-2학기 편입생 전과(학부이동 및 전공변경) 신청 공고','2020-2학기 편입생 전과(학부이동 및 전공변경) 신청을 아래와 같이 공고합니다.<br><br> <br><br>1. 전과 신청 자격<br><br>    ① 편입학생으로 3학년 재학생(1개 학기 이수자) 또는 3학년 2학기 복학예정 편입생<br><br>    ② 총 평균평점 2.0 이상<br><br>        ※ 편입생 전과 가능시기 : 3학년 2학기, 4학년 1학기 가능<br><br> <br><br>2. 전과 합격 기준<br>    ① 진로지도 이수<br><br>    ② 전공면접 합격<br><br>    ③ 모집인원이 초과할 경우 성적순 선발(전과 학년별 입학정원 30% 모집)<br><br><br>3. 신청불가 대상자<br>    ① 입학유형이 특기자로 입학한 학생<br><br>    ② 휴학중인 학생(2021-1학기 이후에 복학하는 학생)<br><br>4. 신청절차<br><br>①<br><br>진로지도 이수 신청<br><br>2020. 7. 20(월) ∼ 7. 22(수)<br><br>(09:000-15:00)<br><br> - 밀레니엄관 4층 교무처<br><br> - 제출서류 - 학생증 사본 또는 주민등록증사본 1부<br><br>②<br><br>진로지도 참여<br><br>2020. 7. 23(목)<br><br>(교육시간 : 10:00∼12:00)<br><br> - 장소: 달란트개발센터(어문관 6105)<br><br> - 진로지도 이수한 후 정식 전과신청서 배부<br><br>③<br><br>전공 면접<br><br>2020. 7. 23(목) ∼ 7. 24(금)<br><br>(면접시간 : 13:00~15:00)<br><br> - 본 전공 지도교수 면담 &#10142; 전과 전공 면접<br><br>④<br><br>전과서류 제출<br><br>2020. 8. 3(월) 15:00까지<br><br> - 제출장소 : 밀레니엄관 4층 교무처<br><br> - 제출서류<br><br>    · 전과 신청서1부, 성적증명서 1부(열람용)<br><br>    · 전과 지원사유서 1부<br><br>⑤<br><br>전과 합격 발표<br><br>2020. 8. 5(수) 오전 11시 이후<br><br> - 학생지원시스템 → 학적 →<br><br>   인적사항변경에서 전공변경 확인<br><br>   ※ 전공이 변경되지 않은 경우 불합격<br><br> <br><br>5. 주의사항<br>   ① 진로지도 이수 신청 시 본인을 확인할 수 있는 학생증 또는 주민등록증을 제출하지 않을 경우 신청불가<br><br>   ② 위 기간 및 신청방법 이외에는 신청 불가<br><br>   ③ 달란학생상담센터 진로지도를 불참한 학생은 전과신청 불가<br><br>   ④ 전과한 후 신청자격 미달 또는 부정이 확인될 경우 전과 취소<br><br>   ⑤ 보건의료계열(보건행정학과 제외), 동아시아학과로의 전과 불가<br><br>   ⑥ 전과 후 학점인정 심사 실시(전과 전 이수 학점(편입전 학점 포함)에 대한 학점인정 심사 실시)<br><br><br>    ※ 문의사항 : 교무처 320-2041, 2042',1,'BIT',11111111,0,0,26,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (27,21,4,to_date('20/10/13','RR/MM/DD'),'기말평가 및 대면수업(D-MAP동기부여, 달란트와진로I) 실시 안내','대면수업 및 기말평가 실시 안내<br><br>D-MAP동기부여(1학년), 달란트와진로I(2학년) 대면수업 및 2020-1학기 기말평가를 아래와 같이 안내합니다. <br><br>- 아 래 -<br><br>▣ 대면수업<br>     · 대상교과목 : D-MAP동기부여(1학년), 달란트와진로I(2학년)<br>     · 수업기간 및 시간 : 담당교수가 별도 안내<br>     · 수업내용 : 학생 면담<br>▣ 기말평가<br>     · 평가기간 및 시간<br>        - 기말시험기간(2020. 6. 22 - 6. 27)에 실시하는 것을 원칙으로 함<br>        - 실험실습실기 등 교과목 특성상 부득이한 경우나, 분반등으로 인하여 학부내 평가일정 조정이 필요한 경우 2020. 7. 11까지 평가 가능<br>        - 세부 시험시간표는 담당교수가 별도 안내<br>     · 평가방식<br>        - 대면평가 원칙<br>        - 과제 및 실기평가로 운영되는 기존과목은 제외(예체능과목 등)<br>     · 과제대체 허용<br><br>        - 대면평가에 참석이 어려운 학생을 대상으로 과제대체 허용<br><br>        - 대상 : 코로나19관련 의심자, 유학생으로서 입국이 불가능한 자, 감염우려 등으로 불참자<br><br>           (※ 사전에 연락하여 담당교수의 허락을 득한 경우에 한함)<br><br>     · 추진일정<br><br>        - 2020. 6. 22(월) ～ 6. 27(토) : 기말평가<br><br>        - 2020. 6. 29(월) ～ 7. 11(토) : 보강주간2(실험실습실기과목 집중 보강기간)<br><br>        - 2020. 7.  3(금) ～ 7. 13(월) : 성적입력기간<br><br>        - 2020. 7. 14(화) ～ 7. 15(수) 18:00까지 : 성적정정기간<br><br>▣ 기숙사 : 별도 공지 예정',0,'BIT',11111111,0,0,27,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (28,6,1,to_date('20/10/13','RR/MM/DD'),'조별과제 없는 수업 추천ㅋㅋㅋㅋ','교양 수업인데,<br>기초 중국어 회화 (ㅇㅇㅇ 교수님) 수업 조별과제 없어요!<br>수업도 재밌고 가끔 과제 있긴 한데, 양이 많진 않아서 할만 합니다ㅎㅎㅎ<br><br>전공자 수강하면 첫날에 이름 불러서 나가라고 하시던데？Dㅋㅋㅋ<br>기초반인데 전공자가 왜듣냐며ㅎㅎ<br>비전공자들만 있으니까 열심히하면 성적 받기도 나쁘지 않은듯요!',10,'임예람',20201351,0,0,28,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (29,22,4,to_date('20/10/13','RR/MM/DD'),'기말고사 및 집중보강기간 학사일정 조정','○ 국가자격증 취득 및 졸업요건과 관련된 학생 현장실습관련, 외부 현장실습기관의 일정과 우리 대학 학사일정간의 문제로 인하여 기말고사 관련 일정을 다음과 같이 조정 하였습니다.<br><br>  <br><br>학사일정 조정      <br><br>학사내용       변경 전                     변경 후                  비고<br><br>보강주간2      06.22(월) ~ 07.04(토)       06.29(월) ~ 07.11(토)   보간주간2 ↔ 기말고사<br>  <br>기말고사기간   07.06(월) ~ 07.11(토)       06.22(월) ~ 06.27(토)   보간주간2 ↔ 기말고사<br> <br>성적입력기간   07.06(월) ~ 07.15(수)       좌동                    성적입력 및 정정기간은 종전대로<br><br>성적정정기간   07.16(목) ~ 07.17(금) 18시  좌동                    성적입력 및 정정기간은 종전대로<br><br><br>○ 개설과목 특성에 따라 보강 완료 후 기말고사 실시 가능(단, 교양과목 시험 중복, 타전공 수강학생 등의 문제가 없는 경우만 가능) → 담당교수는 사전 학생협의 및 공지 필수<br><br>○ 기말고사는 반드시 원래 시간표에 맞추어 실시<br><br>',4,'BIT',11111111,0,0,29,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (1,2,4,to_date('20/10/13','RR/MM/DD'),'(긴급) 코로나19 확산방지를 위한 2020학년도 2학기 비대면 수업 전환 안내(10월 10일까지 비대면)','(긴급) 코로나19 확산방지를 위한 2020학년도 2학기 비대면 수업 전환 안내<br><br>부산지역 소재 대학교 캠퍼스 내 확진자 집단 발생으로 인한 지역확산의 우려에 따라 부산시에서 추석특별 방역기간인 10월 10일까지 비대면 수업전환을 연장하는 것을 강력 권고하였습니다.  <br><br>이에 따라 우리 대학도 당초 9월 21일부터 실험실습실기 수업에 한해 제한적으로 대면수업을 진행하기로 한 수업운영 계획을 변경하여 9월 23일부터 10월 10일까지 비대면 수업 연장을 결정하였음을 알려드립니다.<br><br>10월 12일부터 실험실습실기 수업에 한하여 대면수업을 재개하며, 이론수업의 대면수업 재개는 추후 별도 공지할 예정이오니 학생 및 교수진 여러분들의 적극적인 이해와 협조를 부탁드립니다. <br><br>단, 향후 정부의 코로나 19 방역 단계 전환에 따라 수업 운영이 변동될 수 있습니다.<br><br>1. 일시<br>   &#8226; 10월 10일까지 전면 비대면 전환(모든 과목에 대해 예외 없음)<br>      - 9. 23   ∼10. 10 : 전면 비대면<br><br>      - 10. 12 ∼         : 원격수업교과목, 혼합수업(Blended Learning)<br><br>2. 대면수업 대상 교과목<br><br>※ 정부의 코로나19 방역 단계 전환에 따라 수업 운영이 변경될 수 있습니다.<br><br>3. 주요사항<br>   &#8226; 학내 각종 모임 및 행사 취소(연구회, 동아리(동아리실 폐쇄) 모임 등)<br>   &#8226; 마스크 미착용시에는 수업 참여가 불가하며, 강의실에서는 개별 접촉을 최대한 자제해주시기 바랍니다.<br>   &#8226; 거리두기를 준수하여 착석해 주시기 바랍니다.',0,'BIT',11111111,0,0,1,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (2,3,4,to_date('20/10/13','RR/MM/DD'),'2020-2학기 대면수업(실험실습실기 교과목) 안내','2020-2학기 대면수업(실험실습실기 교과목) 안내<br><br> <br><br>부산시 「사회적 거리두기 2단계 2주 연장」 관련 비대면 수업 협조 요청(첨부)에 따라 대면수업을 일정을 아래와 같이 안내하오니 학생 및 교수진 여러분들의 이해와 협조를 부탁드립니다.<br><br>단, 향후 정부의 코로나19 방역 단계 전환에 따라 수업 운영이 변동될 수 있습니다.<br><br>1. 일시<br>    &#8226; 2020.09.21.(월).~ 별도 안내시까지<br><br>2. 대상교과목<br><br>  &#8226; 실험실습실기 교과목(이론+실습 교과목 포함) 중 아래의 요건을 모두 충족하는 교과목<br><br>    ① 수업계획서에 대면수업 실시계획을 명시한 교과목<br><br>    ② 수강인원이 20명 이하인 교과목 이거나, 순차출석 등을 통해 강의실 수용인원의 1/2이하로<br><br>        수업운영이 가능한 교과목<br><br>  &#8226; 대면수업 해당 교과목이라도 과목의 특성을 고려한 교수의 판단에 따라서 비대면 수업 가능<br><br>  ※ 교과목의 대면수업여부는 수업계획서 및 e-class 공지를 통해 확인(또는 담당교수에게 확인)<br><br>일시 : 2020. 9. 21(월)<br><br>비대면수업<br><br>  &#8226; 원격수업 교과목 및 이론 교과목<br><br> ※ 이론 교과목의 대면수업 허용은 추후 안내<br><br>별도 공지<br><br>※ 정부의 코로나19 방역 단계 전환에 따라 수업 운영이 변동될 수 있습니다.<br><br>3. 주요사항<br>    &#8226; 마스크 미착용시에는 수업 참여가 불가하며, 강의실에서는 개별 접속을 최대한 자제해주시기 바랍니다.<br>    &#8226; 거리두기를 준수하여 착석해 주시기 바랍니다.<br>4. 기숙사 관련은 담당부서에서 별도 공지<br>',0,'BIT',11111111,0,0,2,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (3,4,4,to_date('20/10/13','RR/MM/DD'),'2020-2학기 영어특별강좌(졸업인증제, 신토익) 수업 운영 방법에 대한 안내','2020-2학기 영어특별강좌(졸업인증제, 신토익) 수업 운영 방법에 대한 안내<br><br> <br><br>안녕하십니까?<br><br>2020-2학기 영어특별강좌 특강반 수업 운영 방법에 대해서 아래와 같이 안내해드리오니 수강 신청하신 학생들은 반드시 숙지하여 주시길 바랍니다. <br><br>1. 특강명 : 2020-2학기영어특별강좌(졸업인증제, 신토익)<br>2. 대상 : 졸업인증제 및 4학년 재학생(수료생 포함) 중 영어졸업인증제 미통과(CBT 400점 미만 또는 EST 4등급 미만) 학생 및 실력향상을 원하는 토익 수업 신청자<br>3. 운영기간 : 2020.10.12 ~ 2020.11.06. / 일일 2시간, 주 4일(월,화,목,금) / 4주(총 32시간)<br>4. 운영방법<br><br><br><br>졸업인증제 대비 특강반 운영<br><br>  가. 온라인 수업 진행 : 비동시적 온라인 수업 (네이버 밴드 활용)<br><br>  나. 1주일에 총 4일(월, 화, 목, 금) 수업 진행 / 1일에 총 두 개의 차시로 구성<br><br>  다. 각 차시별 수업 구성은 수업 동영상 콘텐츠(최소 20분 이상) + 과제(온라인 학습활동) 1개<br><br>  라. 각 차시별 수업 콘텐츠는 당일 오전 9시 30분에 업로드하여 그로부터 2일안에 학습 완료하여야지만 학습인정 (동영상 100% 신청 완료 및 과제 제출) <br><br>실력향상신토익 특강반 운영<br><br>  가. 온라인 수업 진행 : 동시적 온라인 수업 (ZOOM 활용)<br><br>  나. 1주일에 총 4일(월, 화, 목, 금) 수업 진행<br><br>  다. 각 차시별 수업은 ZOOM을 통한 동시적 온라인 면대면 수업진행<br><br>  라. 각 차시별 수업은 19:00-21:00(2H) ZOOM의 접속하여 수업진행<br>',0,'BIT',11111111,0,0,3,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (4,5,4,to_date('20/10/13','RR/MM/DD'),'2020-2학기 학점포기 신청공지','학점포기 기간을 다음과 같이 공지 하오니 희망학생은 학점포기과목을 신청해 주시기 바라며, 학점포기의 잘못으로 졸업을 하지 못하는 경우가 없도록 아래 사항을 유념하여 신청해 주시기 바랍니다.<br><br> <br><br>- 아 래 -<br><br> <br><br>1. 학점포기 신청 기간 : 2020. 9. 21(월) 09:00 ∼ 9. 25(금) 18:00<br>2. 학점포기 확정일 : 2020. 9. 28(월) 오전 11:00<br>- 성적증명서 포기과목 삭제 및 평균평점 재계산<br><br>3. 대상자 : 현재 3, 4, 5학년 재학 중인 자<br>4. 학점포기 가능과목<br>2013&#8210;2학기 이전(2013&#8210;2학기 포함) 성적 중 C+이하 선택과목만 학점포기 신청 가능<br><br>※ 학점포기제도 폐지로 인해 2014-1학기 이수한 성적부터 학점포기 신청 불가<br><br>5. 학점포기 불가 과목<br>- 필수 교과목 : 대학정책, 학부기초이수지정, 계열필수, 전공이수지정, 일반교양이수지정, 편입생(전과생) 이수지정, 전과전 이수과목<br><br>6. 학점포기 신청방법<br>홈페이지 학생지원시스템에서 학점포기신청을 통하여 학생 본인이 직접 포기 신청<br><br>7. 주의사항<br>1) 2014&#8210;1학기 이후 취득한 성적부터 학점포기신청 불가<br><br>2) 한번 삭제한 교과목은 절대 복구 불가(원상복구 절대불가)<br><br>3) 학점포기로 인한 학점상의 졸업 불가사유 발생 시 학점포기 당사자 책임이므로 유의<br><br>4) 학생지원시스템 비밀번호 관리 철저<br><br>5) 학점포기신청 확정일 이후 학점포기 내용은 본인이 반드시 확인<br>',0,'BIT',11111111,0,0,4,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (5,6,4,to_date('20/10/13','RR/MM/DD'),'2020-2학기 사이버수업 학습요령 안내','2020-2학기 사이버수업 학습요령 안내<br><br>2020-2학기 사이버수업 학습요령을 첨부와 같이 안내하오니<br><br>사이버수업을 수강신청한 학생은 반드시 학습요령을 읽어보시기 바랍니다<br><br>대상과목 :   서양철학사여행(101,102분반)<br><br>             우리몸의이해(101,102분반)<br><br>             역사속의기독교이야기(101,102분반)<br><br>             한국의문화유산(101,102분반)<br><br>             현대사회와정신건강(101,102분반)<br><br><br>* 2020-2학기부터는 BDU 사이버강좌<br><br>중간고사 및 기말고사 시험은 온라인으로 진행될예정입니다.<br><br>수강 시에 꼭 착오없이 수강하시길 바랍니다.',1,'BIT',11111111,0,0,5,'2020-2학기_사이버수업_학습요령.pdf,','1602568281918_2020-2학기_사이버수업_학습요령.pdf,');
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (6,7,4,to_date('20/10/13','RR/MM/DD'),'2020-1학기 하계방학 졸업인증제 대비 특강반 수업 운영 방법에 대한 안내','안녕하십니까?<br><br>2020-1학기 하계방학 졸업인증제 대비 특강반 수업 운영 방법에 대해서 아래와 같이 안내해드리오니 수강 신청하신 학생들은 반드시 숙지하여 주시길 바랍니다. <br><br>1. 특강명 : 2020-1학기 하계방학 졸업인증제 대비 특강반<br><br>2. 대상 : 4학년 재학생(수료생 포함) 중 영어졸업인증제 미통과(CBT 400점 미만 또는 EST 4등급 미만) 학생 <br><br>3. 운영기간 : 2020.07.13 ~ 2020.08.07. / 일일 2시간, 주 4일(월,화,목,금) / 4주(총 32시간)<br><br>4. 운영방법 <br>  가. 온라인 수업 진행 : 비동시적 온라인 수업 (네이버 밴드 활용)<br>  나. 1주일에 총 4일(월, 화, 목, 금) 수업 진행 / 1일에 총 두 개의 차시로 구성<br>  다. 각 차시별 수업 구성은 수업 동영상 콘텐츠(최소 20분 이상) + 과제(온라인 학습활동) 1개<br>  라. 각 차시별 수업 콘텐츠는 당일 오전 9시 30분에 업로드하여 그로부터 2일안에 학습 완료하여야지만 학습인정(동영상 100% 신청 완료 및 과제 제출) <br><br>5. 담당교수명 및 교재<br><br>6. 수강생 필독 사항 <br>  가. 본인이 신청한 분반 확인 : 특강 신청한 MYDEX에서 확인 가능(문의 : 051-320-2097)<br>  나. 네이버 밴드 가입 : 링크 또는 QR 코드 스캔 후 밴드 접수 → 가입 신청 → 가입 승인<br><br>  다. 밴드 닉네임 설정시 반드시 학번과 이름으로 설정(예, 홍길동_20209999)<br>  라. 출결 체크 방법 : 수업인정기간(2일)안에 해당 동영상 강의 100% 신청 완료 및 해당 과제 제출 완료시에 출석 인정. 그외는 모두 결석 처리<br>  마. 과제 제출 방법 : 밴드에 안내된 이메일 주소로 수업인정기간내 제출(예, 7월 13일 수업 과제는 7월 15일 오전 9시 30분까지 제출)<br>      ※ 수업 동영상 및 과제 업로드 : 매일 오전 9시 30분 <br>  바. 출석보증금 환급 조건 : 출석율 80% 및 CBT 시험 응시<br>  사. 출석율 70% 미만의 학생은 "졸업인증특별 CBT시험"에 응시 불가<br><br>상기 관련하여 문의 사항이 있으시면 언제든지 외국어교육원으로 연락주십시오. (Tel. 051-320-2097,2098)<br>감사합니다. <br>',0,'BIT',11111111,0,0,6,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (7,8,4,to_date('20/10/13','RR/MM/DD'),'[오전 휴교, 수업은 정상적 운영] 태풍(하이선)으로 인한 임시 휴교(9. 7(월), 오전) 안내','태풍(하이선)으로 인한 임시 휴교(오전) 안내<br> <br><br>  금일 태풍(하이선)으로 인해 임시 휴교합니다.<br><br> <br><br>  ■ 일시 : 2020. 9. 7(월), 오전<br><br><br>  ※ 임시 오전 휴교와 관련없이 모든 수업은 비대면으로 정상 운영됩니다.',0,'BIT',11111111,0,0,7,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (10,9,4,to_date('20/10/13','RR/MM/DD'),'사이버강좌 수강신청에 대해 알려드립니다.','예비수강신청에 대한 사전 공지가 제대로 이루어지지 않아 많은 문의가 있었습니다.<br><br>총학생회 측에서도 예비수강신청 방식이 변경 없이 진행 된다는 걸로 알고 있었기 때문에 기존 방식대로 진행 할 수 있도록 고려 해달라는 요청을 해왔습니다.<br><br>위의 사항과 총학생회의 의견을 수렴하여 아래와 같이 정해진 순번까지 사전 수강신청이 진행 될 예정입니다.<br><br> 1. 예비수강신청 순서에 따라 기존 제한 인원 120명에 해당하는 학생은 예비수강신청 과목이 사전 수강신청 됨(‘수강신청내역조회‘에서 확인 가능)<br> 2. 수강신청내역조회에서 교과목이 확인이 되지 않는 경우 순번에 포함되지 않는 학생<br><br><br>이수구분 교과목코드 교과목명 분반 교양선택<br><br>140143 역사속의기독교이야기 101 교양선택<br><br>140143 역사속의기독교이야기 102 교양선택<br><br>140228 한국의문화유산 101 교양선택<br><br>140228 한국의문화유산 102 교양선택<br><br>140229 우리몸의이해 101 교양선택<br><br>140229 우리몸의이해 102 교양선택<br><br>141015 서양철학사여행 101 교양선택<br><br>141015 서양철학사여행 102 교양선택<br><br>142617 현대사회와정신건강 101 교양선택<br><br><br> 3. 위의 순번에 포함되지 않는 학생은 예비수강신청 했던 과목의 분반을 수강 신청 마지막 날(8/23) 수강 신청을 할 경우 대기인원 기준에 따라 대기순번이 주어짐<br> 4. 순번에 포함되지 않는 학생은 교양선택 과목에 한하여 예비수강신청을 하지 않은 과목이더라도 오전 9시부터 수강신청 가능 함<br>위의 내용 확인 하시기 바랍니다.<br><br>수강신청에 있어 불편함을 드린점에 대해 사과 말씀 드립니다.',1,'BIT',11111111,0,0,10,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (12,10,4,to_date('20/10/13','RR/MM/DD'),'2020-2학기 OCU 컨소시엄 강좌 수강 안내','한국열린사이버대학교에서 운영하는 OCU컨소시엄사이버캠퍼스 온라인 강좌 신청 안내입니다.<br><br>우리대학 수강신청을 통하여 신청하며 OCU컨소시엄사이버캠퍼스의 시스템사용료를 납부하여야 강좌 수강이 가능하니 참고하시기 바랍니다.<br><br> <br><br>1. 수강신청 *빠른 수강신청->교과목코드 입력, 신청 버튼 클릭(수강신청 가능 강좌 목록은 첨부 파일 확인)<br> - 8. 23.(금) 09:00~24:00<br><br> - 9. 2.(월) ~ 9. 6.(금), 09:00~24:00<br><br> - 우리대학 홈페이지에서 타 과목과 동일하게 수강신청 실시<br><br> - 1학년은 18학점, 2~4학년은 19학점 이내에서 신청 (우리대학 수강신청 최대 학점 기준이며 이번 학기 수강신청 학점에 포함되니 유의 바람)<br><br> <br><br>2. 전체 안내사항 참고자료<br> - 2019-2학기 강의시간표 내 OCU 안내사항<br><br> - OCU 홈페이지 : http://cons.ocu.ac.kr/<br><br>  - 아이디 발급 : dsu + 학번<br><br>  - 최초 로그인시 비밀번호 : 아이디와 동일(아이디=비밀번호)<br><br> <br><br>4. 시스템사용료 납부기간 안내 및 방법<br> - 납부기간 : 9. 2일(월) ~ 9. 16일(월) 24시<br><br>※ 시스템사용료 : 과목당 24,000원 (수강신청 제한학점 내 수강), 환불규정은 우리대학과 다르니 OCU 컨소시엄의 규정 확인.<br><br> - OCU 컨소시엄 사이트 로그인 → 사이버강의실 → 시스템사용료 납부 → 전자결제<br><br>※ 자세한 납부방법은 OCU 컨소시엄 사이트 학사공지 시스템사용료 납부 안내 및 [사이버강의실 → 시스템사용료 납부 → 납부안내메뉴얼]을 참고하시기 바랍니다.<br><br> <br><br>기타 안내사항<br> - OCU 컨소시엄 개설교과목의 시험일정은 사전에 수업계획서를 통하여 확인<br><br>  ※ OCU홈페이지 상단 - [수업및학사안내] - [개설교과목] - [수업계획서 및 시범강의] 메뉴에서 로그인과 상관없이 항상 확인가능<br><br> - 시험일정이 중복되지 않도록 학생 본인이 반드시 확인한 후 수강신청을 하여야 하며, 시험일정이 중복되어 성적에 불이익을 받지 않도록 유의<br><br>  ※ 성적확인 및 이의신청기간 : 2019. 12. 18(수) ∼ 12. 22(일), (OCU컨소시엄으로 문의)<br><br>  ※ OCU컨소시엄 개설과목의 최종성적 처리 일정은 우리대학과 다를수 있음.<br><br> <br><br>수업운영은 우리대학이 아닌 OCU컨소시엄에서 진행하며 19-2학기 개강과 관련한 문의는 아래 번호로 문의하시기 바랍니다.<br> - OCU컨소시엄 문의 전화 : 02-2197-4243~4244<br><br> - OCU컨소시엄 문의 메일 : consortium@ocu.ac.kr<br>',0,'BIT',11111111,0,0,12,'2020학년도2학기OCU컨소시엄개설교과목.pdf,','1602569395170_2020학년도2학기OCU컨소시엄개설교과목.pdf,');
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (14,12,4,to_date('20/10/13','RR/MM/DD'),'2020학년도 하계 계절학기 2차 폐강과목 및 현금등록안내',' 2019학년도 하계 계절학기 2차 폐강과목을 알려드리오니, 계절학기를 수강신청한 학생들은 기간 내 현금등록을 꼭 하시기 바랍니다.<br><br>현금 등록[2019. 06. 10(월) ~ 06. 12(수)]시 참조하시기 바랍니다.<br><br> <br><br> ※ 2019학년도 하계 계절학기 2차 폐강과목 : 폐강과목 없음<br><br> <br><br> 1. 2차 폐강과목 확인 후 현금등록<br>가. 현금등록 기간 : 2019. 06. 10(월) ～ 06. 12(수) 09:00～16:00[가상계좌 입금가능시간]<br><br>* 상기 등록 기간 외에 별도 추가등록기간 (수강신청포함) 이 없으므로 기간을 반드시 엄수<br><br>나. 현금등록 : 2차 개설과목 확인 후 해당 가상계좌로 납입<br><br>다. 현금등록 방법은 아래와 같습니다.<br><br>1) 수강료 납부방법<br><br>납 부 방 법<br><br>해 당 과 목<br><br>고지서출력여부<br><br>가상계좌로 입금<br><br>(농협만 가능)<br><br>2019학년도 하계 계절학기 최종개설 모든 과목<br><br>O<br><br>2) 고지서 출력 방법 : 홈페이지 → 학생지원시스템 → 등록 → 계절학기 고지서 출력<br><br>3) 등록금 납부 시 과목별로 분납되지 않습니다.<br><br>* 2과목 수강신청 후 선택적으로 등록금 납부 불가 :반드시 수강신청한 모든 과목의 등록금을 납부하여야 하며, 희망할 경우 전체 현금등록 후 개강 전까지 수강취소원 제출하는 학생에 한하여 환불가능.<br><br> <br><br> 2. 최종 폐강과목 (현금등록 후) 통보일 및 환불신청<br>가. 최종 폐강과목 통보일 : 2019. 06. 13(목) 홈페이지 학사공지사항에 공지<br><br>나. 수강료 환불신청 기간 : 2019. 06. 17(월) ~ 06. 21(금) [09:00~16:00]<br><br>다. 수강료 환불신청 방법 : 본인 통장 사본 지참 후 교무처 계절학기 담당자에게 방문<br><br> <br><br> 3. 계절학기 수업기간 : 2019. 06. 24(월) ~ 2019. 07. 12(금)<br>   15일간 매일 수업[토, 일요일, 공휴일 제외]<br><br> 4. 기타 주의사항<br>가. 폐강에 따른 수강변경 외에는 일체 수강신청 변경이 불가하며, 수강신청 시 중복 이수 하여서는 안된다.<br><br>나. 중복 이수 시 본인 책임이므로, 중복 이수 과목 여부를 꼭 확인한다.<br><br>다. 사이버수업은 시간 중복과 무관하다.(사이버수업 학습요령은 추후 공지사항 참조)<br><br>라. 사이버수업은 반드시 범용공인인증서로 로그인하여야 한다.<br><br>마. 계절학기 총 수업시간수의 4분의 3이상을 출석하지 않은 자는 시험에 응시할 수 없다.<br><br>바. 장학생 선발, 학사경고, 조기졸업 등의 대상자를 결정할 때, 계절학기로 취득한 학점은 반영하지 않는다.<br><br> <br><br> 5. 미정 강의실의 경우 현금등록 마감 후 2019. 06. 13(목) 이후 공지예정.<br> <br><br> 6. 일부 전공수업의 경우 수업 특성상 전공학생만 수강가능<br>    수강 가능여부 해당전공에 문의바람.<br><br> <br><br> 7. 재수강변경제도 알림<br><br> 2015-1학기부터 재수강과목에 대한 최고학점은 B+로 제한됩니다.<br><br> ( 2015-1학기에 받은 F학점 과목을 이번 계절학기부터 재수강 했을 경우 적용 / 이전 학 기 재수강 대상과목은 종전대로 학점제한 없음 )<br><br> <br><br> 8. 기타 문의사항 : ☎ 320-2042, 관련 공지 http://www.dongseo.ac.kr → 학사 공지사항',0,'BIT',11111111,0,0,14,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (13,11,4,to_date('20/10/13','RR/MM/DD'),'2020-2학기 미등록 휴학기간 공고','2019-2학기 미등록 휴학기간 공고<br>2019-2학기 미등록 휴학기간을 아래와 같이 공고합니다.<br>- 아              래 -<br>[미등록 휴학기간 : 등록금을 납부하지 않고 휴학신청이 가능한 기간]<br>[주의사항 : 개강일부터는 등록금을 납부한 학생만 휴학신청 가능]<br>1. 신청기간 : 2019. 6. 20(목) - 8. 23(금)<br>2. 신청절차 : 학생지원시스템 → 학적 → 휴학신청<br>3. 등록금 납부 후 휴학 신청방법<br>    ① 정해진 등록금 납부기간에 등록금 납부 후 위와 같은 절차로 휴학 신청<br>    ② 일반휴학 및 군휴학을 원하는 학생들 중 장학금 지급 대상자는 등록금을 납부한 후 위와 같은 절차로 휴학 신청<br>※ 기타 문의 : 교무처(320-2041/2042, 뉴밀레니엄관 4층)<br>',0,'BIT',11111111,0,0,13,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (15,2,1,to_date('20/10/13','RR/MM/DD'),'[동아리홍보] 사진 동아리에 들어오세요!','안녕하세요 사진동아리에서 신입 부원을 모집합니다!<br>회식 강요 없고, 선후배 사이 돈독한 사진 동아리 입니다.<br>카메라에 대해서 지식이 1도 없어도 저희가 다 알려드리니까 걱정말고 들어오세요:)<br><br>카메라만 지참하시면 됩니다!<br>요즘 핸드폰 카메라도 예쁘게 나오니까 핸드폰만 들고오셔도 됩니다!!<br>간단한 보정법도 다 알려드려요~<br><br>자세한 내용을 알고 싶으시면<br>회장 : ㅇㅇㅇ<br>연락처 : 010) 5555-5555<br>로 연락하셔서 홍보글 보고 연락했다 말씀해주세요!<br>친절하게 안내해드리겠습니다!!!<br><br>+) 첨부한 사진은 얼마전에 출사 나가서 찍은 사진이에요ㅎㅎ',3,'임예람',20201351,0,0,15,'pohangcom.jpg','pohangcom.jpg');
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (11,1,1,to_date('20/10/13','RR/MM/DD'),'도서관이 만족스럽습니다!','시험공부 하기도 좋고,<br>넓고 쾌적하고 책도 많아서 만족스러워요!',0,'임예람',20201351,0,0,11,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (16,13,4,to_date('20/10/13','RR/MM/DD'),'2020학년도 2학기 졸업(영어)시험 장소 공고 (시험 신청자만 응시 가능)','2019학년도 1학기 졸업(영어)시험 장소 공고<br><br> 2019학년도 1학기 졸업(영어)시험 장소를 아래와 같이 공고합니다.<br><br>- 아   래 -<br><br><br>                        1. 시험일시 : 2019. 5. 31(금) 8교시(16:00~16:50)<br><br>                        2. 시험대상 : 2019학년도 1학기 졸업(영어)시험 신청자<br><br>                        3. 시험장소 : 뉴밀레니엄관 3층 328호(영상강의실)<br><br>※ 주의사항<br><br>① 2007학번 이전(2007학번 포함) 학생만 응시 가능<br><br>② 2008학번 이후(2008학번 및 2008년 이후 전과생 포함) 학생이 응시 할 경우 무효 처리<br><br>③ 시험 미신청자 응시 불가<br><br>④ 부정행위자 시험 무효처리<br>',0,'BIT',11111111,0,0,16,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (17,14,4,to_date('20/10/13','RR/MM/DD'),'2020학년도 하계 계절학기 1차 폐강과목 및 정정기간 안내',' 2020학년도 하계 계절학기 1차 폐강과목 및 정정기간안내<br><br> <br><br>  2019학년도 하계 계절학기 1차 폐강과목을 알려드리오니, 계절학기를 수강 신청한 학생들은 폐강과목 확인 후 기간 내 수강정정 및 현금등록 (2차 폐강<br><br> 확인 후)을 꼭 하시기 바랍니다.<br><br> 현금 등록[2019. 06. 10(월) ~ 06. 12(수) 16:00까지]시 참조하시기 바랍니다.<br><br> <br><br> ※ 2019학년도 하계 계절학기 1차 폐강과목 : 첨부파일 참조<br><br> <br><br> 1. 폐강과목 수강정정 및 추가신청<br> 가. 수강정정 및 추가기간 : 2019. 05. 27(월) ~ 05. 28(화) 23:59 까지<br><br>* 상기 수강신청 기간 외에 별도 추가 등록신청이 없으므로 기간을 반드시 엄수.<br><br> 나. 수강신청 변경 및 추가방법 :<br><br>동서대학교 홈페이지 “계절학기 수강신청” 메뉴에 접속, 학교에 오실 필요가 없습니다.<br><br>- 개설강좌조회에서 신청버튼 클릭 또는 빠른 수강신청에서 교과목분반을 입력하여 신청<br><br> <br><br> 2. 수강대상 : 본교 재학생 중 수강희망자 (휴학생은 수강신청 불가)<br> 3. 2차 폐강 확인 후 현금등록<br> 가. 현금등록 기간 : 2019. 06. 10(월) ~ 06. 12(수) 09:00～16:00[가상계좌 입금가능시간]<br><br> 나. 현금등록 : 2차 폐강과목 확인 후 해당 가상계좌로 납입<br><br> 다. 현금등록 방법은 아래와 같습니다.<br><br>1) 수강료 납부 장소<br><br>납 부 방 법<br><br>해 당 과 목<br><br>고지서출력여부<br><br>가상계좌로 입금<br><br>(농협만 가능)<br><br>2019학년도 하계 계절학기 최종개설 모든 과목<br><br>O<br><br>2) 고지서 출력 방법 : 홈페이지 → 학생지원시스템 → 등록 → 계절학기 고지서 출력<br><br> <br><br>3) 유의사항 : 정해진 기간에 납부하지 않을 시 자동으로 수강취소 됩니다.<br><br>(등록금 납부 시 과목별로 분납되지 않습니다.)<br><br>* 2과목 이상 수강신청 후 선택적으로 등록금 납부 불가 : 반드시 수강신청한 모든 과목의 등록금을 납부하여야 하며, 희망할 경우 전체 현금 등록 후 개강 전까지 수강취소원 제출하는 학생에 한하여 환불가능.<br><br> <br><br> <br><br> 4. 계절학기 수업기간 : 2019. 06. 24(월) ~ 2019. 07. 12(금) 15일간 매일 수업<br>   [토, 일요일/공휴일제외]<br><br> <br><br> 5. 기타 주의사항<br> 가. 폐강에 따른 수강변경 외에는 일체 수강신청 변경이 불가하며, 수강신청 시 중복 이수 하여서는 안된다.<br><br> 나. 중복 이수 시 본인 책임이므로, 중복 이수 과목 여부를 꼭 확인한다.<br><br> 다. 사이버수업은 시간 중복과 무관하다.(사이버수업 학습요령은 추후 공지사항 참조)<br><br> 라. 사이버수업은 반드시 범용공인인증서로 로그인하여야 한다.<br><br> 마. 계절학기 총 수업시간수의 4분의 3이상을 출석하지 않은 자는 시험에 응시할 수 없다.<br><br> 바. 장학생 선발, 학사경고, 조기졸업 등의 대상자를 결정할 때, 계절학기로 취득한 학점은 반영하지 않는다.<br><br> 사. 계절학기 채플 사이버수업은 재수강자 및 8월 졸업예정자, 8학기 초과자만 가능하다.<br><br> (채플2,4는 동일컨텐츠로 진행하여 동시수강이 불가능 합니다)<br><br> <br><br> 6. 미정 강의실의 경우 현금등록 마감 후 , 2019. 06. 13(목) 이후 공지예정<br> <br><br> 7. 일부 전공수업의 경우 수업 특성상 전공학생만 수강가능<br>    수강 가능여부 해당전공에 문의바람.<br><br><br>',2,'BIT',11111111,0,0,17,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (18,3,1,to_date('20/10/13','RR/MM/DD'),'책 나눔해요!','교양과목으로 책 구매 했는데 종강하니까 필요가 없네요<br>필요하신문은 댓글 달아주세요<br>무료로 나눔합니다!<br><br><br>(탑메이드북) 바로바로 일본어 첫걸음<br>(박지선 지음) 범죄심리학',3,'임예람',20201351,0,0,18,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (19,15,4,to_date('20/10/13','RR/MM/DD'),'2020-2학기 토익특별강좌 안내 (졸업인증제대비강좌, 토익강좌)','자세한 내용은 첨부파일을 확인해주세요.',3,'BIT',11111111,0,0,19,'aa.txt,face.jpg,','1602656141858_aa.txt,1602656141858_face.jpg,');
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (20,16,4,to_date('20/10/13','RR/MM/DD'),'2020-2학기 유고결석계 및 졸업예정자 중 조기취업관련 공지','2020-2학기 유고결석계 및 졸업예정자 중 조기취업관련 공지<br><br><br>1. 대상 : 마지막학기(학기초과자포함) 재학생 중 조기취업자 및 병결<br><br>* 프리랜서, 창업자의 경우 출석불인정.<br><br>2. 신청기간 및 방법 : 2학기 기말고사 전에 추후 공지 예정.<br><br>*학기초에 초기취업자는 해당 과목 수업 담당 교수님께 서류제출<br><br>* 학기말에 조기취업자는 학과사무실로 서류제출<br><br>(추후 학사공지에 제출기한 및 방법 공지 할 예정)<br><br><br>3. 신청 시 필요서류<br><br>1) 건강보험이 가입되어있는 사업장일 경우<br><br>- 건강보험자격득실확인서, 근로계약서(사본) 붙임파일로 제출<br><br>2) 건강보험 미가입 사업장일 경우<br><br>- 재직증명서, 근로계약서(사본) 붙임파일로 제출<br><br>* 근로계약서에는(회사명, 사업자등록번호, 주소, 대표자성명, 피고용자성명, 피고용자생년월일, 고용기간[입사일자], 급여 상세기재, 주5일, 1일 8시간 이상 근무내용이 기재 되어 있어야 함.)<br><br>4. 주의사항<br><br>- 사이버강의는 유고결석계 불인정<br><br>- 대면강의 및 실시간 화상강의는 인정<br><br>  (단, 대면강의가 중간에 사이버강의로 변경 된 경우 변경전 대면강의만 인정가능)<br><br>- 학기 중간에 취업이 된 경우 취업이 된 시점부터 종강까지 인정<br><br>- 사이버교양과목은 해당사항 없음.<br><br>   (우리몸의이해, 현대사회와정신건강, 역사속의기독교이야기, 서양철학사여행, 한국의문화유산)<br><br>- 학생 본인의 질병 또는 입원으로 관한 유고결석은 질병은 3일, 입원은 14일 이내, 생리공결은 월 1일 가능<br><br>   (사유발생 7일 이내로 학생이 학과사무실로 진료확인서 관련 서류 제출) - 기한엄수<br>',1,'BIT',11111111,0,0,20,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (21,17,4,to_date('20/10/13','RR/MM/DD'),'2020학년도 2학기 BDU(부산디지털대학교)사이버강좌 수업 관련하여 안내드립니다.','대상과목 :   서양철학사여행(101,102분반)<br><br>             우리몸의이해(101,102분반)<br><br>             역사속의기독교이야기(101,102분반)<br><br>             한국의문화유산(101,102분반)<br><br>             현대사회와정신건강(101,102분반)<br><br> <br>해당과목은 부산디지털대학교에서 수업을 진행하는 사이버과목입니다.<br>자세한문의는 051-320-2776으로 연락바랍니다.',5,'BIT',11111111,0,0,21,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (22,18,4,to_date('20/10/13','RR/MM/DD'),'2020-2 성적 열람 방법 안내','2020-1 성적 열람 방법 안내<br><br>2020학년도 1학기 성적 열람 방법 및 기간을 다음과 같이 안내합니다.<br><br>*열람방법<br>   학생지원시스템  → 성적 → 확정전성적조회<br><br>* 2020학년도 강의평가, 재학생 만족도조사를 실시하지 않으시면 성적 열람을 할 수 없습니다.<br><br>성적열람 및 정정기간 : 2020. 07. 14(화) 09시~ 07.15(수) 18시까지<br><br>성적등급표시가 없는 경우는 담당교수 성적 미입력 상태임.<br><br>성적정정기간이 지난 후 7월16일(목) 오후 1시부터는 학생지원시스템 "성적"-"성적 조회"에서 확인 가능<br>',1,'BIT',11111111,0,0,22,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (40,14,1,to_date('20/10/13','RR/MM/DD'),'혹시 1식당에서 지갑 주우신분 없으신가요......','까만색 구찌 지갑,,,,주우신분 없으신가요ㅠㅠㅠ<br>분실물 센터에 아직 들어온게 없다고 하는데...<br>혹시 보신분 있으시면 분실물 센터에 맡겨주세요ㅜㅠㅠ부탁드려요 제발요ㅠㅠ',2,'도지원',20201354,0,0,40,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (44,17,1,to_date('20/10/13','RR/MM/DD'),'[Re] ㅇㅇㅇㅇㅇ 과목 족보입니다 - 물리 첨부해요','필요하신분들 여기 받아가세요!!!',0,'나훈아',20201359,1,1,31,'물리.txt','물리.txt');
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (49,21,1,to_date('20/10/13','RR/MM/DD'),'[Re] 신청 안하고 타면 되요!','그거 8시 30분, 40분, 50분까지 하루에 3번 운행하는 거북이버스에요ㅎㅎ<br>우리학교 언덕 미쳤자나？Dㅋㅋㅋㅋ<br>그래서 움직이는 버스니까 자리만 있으면 타시면 됩니당~',3,'박초롱',20201458,1,1,47,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (31,8,1,to_date('20/10/13','RR/MM/DD'),'ㅇㅇㅇㅇㅇ 과목 족보입니다','졸업반이라 이제 볼일도 없고, 후배님들 보시라고 올립니다<br>참고해서 좋은 성적 받으세요',11,'임예람',20201351,0,0,31,'논리적테이블.txt','논리적테이블.txt');
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (59,29,1,to_date('20/10/14','RR/MM/DD'),'fff','ffff',57,'임예람',20201351,0,0,59,'1.txt,KakaoTalk.jpg,pohangcom.jpg,','1602659937251_1.txt,1602659937251_KakaoTalk.jpg,1602659937251_pohangcom.jpg,');
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (45,18,1,to_date('20/10/13','RR/MM/DD'),'[Re] 지갑 좀전에 제가 발견해서 분실물센터에 맡겼어요!!!','정수기 옆쪽에 떨어져 있더라구요ㅎㅎㅎ<br>방금 맡겼으니 가보시면 될듯요!',5,'고사계',20201360,1,1,40,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (47,19,1,to_date('20/10/13','RR/MM/DD'),'언덕 올라오는 버스는','아무나 타도 되는건가요?<br>아침시간에 줄이 항상 길게 있던데<br>뭐 따로 신청을 해야하거나 하나 싶어서요',4,'최우롱',20201358,0,0,47,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (62,24,4,to_date('20/10/15','RR/MM/DD'),'test','test',1,'BIT',11111111,0,0,62,'face.jpg,Team3_Administrator.zip,','1602724246754_face.jpg,1602724246754_Team3_Administrator.zip,');
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (39,13,1,to_date('20/10/13','RR/MM/DD'),'이제 곧 졸업인데 취준 무섭네요;;','이력서며 자소서며 면접준비며...<br>자격증 열심히 따놔도 무섭네요.....<br>졸업 유예나 할걸 그랬나봐유ㅠ',2,'박환희',20201353,0,0,39,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (41,15,1,to_date('20/10/13','RR/MM/DD'),'학교 근처 ㅇㅇpc방 행사하던데','선후배님들 다 알고 계시죠?ㅋㅋㅋ<br>1시간 800원 행사중이래요~~~',3,'송은아',20201355,0,0,41,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (52,24,1,to_date('20/10/13','RR/MM/DD'),'우리학교 야경 보신적 있으신가요','야경 진짜 이쁜거 알아요?<br>저 기숙사 살아서 맨날 보는데 너무 이뻐요',12,'오지연',20201352,0,0,52,'10.jpg','10.jpg');
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (56,26,1,to_date('20/10/14','RR/MM/DD'),'test','test',2,'권현정',20201350,0,0,56,'lion.png,','1602657649363_lion.png,');
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (57,27,1,to_date('20/10/14','RR/MM/DD'),'ddd','ddd',12,'권현정',20201350,0,0,57,'10.jpg,','1602657784639_10.jpg,');
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (58,28,1,to_date('20/10/14','RR/MM/DD'),'[Re] ddd','ggg',3,'권현정',20201350,1,1,57,'10.jpg,','1602657833879_10.jpg,');
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (32,9,1,to_date('20/10/13','RR/MM/DD'),'신입생 꼭 중앙동아리 가입해야하나요?','저희 과 선배님들이 중앙동아리 필수라고 하던데...<br>저는 알바도 해야되고 동아리는 별로 안하고 싶은데...꼭 들어야하나요ㅠㅠ',8,'임예람',20201351,0,0,32,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (46,5,3,to_date('20/10/13','RR/MM/DD'),'성적 정정 관련해서 문의드려요','성적 정정때문에 교수님께 연락드렸는데<br>메일도 안읽으시고 전화도 안받으시고 문자도 답이 없으십니다...<br>이럴경우 저희가 할 수 있는 방법이 있나요...<br>절대 그 성적이 나올리가 없는 상황이라 꼭 말씀 드려야하는데<br>정정기간이 얼마 안남아서요ㅠㅠ',5,'도지원',20201354,0,0,46,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (35,1,2,to_date('20/10/13','RR/MM/DD'),'저희 졸업식 일정은 학부에 따라서 다른가요? ','듣기로는 학부라고 들었는데<br>학과로 나뉜다는 얘기도 있어서요',0,'임예람',20201351,0,0,35,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (38,3,3,to_date('20/10/13','RR/MM/DD'),'[Re]개명했을 경우에 어떤 절차로 이름을 변경해야 하나요?','안녕하세요.<br>BIT입니다.<br>교무처로 오시면 신속하게 해결해드리겠습니다.<br>감사합니다.',6,'BIT',11111111,1,1,36,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (42,4,2,to_date('20/10/13','RR/MM/DD'),'혹시 교양과목 종류 더 늘려주실 수는 없는건가요?','전필이랑 겹치는 교양과목이 너무 많아서 들을 수 있는 교양이 몇 안되는데<br>혹시 교양 과목이라던지, 시간이라던지 더 늘려주실 수는 없나요?<br>',3,'송은아',20201355,0,0,42,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (63,31,1,to_date('20/10/15','RR/MM/DD'),'asdf','asdf',0,'임예람',20201351,0,0,63,'이력서 양식.hwp,','1602730533787_이력서 양식.hwp,');
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (61,30,1,to_date('20/10/15','RR/MM/DD'),'test','teset',3,'권현정',20201350,0,0,61,'증ㅈ사.JPG,','1602723120280_증ㅈ사.JPG,');
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (34,11,1,to_date('20/10/13','RR/MM/DD'),'저희 주차비 너무 비싸요ㅠㅠ','한달에 3만원..<br>공강도 있는데 3만원 내려고 하니까 괜히 아깝게 느껴져요....<br>일수로 따져서 후불제면 좋을거 같은데 그렇게는 안되겠죠...ㅜㅠㅠㅜ',5,'임예람',20201351,0,0,34,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (43,16,1,to_date('20/10/13','RR/MM/DD'),'[Re] 저희 주차비 너무 비싸요ㅠㅠ','요거 주차권 구매하는 쪽에서 단기주차로 문의 한번 해보세요!<br>저 예전에 일주일에 2번 학교 나갈때 단기로 했었는데 월 주차비보다는 쌌던걸로 기억해요!',0,'손담비',20201357,1,1,34,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (55,6,3,to_date('20/10/14','RR/MM/DD'),'[Re]성적 정정 관련해서 문의드려요','죄송합니다 담당 교수님께 연락드리도록 하겠습니다',0,'BIT',11111111,1,1,46,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (36,2,3,to_date('20/10/13','RR/MM/DD'),'개명했을 경우에 어떤 절차로 이름을 변경해야 하나요?','얼마전에 개명을 했는데 지금 휴학중입니다<br>개강전에는 학적에서 개명처리를 하고싶은데<br>어디서 어떤식으로 진행해야 할까요?',0,'임예람',20201351,0,0,36,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (48,20,1,to_date('20/10/13','RR/MM/DD'),'코로롱 때문에 축제 취소 된거 너무 아쉬워요...♥','코로롱 언제쯤 끝날까요...<br>날씨도 좋아서 축제하고 그러면 너무 좋을거같은데...<br>아쉽네요ㅠㅠ 사랑해요








',17,'권현정',20201350,0,0,48,'AnswerLine.gif','AnswerLine1.gif');
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (50,22,1,to_date('20/10/13','RR/MM/DD'),'새로 추가된 교양 과목 정보라고 하네요!','확정은 아닌거같고, 참고용으로만 보시면 될듯해요!',8,'박초롱',20201458,0,0,50,'subjectinfo.txt','subjectinfo.txt');
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (51,23,1,to_date('20/10/13','RR/MM/DD'),'[Re] [Re] 8시 20분이랑 9시꺼도 추가됐어요!','지각했을때 뛰면 힘들다고 배려해주신듯ㅋㅋㅋㅋㅋㅋㅋ',1,'권현정',20201350,2,2,47,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (54,23,4,to_date('20/10/14','RR/MM/DD'),'학사공지입니다','첨부파일을 참고해주세요.',0,'BIT',11111111,0,0,54,'Team3_Administrator.zip,team3_sql.zip,학생시스템최종본_1014.zip,','1602656929268_Team3_Administrator.zip,1602656929268_team3_sql.zip,1602656929268_학생시스템최종본_1014.zip,');
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (30,7,1,to_date('20/10/13','RR/MM/DD'),'자기소개서 양식 참고하세요~','1학년때 글쓰기 시간에 자료로 나눠주시는 양식이지만,<br>혹시라도 사용하실 분 계실까봐!',13,'임예람',20201351,0,0,30,'이력서 양식.hwp','이력서 양식.hwp');
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (33,10,1,to_date('20/10/13','RR/MM/DD'),'저희 캠퍼스에 cu는 없어요?','왜 다 gs만 있는거 같죠....cu가 좋은데',6,'임예람',20201351,0,0,33,null,null);
Insert into TEAM3.COMMUNITY (COMM_INDEX,COMM_NUM,COMM_GROUPN,COMM_DATE,COMM_TITLE,COMM_CONTENT,COMM_HITS,COMM_WRITER,COMM_STU_ID,COMM_STEP,COMM_LEVEL,COMM_REF,COMM_ORIGINFILENAME,COMM_SYSTEMFILENAME) values (53,25,1,to_date('20/10/14','RR/MM/DD'),'테스트용 글입니다','테스트용 글입니다',29,'권현정',20201350,0,0,53,'Team3_Administrator.zip,team3_sql.zip,학생시스템최종본_1014.zip,','1602652437251_Team3_Administrator.zip,1602652437251_team3_sql.zip,1602652437251_학생시스템최종본_1014.zip,');
REM INSERTING into TEAM3.DEPARTMENT
SET DEFINE OFF;
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700001,'경영학부',600001,'경영학전공');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700001,'경영학부',600002,'회계학전공');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700002,'글로벌경제통상학부',600003,'중국통상/경제학전공');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700002,'글로벌경제통상학부',600004,'무역학전공');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700003,'관광호텔경영학부',600005,'관광항공경영학전공');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700003,'관광호텔경영학부',600006,'호텔외식경영학전공');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700004,'컴퓨터정보공학부',600007,'컴퓨터공학전공');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700005,'컴퓨터정보공학부',600008,'소프트웨어공학전공');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700006,'컴퓨터정보공학부',600009,'네트워크공학전공');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700007,'미디어커뮤니케이션계열',600010,'방송영상학과');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700007,'미디어커뮤니케이션계열',600011,'광고홍보학과');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700007,'미디어커뮤니케이션계열',600012,'영상문학전공');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700008,'사회복지학부',600013,'사회복지학전공');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700008,'사회복지학부',600014,'청소년상담심리전공');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700009,'관광학부',600015,'관광경영학전공');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700009,'관광학부',600016,'호텔경영학전공');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700009,'관광학부',600017,'이벤트/컨벤션학전공');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700010,'보건의료계열',600018,'임상병리학과');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700010,'보건의료계열',600019,'보건행정학과');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700010,'보건의료계열',600020,'간호학과');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700010,'보건의료계열',600021,'방사선학과');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700010,'보건의료계열',600022,'치위생학과');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700010,'보건의료계열',600023,'작업치료학과');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700011,'스포츠과학계열',600024,'운동처방학과');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700011,'스포츠과학계열',600025,'체육학과');
Insert into TEAM3.DEPARTMENT (DEPT_CODE,DEPT_NAME,DEPT_MAJORCODE,DEPT_MAJORNAME) values (700011,'스포츠과학계열',600026,'경호전공');
REM INSERTING into TEAM3.PROFESSOR
SET DEFINE OFF;
Insert into TEAM3.PROFESSOR (PRO_ID,PRO_PWD,PRO_NAME,PRO_ENG_NAME,PRO_JUMIN,PRO_MAJOR,PRO_TEL,PRO_ADDR,PRO_EMAIL) values (80000001,'test','김길동','belita','9401012111120',600001,'01073782333','부산광역시','test@naver.com');
Insert into TEAM3.PROFESSOR (PRO_ID,PRO_PWD,PRO_NAME,PRO_ENG_NAME,PRO_JUMIN,PRO_MAJOR,PRO_TEL,PRO_ADDR,PRO_EMAIL) values (80000002,'test','고건무','charlotte','9401012111121',600001,'01073782334','부산광역시','test@naver.com');
Insert into TEAM3.PROFESSOR (PRO_ID,PRO_PWD,PRO_NAME,PRO_ENG_NAME,PRO_JUMIN,PRO_MAJOR,PRO_TEL,PRO_ADDR,PRO_EMAIL) values (80000003,'test','연개소','cynthia','9401012111122',600002,'01073782335','부산광역시','test@naver.com');
Insert into TEAM3.PROFESSOR (PRO_ID,PRO_PWD,PRO_NAME,PRO_ENG_NAME,PRO_JUMIN,PRO_MAJOR,PRO_TEL,PRO_ADDR,PRO_EMAIL) values (80000004,'test','이자벨','dana','9401012111123',600003,'01073782336','부산광역시','test@naver.com');
Insert into TEAM3.PROFESSOR (PRO_ID,PRO_PWD,PRO_NAME,PRO_ENG_NAME,PRO_JUMIN,PRO_MAJOR,PRO_TEL,PRO_ADDR,PRO_EMAIL) values (80000005,'test','거룩한','dior','9401012111124',600004,'01073782337','부산광역시','test@naver.com');
Insert into TEAM3.PROFESSOR (PRO_ID,PRO_PWD,PRO_NAME,PRO_ENG_NAME,PRO_JUMIN,PRO_MAJOR,PRO_TEL,PRO_ADDR,PRO_EMAIL) values (80000006,'test','연산군','doris','9401012111125',600005,'01073782338','부산광역시','test@naver.com');
Insert into TEAM3.PROFESSOR (PRO_ID,PRO_PWD,PRO_NAME,PRO_ENG_NAME,PRO_JUMIN,PRO_MAJOR,PRO_TEL,PRO_ADDR,PRO_EMAIL) values (80000007,'test','김자겸','edith','9401012111126',600006,'01073782339','부산광역시','test@naver.com');
Insert into TEAM3.PROFESSOR (PRO_ID,PRO_PWD,PRO_NAME,PRO_ENG_NAME,PRO_JUMIN,PRO_MAJOR,PRO_TEL,PRO_ADDR,PRO_EMAIL) values (80000008,'test','송은아','emma','9401012111127',600007,'01073782340','부산광역시','test@naver.com');
Insert into TEAM3.PROFESSOR (PRO_ID,PRO_PWD,PRO_NAME,PRO_ENG_NAME,PRO_JUMIN,PRO_MAJOR,PRO_TEL,PRO_ADDR,PRO_EMAIL) values (80000009,'test','이효리','erica','9401012111128',600008,'01073782339','부산광역시','test@naver.com');
Insert into TEAM3.PROFESSOR (PRO_ID,PRO_PWD,PRO_NAME,PRO_ENG_NAME,PRO_JUMIN,PRO_MAJOR,PRO_TEL,PRO_ADDR,PRO_EMAIL) values (80000010,'test','손담비','frances','9401012111129',600009,'01073782340','부산광역시','test@naver.com');
REM INSERTING into TEAM3.SCHEDULE
SET DEFINE OFF;
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (1,'2020-2학기 개강',2020,9,1,2020,9,1,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (2,'수업일수 1/4선',2020,9,1,2020,9,28,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (3,'추석연휴(휴업일)/지정수업일(12.9(수)-12.11(금))',2020,9,30,2020,10,2,1);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (4,'개천절',2020,10,3,2020,10,3,1);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (5,'수업일수 1/3선',2020,10,7,2020,10,7,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (6,'한글날(휴업일)/지정수업일(12.8(화))',2020,10,9,2020,10,9,1);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (7,'2020-2학기 중간시험',2020,10,20,2020,10,26,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (8,'수업일수 2/4선',2020,10,26,2020,10,26,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (9,'수업일수 3/4선',2020,11,23,2020,11,23,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (10,'공휴일 대체수업(지정수업일)',2020,12,8,2020,12,14,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (11,'2020-2학기 기말시험',2020,12,15,2020,12,21,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (12,'성적입력',2020,12,15,2020,12,24,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (13,'동기방학, 계절수업 개강',2020,12,22,2020,12,22,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (14,'성탄절',2020,12,25,2020,12,25,1);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (15,'성적공시',2020,12,28,2020,12,31,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (16,'개강',2019,3,4,2019,3,4,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (17,'수업일수 1/4선',2019,3,30,2019,3,30,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (18,'수업일수 1/3선',2019,4,9,2019,4,9,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (19,'중간고사',2019,4,22,2019,4,26,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (20,'수업일수 2/4선',2019,4,27,2019,4,27,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (21,'근로자의날(휴업일)/지정수업일:6.12(수)',2019,5,1,2019,5,1,1);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (22,'대체휴업일(어린이날)/지정수업일:6.10(월)',2019,5,6,2019,5,6,1);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (23,'대동제',2019,5,7,2019,5,9,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (24,'수업일수 3/4선',2019,5,25,2019,5,25,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (25,'현충일/지정수업일:6/13(목)',2019,6,6,2019,6,6,1);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (26,'개교기념일(대체휴업일)/지정수업일:6.14(금)',2019,6,7,2019,6,7,1);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (27,'지정보강수업',2019,6,10,2019,6,14,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (28,'기말고사',2019,6,17,2019,6,21,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (29,'성적입력',2019,6,17,2019,5,26,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (30,'하기방학 시작, 계절수업 개강',2019,6,24,2019,6,24,0);
Insert into TEAM3.SCHEDULE (SCHE_NUM,SCHE_CONTENT,SCHE_STARTYEAR,SCHE_STARTMONTH,SCHE_STARTDAY,SCHE_ENDYEAR,SCHE_ENDMONTH,SCHE_ENDDAY,SCHE_HOLIDAY) values (31,'성적공시',2019,6,27,2019,7,1,0);
REM INSERTING into TEAM3.SCORECLASS
SET DEFINE OFF;
Insert into TEAM3.SCORECLASS (SC_SUBJ_CODE,SC_STU_ID,SC_PRO_ID,SC_YEAR,SC_GRADE,SC_SEMESTER,SC_SCORE,SC_RETAKE,SC_SCORE2) values (141002,20201350,80000001,2015,1,1,4,'수강','A');
Insert into TEAM3.SCORECLASS (SC_SUBJ_CODE,SC_STU_ID,SC_PRO_ID,SC_YEAR,SC_GRADE,SC_SEMESTER,SC_SCORE,SC_RETAKE,SC_SCORE2) values (141004,20201352,80000002,2015,3,1,4.5,'수강','A+');
Insert into TEAM3.SCORECLASS (SC_SUBJ_CODE,SC_STU_ID,SC_PRO_ID,SC_YEAR,SC_GRADE,SC_SEMESTER,SC_SCORE,SC_RETAKE,SC_SCORE2) values (141004,20201353,80000003,2018,4,2,3.5,'재수강','B+');
Insert into TEAM3.SCORECLASS (SC_SUBJ_CODE,SC_STU_ID,SC_PRO_ID,SC_YEAR,SC_GRADE,SC_SEMESTER,SC_SCORE,SC_RETAKE,SC_SCORE2) values (141005,20201350,80000001,2015,1,1,4.5,'수강','A+');
Insert into TEAM3.SCORECLASS (SC_SUBJ_CODE,SC_STU_ID,SC_PRO_ID,SC_YEAR,SC_GRADE,SC_SEMESTER,SC_SCORE,SC_RETAKE,SC_SCORE2) values (141006,20201350,80000001,2015,1,1,4.5,'수강','A+');
Insert into TEAM3.SCORECLASS (SC_SUBJ_CODE,SC_STU_ID,SC_PRO_ID,SC_YEAR,SC_GRADE,SC_SEMESTER,SC_SCORE,SC_RETAKE,SC_SCORE2) values (141007,20201350,80000001,2015,1,1,4.5,'수강','A+');
Insert into TEAM3.SCORECLASS (SC_SUBJ_CODE,SC_STU_ID,SC_PRO_ID,SC_YEAR,SC_GRADE,SC_SEMESTER,SC_SCORE,SC_RETAKE,SC_SCORE2) values (141008,20201350,80000001,2015,1,1,4.5,'수강','A+');
Insert into TEAM3.SCORECLASS (SC_SUBJ_CODE,SC_STU_ID,SC_PRO_ID,SC_YEAR,SC_GRADE,SC_SEMESTER,SC_SCORE,SC_RETAKE,SC_SCORE2) values (141009,20201350,80000001,2015,1,1,3.5,'수강','B+');
Insert into TEAM3.SCORECLASS (SC_SUBJ_CODE,SC_STU_ID,SC_PRO_ID,SC_YEAR,SC_GRADE,SC_SEMESTER,SC_SCORE,SC_RETAKE,SC_SCORE2) values (141010,20201350,80000001,2015,1,1,4,'수강','A');
Insert into TEAM3.SCORECLASS (SC_SUBJ_CODE,SC_STU_ID,SC_PRO_ID,SC_YEAR,SC_GRADE,SC_SEMESTER,SC_SCORE,SC_RETAKE,SC_SCORE2) values (141006,20201350,80000001,2015,3,2,4.5,'수강','A+');
Insert into TEAM3.SCORECLASS (SC_SUBJ_CODE,SC_STU_ID,SC_PRO_ID,SC_YEAR,SC_GRADE,SC_SEMESTER,SC_SCORE,SC_RETAKE,SC_SCORE2) values (141007,20201350,80000001,2015,3,2,4.5,'수강','A+');
Insert into TEAM3.SCORECLASS (SC_SUBJ_CODE,SC_STU_ID,SC_PRO_ID,SC_YEAR,SC_GRADE,SC_SEMESTER,SC_SCORE,SC_RETAKE,SC_SCORE2) values (141008,20201350,80000001,2015,3,2,4.5,'수강','A+');
Insert into TEAM3.SCORECLASS (SC_SUBJ_CODE,SC_STU_ID,SC_PRO_ID,SC_YEAR,SC_GRADE,SC_SEMESTER,SC_SCORE,SC_RETAKE,SC_SCORE2) values (141009,20201350,80000001,2015,3,2,3.5,'수강','B+');
Insert into TEAM3.SCORECLASS (SC_SUBJ_CODE,SC_STU_ID,SC_PRO_ID,SC_YEAR,SC_GRADE,SC_SEMESTER,SC_SCORE,SC_RETAKE,SC_SCORE2) values (141010,20201350,80000001,2015,3,2,4,'수강','A');
Insert into TEAM3.SCORECLASS (SC_SUBJ_CODE,SC_STU_ID,SC_PRO_ID,SC_YEAR,SC_GRADE,SC_SEMESTER,SC_SCORE,SC_RETAKE,SC_SCORE2) values (141006,20201350,80000001,2016,2,1,3.5,'수강','B+');
Insert into TEAM3.SCORECLASS (SC_SUBJ_CODE,SC_STU_ID,SC_PRO_ID,SC_YEAR,SC_GRADE,SC_SEMESTER,SC_SCORE,SC_RETAKE,SC_SCORE2) values (141007,20201350,80000001,2016,2,1,4.5,'수강','A+');
Insert into TEAM3.SCORECLASS (SC_SUBJ_CODE,SC_STU_ID,SC_PRO_ID,SC_YEAR,SC_GRADE,SC_SEMESTER,SC_SCORE,SC_RETAKE,SC_SCORE2) values (141008,20201350,80000001,2016,2,1,4.5,'수강','A+');
Insert into TEAM3.SCORECLASS (SC_SUBJ_CODE,SC_STU_ID,SC_PRO_ID,SC_YEAR,SC_GRADE,SC_SEMESTER,SC_SCORE,SC_RETAKE,SC_SCORE2) values (141009,20201350,80000001,2016,2,1,2,'수강','C');
Insert into TEAM3.SCORECLASS (SC_SUBJ_CODE,SC_STU_ID,SC_PRO_ID,SC_YEAR,SC_GRADE,SC_SEMESTER,SC_SCORE,SC_RETAKE,SC_SCORE2) values (141010,20201350,80000001,2016,2,1,3,'수강','B+');
REM INSERTING into TEAM3.STUDENT
SET DEFINE OFF;
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201470,'111111','오지연','ojiyeon','111111-222222',1,600001,1,80000001,'000-1111-2222','000-1111-2222','부산 강서구 생곡동 1598-1','ojy2333@naver.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201350,'test','권현정','tomas','9401012111111',1,600001,3,80000001,'01076771800','01073782333','부산 강서구 가덕해안로 3 2003호        ','hyunj2@daum.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201351,'test','임예람','jessy','9401012111112',1,600001,3,80000001,'01073782335','01073782334','부산광역시 ','test@naver.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201352,'test','오지연','ojiyeon','9401012111113',1,600001,3,80000001,'01073782336','01073782335','부산광역시','test@naver.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201353,'test','박환희','amelia','9401012111114',2,600001,3,80000001,'01073782337','01073782336','부산광역시','test@naver.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201354,'test','도지원','avery','9401012111115',1,600001,3,80000001,'01073782338','01073782337','부산광역시','test@naver.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201355,'test','송은아','adela','9401012111116',1,600001,3,80000001,'01073782339','01073782338','부산광역시','test@naver.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201356,'test','이효리','adalee','9401012111117',1,600001,3,80000001,'01073782340','01073782339','부산광역시','test@naver.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201357,'test','손담비','bibiane','9401012111118',1,600001,3,80000001,'01073782341','01073782340','부산광역시','test@naver.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201358,'test','최우롱','bianca','9401012111119',1,600001,3,80000001,'01073782342','01073782341','부산광역시','test@naver.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201359,'test','나훈아','bonita','9401012111120',1,600001,3,80000001,'01073782343','01073782342','부산광역시','test@naver.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201360,'test','고사계','bono','9401012111121',1,600001,3,80000001,'01073782344','01073782343','부산광역시','test@naver.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201450,'test','김길동','belita','9401012111122',1,600002,4,80000002,'01073782345','01073782344','부산광역시','test@naver.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201451,'test','고건무','charlotte','9401012111123',1,600002,4,80000002,'01073782346','01073782345','부산광역시','test@naver.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201452,'test','연개소','cynthia','9401012111124',1,600002,4,80000002,'01073782347','01073782346','부산광역시','test@naver.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201453,'test','이자벨','dana','9401012111125',1,600002,4,80000002,'01073782348','01073782347','부산광역시','test@naver.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201454,'test','거룩한','dior','9401012111126',1,600002,4,80000002,'01073782349','01073782348','부산광역시','test@naver.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201455,'test','연산군','doris','9401012111127',1,600002,4,80000002,'01073782350','01073782349','부산광역시','test@naver.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201456,'test','김자겸','edith','9401012111128',1,600002,4,80000002,'01073782351','01073782350','부산광역시','test@naver.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201457,'test','이완용','emma','9401012111129',1,600002,4,80000002,'01073782352','01073782351','부산광역시','test@naver.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201458,'test','박초롱','erica','9401012111130',1,600002,4,80000002,'01073782353','01073782352','부산광역시','test@naver.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201459,'test','도지원','frances','9401012111131',1,600002,4,80000002,'01073782354','01073782353','부산광역시','test@naver.com');
Insert into TEAM3.STUDENT (STU_ID,STU_PWD,STU_NAME,STU_ENG_NAME,STU_JUMIN,STU_STATE,STU_MAJOR,STU_GRADE,STU_PRO,STU_TEL,STU_EMG_TEL,STU_ADDR,STU_EMAIL) values (20201460,'test','송은아','grace','9401012111132',1,600002,4,80000002,'01073782355','01073782354','부산광역시','test@naver.com');
REM INSERTING into TEAM3.SUBJECT
SET DEFINE OFF;
Insert into TEAM3.SUBJECT (SUBJ_CODE,SUBJ_STATE,SUBJ_MAJORCODE,SUBJ_NAME,SUBJ_HAKJUM,SUBJ_PRO,SUBJ_ROOM,SUBJ_DAY1,SUBJ_DAY2) values (141002,'전공필수',600007,'소프트웨어실습',3,80000001,'상학관','월,1,3',null);
Insert into TEAM3.SUBJECT (SUBJ_CODE,SUBJ_STATE,SUBJ_MAJORCODE,SUBJ_NAME,SUBJ_HAKJUM,SUBJ_PRO,SUBJ_ROOM,SUBJ_DAY1,SUBJ_DAY2) values (141003,'전공선택',600007,'SW보안심화',2,80000002,'별관','월,4,5','화,1,1');
Insert into TEAM3.SUBJECT (SUBJ_CODE,SUBJ_STATE,SUBJ_MAJORCODE,SUBJ_NAME,SUBJ_HAKJUM,SUBJ_PRO,SUBJ_ROOM,SUBJ_DAY1,SUBJ_DAY2) values (141004,'교양',600007,'고대예술문화',2,80000003,'중앙관','월,2,3','수,5,5');
Insert into TEAM3.SUBJECT (SUBJ_CODE,SUBJ_STATE,SUBJ_MAJORCODE,SUBJ_NAME,SUBJ_HAKJUM,SUBJ_PRO,SUBJ_ROOM,SUBJ_DAY1,SUBJ_DAY2) values (141005,'전공필수',600007,'운영체제',3,80000001,'uit303','월,6,6','목,2,4');
Insert into TEAM3.SUBJECT (SUBJ_CODE,SUBJ_STATE,SUBJ_MAJORCODE,SUBJ_NAME,SUBJ_HAKJUM,SUBJ_PRO,SUBJ_ROOM,SUBJ_DAY1,SUBJ_DAY2) values (141006,'대학정책',600007,'영어회화1',2,80000003,'경영관','수,1,2',null);
Insert into TEAM3.SUBJECT (SUBJ_CODE,SUBJ_STATE,SUBJ_MAJORCODE,SUBJ_NAME,SUBJ_HAKJUM,SUBJ_PRO,SUBJ_ROOM,SUBJ_DAY1,SUBJ_DAY2) values (141007,'전공선택',600007,'컴퓨터정보개론',3,80000001,'uit305','금,2,4',null);
Insert into TEAM3.SUBJECT (SUBJ_CODE,SUBJ_STATE,SUBJ_MAJORCODE,SUBJ_NAME,SUBJ_HAKJUM,SUBJ_PRO,SUBJ_ROOM,SUBJ_DAY1,SUBJ_DAY2) values (141008,'대학정책',600007,'고급C프로그래밍',3,80000001,'uit305','수,3,5',null);
Insert into TEAM3.SUBJECT (SUBJ_CODE,SUBJ_STATE,SUBJ_MAJORCODE,SUBJ_NAME,SUBJ_HAKJUM,SUBJ_PRO,SUBJ_ROOM,SUBJ_DAY1,SUBJ_DAY2) values (141009,'전공선택',600007,'리눅스시스템',3,80000001,'uit303','화,2,4','목,5,5');
Insert into TEAM3.SUBJECT (SUBJ_CODE,SUBJ_STATE,SUBJ_MAJORCODE,SUBJ_NAME,SUBJ_HAKJUM,SUBJ_PRO,SUBJ_ROOM,SUBJ_DAY1,SUBJ_DAY2) values (141010,'전공선택',600007,'인터넷프로그래밍',3,80000001,'uit301,2,4','수,6,6',null);
Insert into TEAM3.SUBJECT (SUBJ_CODE,SUBJ_STATE,SUBJ_MAJORCODE,SUBJ_NAME,SUBJ_HAKJUM,SUBJ_PRO,SUBJ_ROOM,SUBJ_DAY1,SUBJ_DAY2) values (141011,'전공선택',600007,'디지털시스템',3,80000001,'uit103','금,2,4',null);
REM INSERTING into TEAM3.TEMP
SET DEFINE OFF;
Insert into TEAM3.TEMP (NO,TITLE) values (1,'this is title');
Insert into TEAM3.TEMP (NO,TITLE) values (2,'this is title');
Insert into TEAM3.TEMP (NO,TITLE) values (7,'testt2');
Insert into TEAM3.TEMP (NO,TITLE) values (4,'test3');
Insert into TEAM3.TEMP (NO,TITLE) values (5,'test3');
Insert into TEAM3.TEMP (NO,TITLE) values (3,'test');
Insert into TEAM3.TEMP (NO,TITLE) values (6,'dddd');
--------------------------------------------------------
--  Constraints for Table PROFESSOR
--------------------------------------------------------

  ALTER TABLE "TEAM3"."PROFESSOR" ADD PRIMARY KEY ("PRO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEPARTMENT
--------------------------------------------------------

  ALTER TABLE "TEAM3"."DEPARTMENT" ADD PRIMARY KEY ("DEPT_MAJORCODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ADMININFO
--------------------------------------------------------

  ALTER TABLE "TEAM3"."ADMININFO" ADD PRIMARY KEY ("ADMIN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMMUNITY
--------------------------------------------------------

  ALTER TABLE "TEAM3"."COMMUNITY" ADD PRIMARY KEY ("COMM_INDEX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SUBJECT
--------------------------------------------------------

  ALTER TABLE "TEAM3"."SUBJECT" ADD PRIMARY KEY ("SUBJ_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SCHEDULE
--------------------------------------------------------

  ALTER TABLE "TEAM3"."SCHEDULE" ADD PRIMARY KEY ("SCHE_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "TEAM3"."STUDENT" ADD PRIMARY KEY ("STU_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ATTEND
--------------------------------------------------------

  ALTER TABLE "TEAM3"."ATTEND" ADD CONSTRAINT "FK_ATD_PRO_ID" FOREIGN KEY ("ATD_PRO_ID")
	  REFERENCES "TEAM3"."PROFESSOR" ("PRO_ID") ENABLE;
 
  ALTER TABLE "TEAM3"."ATTEND" ADD CONSTRAINT "FK_ATD_STU_ID" FOREIGN KEY ("ATD_STU_ID")
	  REFERENCES "TEAM3"."STUDENT" ("STU_ID") ENABLE;
 
  ALTER TABLE "TEAM3"."ATTEND" ADD CONSTRAINT "FK_SUBJ_CODE" FOREIGN KEY ("ATD_SUBJ_CODE")
	  REFERENCES "TEAM3"."SUBJECT" ("SUBJ_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "TEAM3"."COMMENTS" ADD CONSTRAINT "CMT_INDEX" FOREIGN KEY ("CMT_INDEX")
	  REFERENCES "TEAM3"."COMMUNITY" ("COMM_INDEX") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROFESSOR
--------------------------------------------------------

  ALTER TABLE "TEAM3"."PROFESSOR" ADD CONSTRAINT "FK_PRO_MAJOR" FOREIGN KEY ("PRO_MAJOR")
	  REFERENCES "TEAM3"."DEPARTMENT" ("DEPT_MAJORCODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SCORECLASS
--------------------------------------------------------

  ALTER TABLE "TEAM3"."SCORECLASS" ADD CONSTRAINT "FK_SC_PRO_ID" FOREIGN KEY ("SC_PRO_ID")
	  REFERENCES "TEAM3"."PROFESSOR" ("PRO_ID") ENABLE;
 
  ALTER TABLE "TEAM3"."SCORECLASS" ADD CONSTRAINT "FK_SC_STU_ID" FOREIGN KEY ("SC_STU_ID")
	  REFERENCES "TEAM3"."STUDENT" ("STU_ID") ENABLE;
 
  ALTER TABLE "TEAM3"."SCORECLASS" ADD CONSTRAINT "FK_SC_SUBJ_CODE" FOREIGN KEY ("SC_SUBJ_CODE")
	  REFERENCES "TEAM3"."SUBJECT" ("SUBJ_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "TEAM3"."STUDENT" ADD CONSTRAINT "FK_STU_MAJOR" FOREIGN KEY ("STU_MAJOR")
	  REFERENCES "TEAM3"."DEPARTMENT" ("DEPT_MAJORCODE") ENABLE;
 
  ALTER TABLE "TEAM3"."STUDENT" ADD CONSTRAINT "FK_STU_PRO" FOREIGN KEY ("STU_PRO")
	  REFERENCES "TEAM3"."PROFESSOR" ("PRO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SUBJECT
--------------------------------------------------------

  ALTER TABLE "TEAM3"."SUBJECT" ADD CONSTRAINT "FK_SUBJ_MAJORCODE" FOREIGN KEY ("SUBJ_MAJORCODE")
	  REFERENCES "TEAM3"."DEPARTMENT" ("DEPT_MAJORCODE") ENABLE;
 
  ALTER TABLE "TEAM3"."SUBJECT" ADD CONSTRAINT "FK_SUBJ_PRO" FOREIGN KEY ("SUBJ_PRO")
	  REFERENCES "TEAM3"."PROFESSOR" ("PRO_ID") ENABLE;
