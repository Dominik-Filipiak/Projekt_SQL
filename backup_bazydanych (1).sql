--------------------------------------------------------
--  File created - niedziela-stycznia-26-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BILET_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "IE88191"."BILET_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Sequence CENA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "IE88191"."CENA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Sequence DANE_OSOBOWE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "IE88191"."DANE_OSOBOWE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Sequence FILM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "IE88191"."FILM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Sequence FOTEL_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "IE88191"."FOTEL_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Sequence GATUNEK_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "IE88191"."GATUNEK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Sequence KLIENT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "IE88191"."KLIENT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Sequence MIEJSCE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "IE88191"."MIEJSCE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 521 CACHE 20 NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Sequence REZYSER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "IE88191"."REZYSER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Sequence RZAD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "IE88191"."RZAD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Sequence SALA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "IE88191"."SALA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Sequence SEANS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "IE88191"."SEANS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 261 CACHE 20 NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Table BILETY
--------------------------------------------------------

  CREATE TABLE "IE88191"."BILETY" 
   (	"BILET_ID" NUMBER(6,0) DEFAULT "IE88191"."BILET_SEQ"."NEXTVAL", 
	"DATA_ZAKUPU" DATE, 
	"RODZAJ" VARCHAR2(50 BYTE), 
	"SEANS_ID" NUMBER(6,0), 
	"MIEJSCE_ID" NUMBER(6,0), 
	"CENA_ID" NUMBER(6,0), 
	"KLIENT_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CENY
--------------------------------------------------------

  CREATE TABLE "IE88191"."CENY" 
   (	"CENA_ID" NUMBER(6,0) DEFAULT "IE88191"."CENA_SEQ"."NEXTVAL", 
	"CENA" NUMBER(10,0), 
	"ULGA" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DANE_OSOBOWE
--------------------------------------------------------

  CREATE TABLE "IE88191"."DANE_OSOBOWE" 
   (	"DANE_ID" NUMBER(6,0) DEFAULT "IE88191"."DANE_OSOBOWE_SEQ"."NEXTVAL", 
	"IMIE" VARCHAR2(20 BYTE), 
	"NAZWISKO" VARCHAR2(20 BYTE), 
	"ADRES" VARCHAR2(100 BYTE), 
	"KOD_POCZTOWY" VARCHAR2(6 BYTE), 
	"NR_TEL" NUMBER(9,0), 
	"KLIENT_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FILMY
--------------------------------------------------------

  CREATE TABLE "IE88191"."FILMY" 
   (	"FILM_ID" NUMBER(6,0) DEFAULT "IE88191"."FILM_SEQ"."NEXTVAL", 
	"NAZWA" VARCHAR2(60 BYTE), 
	"ROK" NUMBER(4,0), 
	"CZAS_TRWANIA" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FOTELE
--------------------------------------------------------

  CREATE TABLE "IE88191"."FOTELE" 
   (	"FOTEL_ID" NUMBER(6,0) DEFAULT "IE88191"."FOTEL_SEQ"."NEXTVAL", 
	"NUMER" NUMBER(2,0), 
	"KOLOR" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GATUNKI
--------------------------------------------------------

  CREATE TABLE "IE88191"."GATUNKI" 
   (	"GATUNEK_ID" NUMBER(6,0) DEFAULT "IE88191"."GATUNEK_SEQ"."NEXTVAL", 
	"NAZWA" VARCHAR2(50 BYTE), 
	"OPIS" VARCHAR2(120 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GATUNKI_FILMOW
--------------------------------------------------------

  CREATE TABLE "IE88191"."GATUNKI_FILMOW" 
   (	"FILM_ID" NUMBER(6,0), 
	"GATUNEK_ID" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KLIENCI
--------------------------------------------------------

  CREATE TABLE "IE88191"."KLIENCI" 
   (	"KLIENT_ID" NUMBER(10,0) DEFAULT "IE88191"."KLIENT_SEQ"."NEXTVAL", 
	"NAZWA_UZYTKOWNIKA" VARCHAR2(50 BYTE), 
	"TYP_KONTA" VARCHAR2(50 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MIEJSCA
--------------------------------------------------------

  CREATE TABLE "IE88191"."MIEJSCA" 
   (	"MIEJSCE_ID" NUMBER(6,0) DEFAULT "IE88191"."MIEJSCE_SEQ"."NEXTVAL", 
	"RODZAJ" VARCHAR2(100 BYTE), 
	"CZY_DOSTEPNE" VARCHAR2(3 BYTE), 
	"RZAD_ID" NUMBER(6,0), 
	"FOTEL_ID" NUMBER(6,0), 
	"SALA_ID" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REZYSERIE_FILMOW
--------------------------------------------------------

  CREATE TABLE "IE88191"."REZYSERIE_FILMOW" 
   (	"FILM_ID" NUMBER(6,0), 
	"REZ_ID" VARCHAR2(6 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REZYSERZY
--------------------------------------------------------

  CREATE TABLE "IE88191"."REZYSERZY" 
   (	"REZ_ID" VARCHAR2(6 BYTE) DEFAULT TO_CHAR("IE88191"."REZYSER_SEQ"."NEXTVAL"), 
	"IMIE" VARCHAR2(50 BYTE), 
	"NAZWISKO" VARCHAR2(50 BYTE), 
	"NARODOWOSC" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RZEDY
--------------------------------------------------------

  CREATE TABLE "IE88191"."RZEDY" 
   (	"RZAD_ID" NUMBER(6,0) DEFAULT "IE88191"."RZAD_SEQ"."NEXTVAL", 
	"NUMER" NUMBER(2,0), 
	"ILOSC_FOTELI" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SALE
--------------------------------------------------------

  CREATE TABLE "IE88191"."SALE" 
   (	"SALA_ID" NUMBER(6,0) DEFAULT "IE88191"."SALA_SEQ"."NEXTVAL", 
	"NUMER" NUMBER(2,0), 
	"ILOSC_MIEJSC" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SEANSE
--------------------------------------------------------

  CREATE TABLE "IE88191"."SEANSE" 
   (	"SEANS_ID" NUMBER(6,0) DEFAULT "IE88191"."SEANS_SEQ"."NEXTVAL", 
	"DATA" DATE, 
	"GODZINA" VARCHAR2(5 BYTE), 
	"SALA_ID" NUMBER(6,0), 
	"FILM_ID" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View FILMY_WIELE_GATUNKOW
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "IE88191"."FILMY_WIELE_GATUNKOW" ("NAZWA") AS 
  SELECT f.nazwa
FROM filmy f
WHERE (SELECT COUNT(*) FROM gatunki_filmow gf WHERE gf.film_id = f.film_id) >= 2
  AND EXISTS (
      SELECT 1
      FROM seanse s
      WHERE s.film_id = f.film_id
        AND s.data BETWEEN ADD_MONTHS(SYSDATE, -2) AND SYSDATE
  )
;
--------------------------------------------------------
--  DDL for View KLIENCI_BEZ_TELEFONU
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "IE88191"."KLIENCI_BEZ_TELEFONU" ("IMIE", "NAZWISKO", "ADRES", "NAZWA_UZYTKOWNIKA") AS 
  SELECT d.imie, d.nazwisko, d.adres, k.nazwa_uzytkownika
FROM dane_osobowe d
JOIN klienci k ON d.klient_id = k.klient_id
WHERE d.nr_tel IS NULL
;
--------------------------------------------------------
--  DDL for View KLIENCI_CORBET
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "IE88191"."KLIENCI_CORBET" ("NAZWA_UZYTKOWNIKA", "IMIE", "NAZWISKO") AS 
  SELECT DISTINCT k.nazwa_uzytkownika, d.imie, d.nazwisko
FROM klienci k
JOIN dane_osobowe d ON k.klient_id = d.klient_id
JOIN bilety b ON k.klient_id = b.klient_id
JOIN seanse s ON b.seans_id = s.seans_id
JOIN filmy f ON s.film_id = f.film_id
WHERE f.film_id IN (
    SELECT rf.film_id
    FROM rezyserie_filmow rf
    JOIN rezyserzy r ON rf.rez_id = r.rez_id
    WHERE r.nazwisko = 'Corbet'
)
;
--------------------------------------------------------
--  DDL for View KLIENCI_DLUGIE_NAZWISKA
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "IE88191"."KLIENCI_DLUGIE_NAZWISKA" ("NAZWA_UZYTKOWNIKA", "IMIE", "NAZWISKO", "DLUGOSC_IMIENIA_NAZWISKA") AS 
  SELECT k.nazwa_uzytkownika, d.imie, d.nazwisko, LENGTH(d.imie || d.nazwisko) AS dlugosc_imienia_nazwiska
FROM klienci k
JOIN dane_osobowe d ON k.klient_id = d.klient_id
WHERE LENGTH(d.imie || d.nazwisko) > 10
;
--------------------------------------------------------
--  DDL for View KLIENCI_MIEDZYNARODOWE_NR_TEL
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "IE88191"."KLIENCI_MIEDZYNARODOWE_NR_TEL" ("IMIE", "NAZWISKO", "NR_TEL_MIEDZYNARODOWY") AS 
  SELECT d.imie, d.nazwisko, '+48' || TO_CHAR(d.nr_tel) AS nr_tel_miedzynarodowy
FROM dane_osobowe d
WHERE d.nr_tel IS NOT NULL
;
--------------------------------------------------------
--  DDL for View KLIENCI_OSTATNIE_BILETY
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "IE88191"."KLIENCI_OSTATNIE_BILETY" ("NAZWA_UZYTKOWNIKA", "IMIE", "NAZWISKO", "LICZBA_BILETOW", "DATA_OSTATNIEGO_BILETU") AS 
  SELECT 
    k.nazwa_uzytkownika, 
    d.imie, 
    d.nazwisko,
    (SELECT COUNT(*) 
     FROM bilety b 
     WHERE b.klient_id = k.klient_id) AS liczba_biletow,
    NVL(TO_CHAR(ostatni_zakup.data_zakupu, 'YYYY-MM-DD'), 'Brak') AS data_ostatniego_biletu
FROM 
    klienci k
JOIN 
    dane_osobowe d ON k.klient_id = d.klient_id
LEFT JOIN 
    (SELECT b.klient_id, MAX(b.data_zakupu) AS data_zakupu
     FROM bilety b
     GROUP BY b.klient_id) ostatni_zakup
ON 
    k.klient_id = ostatni_zakup.klient_id
;
--------------------------------------------------------
--  DDL for View SEANSE_NA_PRZYSZLY_MIESIAC
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "IE88191"."SEANSE_NA_PRZYSZLY_MIESIAC" ("SEANS_ID", "FILM", "DATA", "GODZINA") AS 
  SELECT s.seans_id, f.nazwa AS film, s.data, s.godzina
FROM seanse s
JOIN filmy f ON s.film_id = f.film_id
WHERE s.data BETWEEN ADD_MONTHS(SYSDATE, 1) AND LAST_DAY(ADD_MONTHS(SYSDATE, 1))
;
--------------------------------------------------------
--  DDL for View SEANSE_PRZYSZLY_MIESIAC
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "IE88191"."SEANSE_PRZYSZLY_MIESIAC" ("SEANS_ID", "FILM", "DATA", "GODZINA") AS 
  SELECT s.seans_id, f.nazwa AS film, s.data, s.godzina
FROM seanse s
JOIN filmy f ON s.film_id = f.film_id
WHERE s.data BETWEEN ADD_MONTHS(SYSDATE, 1) AND LAST_DAY(ADD_MONTHS(SYSDATE, 1))
;
--------------------------------------------------------
--  DDL for View SZCZEGOLY_BILETOW
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "IE88191"."SZCZEGOLY_BILETOW" ("DATA_ZAKUPU", "RODZAJ", "FILM", "IMIE", "NAZWISKO", "CENA") AS 
  SELECT b.data_zakupu, b.rodzaj, f.nazwa AS film, d.imie, d.nazwisko, c.cena
FROM bilety b
JOIN seanse s ON b.seans_id = s.seans_id
JOIN filmy f ON s.film_id = f.film_id
JOIN klienci k ON b.klient_id = k.klient_id
JOIN dane_osobowe d ON k.klient_id = d.klient_id
JOIN ceny c ON b.cena_id = c.cena_id
;
--------------------------------------------------------
--  DDL for View WYDATKI_KLIENTOW
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "IE88191"."WYDATKI_KLIENTOW" ("NAZWA_UZYTKOWNIKA", "IMIE", "NAZWISKO", "TOTAL_WYDATKI") AS 
  SELECT k.nazwa_uzytkownika, d.imie, d.nazwisko, SUM(c.cena) AS total_wydatki
FROM klienci k
JOIN bilety b ON k.klient_id = b.klient_id
JOIN ceny c ON b.cena_id = c.cena_id
JOIN dane_osobowe d ON k.klient_id = d.klient_id
GROUP BY k.nazwa_uzytkownika, d.imie, d.nazwisko
;
REM INSERTING into IE88191.BILETY
SET DEFINE OFF;
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('32',to_date('25/01/17','RR/MM/DD'),'Standard','11','11','1','2');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('33',to_date('25/01/17','RR/MM/DD'),'Standard','12','12','2','6');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('34',to_date('25/01/17','RR/MM/DD'),'Premium','13','13','3','9');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('35',to_date('25/01/17','RR/MM/DD'),'Standard','14','14','4','8');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('36',to_date('25/01/17','RR/MM/DD'),'Premium','15','15','5','8');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('37',to_date('25/01/18','RR/MM/DD'),'Standard','16','16','1','3');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('38',to_date('25/01/18','RR/MM/DD'),'Standard','17','17','1','1');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('39',to_date('25/01/18','RR/MM/DD'),'Premium','18','18','2','2');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('40',to_date('25/01/18','RR/MM/DD'),'Standard','19','19','3','6');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('41',to_date('25/01/18','RR/MM/DD'),'Premium','20','20','4','7');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('42',to_date('25/01/18','RR/MM/DD'),'Premium','1','78','2','6');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('43',to_date('25/01/19','RR/MM/DD'),'Standard','9','54','1','6');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('44',to_date('25/01/17','RR/MM/DD'),'Premium','8','26','3','3');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('45',to_date('25/01/18','RR/MM/DD'),'Standard','9','3','5','5');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('46',to_date('25/01/19','RR/MM/DD'),'Premium','10','70','5','3');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('47',to_date('25/01/17','RR/MM/DD'),'Standard','1','18','1','10');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('48',to_date('25/01/18','RR/MM/DD'),'Premium','5','65','3','2');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('49',to_date('25/01/19','RR/MM/DD'),'Standard','10','32','5','9');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('50',to_date('25/01/17','RR/MM/DD'),'Standard','3','70','2','7');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('51',to_date('25/01/18','RR/MM/DD'),'Standard','10','68','4','7');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('52',to_date('25/01/19','RR/MM/DD'),'Premium','8','11','2','5');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('53',to_date('25/01/17','RR/MM/DD'),'Standard','3','80','2','8');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('54',to_date('25/01/18','RR/MM/DD'),'Standard','7','98','4','1');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('55',to_date('25/01/19','RR/MM/DD'),'Premium','1','25','4','3');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('56',to_date('25/01/17','RR/MM/DD'),'Standard','9','29','4','9');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('57',to_date('25/01/18','RR/MM/DD'),'Standard','4','69','3','1');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('58',to_date('25/01/19','RR/MM/DD'),'Premium','8','94','2','2');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('59',to_date('25/01/17','RR/MM/DD'),'Standard','5','86','2','6');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('60',to_date('25/01/18','RR/MM/DD'),'Standard','5','94','5','6');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('61',to_date('25/01/19','RR/MM/DD'),'Standard','1','79','4','5');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('62',to_date('25/01/17','RR/MM/DD'),'Premium','3','52','1','4');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('63',to_date('25/01/18','RR/MM/DD'),'Premium','2','50','5','10');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('64',to_date('25/01/19','RR/MM/DD'),'Standard','1','53','2','1');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('65',to_date('25/01/17','RR/MM/DD'),'Premium','9','45','3','5');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('66',to_date('25/01/18','RR/MM/DD'),'Standard','3','65','4','2');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('67',to_date('25/01/19','RR/MM/DD'),'Premium','10','30','3','6');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('68',to_date('25/01/17','RR/MM/DD'),'Premium','1','97','1','2');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('69',to_date('25/01/18','RR/MM/DD'),'Standard','4','12','4','2');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('70',to_date('25/01/19','RR/MM/DD'),'Standard','6','89','5','9');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('71',to_date('25/01/17','RR/MM/DD'),'Standard','10','77','2','2');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('22',to_date('25/01/15','RR/MM/DD'),'Standard','2','2','2','2');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('23',to_date('25/01/15','RR/MM/DD'),'Premium','3','3','3','3');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('24',to_date('25/01/15','RR/MM/DD'),'Standard','4','4','4','4');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('25',to_date('25/01/15','RR/MM/DD'),'Premium','5','5','5','5');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('26',to_date('25/01/15','RR/MM/DD'),'Standard','6','6','1','6');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('27',to_date('25/01/16','RR/MM/DD'),'Standard','7','7','1','7');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('28',to_date('25/01/16','RR/MM/DD'),'Premium','8','8','2','8');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('29',to_date('25/01/16','RR/MM/DD'),'Standard','9','9','3','9');
Insert into IE88191.BILETY (BILET_ID,DATA_ZAKUPU,RODZAJ,SEANS_ID,MIEJSCE_ID,CENA_ID,KLIENT_ID) values ('30',to_date('25/01/16','RR/MM/DD'),'Premium','10','10','4','10');
REM INSERTING into IE88191.CENY
SET DEFINE OFF;
Insert into IE88191.CENY (CENA_ID,CENA,ULGA) values ('1','25','brak');
Insert into IE88191.CENY (CENA_ID,CENA,ULGA) values ('2','10','Pracownicza');
Insert into IE88191.CENY (CENA_ID,CENA,ULGA) values ('3','20','Studencka');
Insert into IE88191.CENY (CENA_ID,CENA,ULGA) values ('4','18','Senior');
Insert into IE88191.CENY (CENA_ID,CENA,ULGA) values ('5','12','Dzieci');
REM INSERTING into IE88191.DANE_OSOBOWE
SET DEFINE OFF;
Insert into IE88191.DANE_OSOBOWE (DANE_ID,IMIE,NAZWISKO,ADRES,KOD_POCZTOWY,NR_TEL,KLIENT_ID) values ('13','Zbigniew','Andrzejewski','ul. Zielona 10, Warszawa','00-001',null,'12');
Insert into IE88191.DANE_OSOBOWE (DANE_ID,IMIE,NAZWISKO,ADRES,KOD_POCZTOWY,NR_TEL,KLIENT_ID) values ('1','Jan','Kowalski','ul. Zielona 1, Warszawa','00-001','123456789','1');
Insert into IE88191.DANE_OSOBOWE (DANE_ID,IMIE,NAZWISKO,ADRES,KOD_POCZTOWY,NR_TEL,KLIENT_ID) values ('2','Anna','Nowak','ul. Słoneczna 12, Kraków','30-002','987654321','2');
Insert into IE88191.DANE_OSOBOWE (DANE_ID,IMIE,NAZWISKO,ADRES,KOD_POCZTOWY,NR_TEL,KLIENT_ID) values ('3','Piotr','Wiśniewski','ul. Wiosenna 5, Gdańsk','80-003','456789123','3');
Insert into IE88191.DANE_OSOBOWE (DANE_ID,IMIE,NAZWISKO,ADRES,KOD_POCZTOWY,NR_TEL,KLIENT_ID) values ('4','Maria','Zając','ul. Jesienna 9, Poznań','60-004','789123456','4');
Insert into IE88191.DANE_OSOBOWE (DANE_ID,IMIE,NAZWISKO,ADRES,KOD_POCZTOWY,NR_TEL,KLIENT_ID) values ('5','Katarzyna','Mazur','ul. Polna 7, Wrocław','50-005','321654987','5');
Insert into IE88191.DANE_OSOBOWE (DANE_ID,IMIE,NAZWISKO,ADRES,KOD_POCZTOWY,NR_TEL,KLIENT_ID) values ('6','Tomasz','Lewandowski','ul. Lipowa 3, Łódź','90-006','654321987','6');
Insert into IE88191.DANE_OSOBOWE (DANE_ID,IMIE,NAZWISKO,ADRES,KOD_POCZTOWY,NR_TEL,KLIENT_ID) values ('7','Agnieszka','Kamińska','ul. Ogrodowa 2, Lublin','20-007','321987654','7');
Insert into IE88191.DANE_OSOBOWE (DANE_ID,IMIE,NAZWISKO,ADRES,KOD_POCZTOWY,NR_TEL,KLIENT_ID) values ('8','Michał','Wróbel','ul. Akacjowa 8, Grudziądz','60-022','692345789','8');
Insert into IE88191.DANE_OSOBOWE (DANE_ID,IMIE,NAZWISKO,ADRES,KOD_POCZTOWY,NR_TEL,KLIENT_ID) values ('9','Krzysztof','Kamyk','ul. Owocowa 12, Lubln','24-007','325787654','9');
Insert into IE88191.DANE_OSOBOWE (DANE_ID,IMIE,NAZWISKO,ADRES,KOD_POCZTOWY,NR_TEL,KLIENT_ID) values ('10','Mieczysław','Wrona','ul. Konwaliowa 2, Bytom','60-001','697345089','10');
REM INSERTING into IE88191.FILMY
SET DEFINE OFF;
Insert into IE88191.FILMY (FILM_ID,NAZWA,ROK,CZAS_TRWANIA) values ('1','Flow','2024','80');
Insert into IE88191.FILMY (FILM_ID,NAZWA,ROK,CZAS_TRWANIA) values ('2','The Brutalist','2024','210');
Insert into IE88191.FILMY (FILM_ID,NAZWA,ROK,CZAS_TRWANIA) values ('3','Emilia Pérez','2024','120');
Insert into IE88191.FILMY (FILM_ID,NAZWA,ROK,CZAS_TRWANIA) values ('4','Dziewczyna z igłą','2024','100');
Insert into IE88191.FILMY (FILM_ID,NAZWA,ROK,CZAS_TRWANIA) values ('5','Sztuka pięknego życia','2024','110');
Insert into IE88191.FILMY (FILM_ID,NAZWA,ROK,CZAS_TRWANIA) values ('6','The Outrun','2024','95');
Insert into IE88191.FILMY (FILM_ID,NAZWA,ROK,CZAS_TRWANIA) values ('7','Kleks i wynalazek...','2025','85');
Insert into IE88191.FILMY (FILM_ID,NAZWA,ROK,CZAS_TRWANIA) values ('8','Nienawiść','1995','98');
Insert into IE88191.FILMY (FILM_ID,NAZWA,ROK,CZAS_TRWANIA) values ('9','Wolf Man','2025','105');
Insert into IE88191.FILMY (FILM_ID,NAZWA,ROK,CZAS_TRWANIA) values ('10','Kompletnie nieznany','2024','115');
Insert into IE88191.FILMY (FILM_ID,NAZWA,ROK,CZAS_TRWANIA) values ('11','Dune: Part Two','2024','166');
REM INSERTING into IE88191.FOTELE
SET DEFINE OFF;
Insert into IE88191.FOTELE (FOTEL_ID,NUMER,KOLOR) values ('1','1','czerwony');
Insert into IE88191.FOTELE (FOTEL_ID,NUMER,KOLOR) values ('2','2','czerwony');
Insert into IE88191.FOTELE (FOTEL_ID,NUMER,KOLOR) values ('3','3','czerwony');
Insert into IE88191.FOTELE (FOTEL_ID,NUMER,KOLOR) values ('4','4','czerwony');
Insert into IE88191.FOTELE (FOTEL_ID,NUMER,KOLOR) values ('5','5','czerwony');
Insert into IE88191.FOTELE (FOTEL_ID,NUMER,KOLOR) values ('6','6','niebieski');
Insert into IE88191.FOTELE (FOTEL_ID,NUMER,KOLOR) values ('7','7','niebieski');
Insert into IE88191.FOTELE (FOTEL_ID,NUMER,KOLOR) values ('8','8','niebieski');
Insert into IE88191.FOTELE (FOTEL_ID,NUMER,KOLOR) values ('9','9','niebieski');
Insert into IE88191.FOTELE (FOTEL_ID,NUMER,KOLOR) values ('10','10','niebieski');
REM INSERTING into IE88191.GATUNKI
SET DEFINE OFF;
Insert into IE88191.GATUNKI (GATUNEK_ID,NAZWA,OPIS) values ('1','Akcja','Filmy z dynamicznymi scenami walki, poĹ›cigami itp.');
Insert into IE88191.GATUNKI (GATUNEK_ID,NAZWA,OPIS) values ('2','Animacja','Filmy tworzone za pomocÄ… animacji, czÄ™sto skierowane do dzieci.');
Insert into IE88191.GATUNKI (GATUNEK_ID,NAZWA,OPIS) values ('3','Horror','Filmy majÄ…ce na celu wywoĹ‚anie strachu, napiÄ™cia.');
Insert into IE88191.GATUNKI (GATUNEK_ID,NAZWA,OPIS) values ('4','Dramat','Filmy koncentrujÄ…ce siÄ™ na emocjach i ĹĽyciu bohaterĂłw.');
Insert into IE88191.GATUNKI (GATUNEK_ID,NAZWA,OPIS) values ('5','Komedia','Filmy majÄ…ce na celu rozbawiÄ‡ widza.');
Insert into IE88191.GATUNKI (GATUNEK_ID,NAZWA,OPIS) values ('6','Sci-Fi','Filmy science fiction z elementami technologii, kosmosu i przyszĹ‚oĹ›ci.');
Insert into IE88191.GATUNKI (GATUNEK_ID,NAZWA,OPIS) values ('7','Thriller','Filmy peĹ‚ne napiÄ™cia, z elementami zaskoczenia i zagroĹĽenia.');
Insert into IE88191.GATUNKI (GATUNEK_ID,NAZWA,OPIS) values ('8','Dokumentalny','Filmy przedstawiajÄ…ce rzeczywiste wydarzenia lub postacie.');
Insert into IE88191.GATUNKI (GATUNEK_ID,NAZWA,OPIS) values ('9','Muzical','Filmy, w ktĂłrych elementy muzyczne i taneczne sÄ… integralnÄ… czÄ™Ĺ›ciÄ… fabuĹ‚y.');
Insert into IE88191.GATUNKI (GATUNEK_ID,NAZWA,OPIS) values ('10','Romantyczny','Filmy koncentrujÄ…ce siÄ™ na relacjach miĹ‚osnych i emocjach bohaterĂłw.');
REM INSERTING into IE88191.GATUNKI_FILMOW
SET DEFINE OFF;
Insert into IE88191.GATUNKI_FILMOW (FILM_ID,GATUNEK_ID) values ('1','1');
Insert into IE88191.GATUNKI_FILMOW (FILM_ID,GATUNEK_ID) values ('2','2');
Insert into IE88191.GATUNKI_FILMOW (FILM_ID,GATUNEK_ID) values ('3','3');
Insert into IE88191.GATUNKI_FILMOW (FILM_ID,GATUNEK_ID) values ('4','4');
Insert into IE88191.GATUNKI_FILMOW (FILM_ID,GATUNEK_ID) values ('5','5');
Insert into IE88191.GATUNKI_FILMOW (FILM_ID,GATUNEK_ID) values ('6','6');
Insert into IE88191.GATUNKI_FILMOW (FILM_ID,GATUNEK_ID) values ('7','7');
Insert into IE88191.GATUNKI_FILMOW (FILM_ID,GATUNEK_ID) values ('8','8');
Insert into IE88191.GATUNKI_FILMOW (FILM_ID,GATUNEK_ID) values ('9','9');
Insert into IE88191.GATUNKI_FILMOW (FILM_ID,GATUNEK_ID) values ('10','10');
Insert into IE88191.GATUNKI_FILMOW (FILM_ID,GATUNEK_ID) values ('11','4');
Insert into IE88191.GATUNKI_FILMOW (FILM_ID,GATUNEK_ID) values ('11','6');
REM INSERTING into IE88191.KLIENCI
SET DEFINE OFF;
Insert into IE88191.KLIENCI (KLIENT_ID,NAZWA_UZYTKOWNIKA,TYP_KONTA,EMAIL) values ('12','zbignieftralala','standard','Zbigniew1967@gmail.com');
Insert into IE88191.KLIENCI (KLIENT_ID,NAZWA_UZYTKOWNIKA,TYP_KONTA,EMAIL) values ('1','starrysky21','standard','jan.kowalski@gamil.com');
Insert into IE88191.KLIENCI (KLIENT_ID,NAZWA_UZYTKOWNIKA,TYP_KONTA,EMAIL) values ('2','brightwave88','standard','anna.nowak@gmail.com');
Insert into IE88191.KLIENCI (KLIENT_ID,NAZWA_UZYTKOWNIKA,TYP_KONTA,EMAIL) values ('3','silvermoon99','standard','piotr.zielinski@gmail.com');
Insert into IE88191.KLIENCI (KLIENT_ID,NAZWA_UZYTKOWNIKA,TYP_KONTA,EMAIL) values ('4','goldenlion55','standard','ewa.wisniewska@gmail.com');
Insert into IE88191.KLIENCI (KLIENT_ID,NAZWA_UZYTKOWNIKA,TYP_KONTA,EMAIL) values ('5','crimsonhawk23','standard','tomasz.dabrowski@gmail.com');
Insert into IE88191.KLIENCI (KLIENT_ID,NAZWA_UZYTKOWNIKA,TYP_KONTA,EMAIL) values ('6','oceanbreeze34','standard','katarzyna.kwiatkowska@gmail.com');
Insert into IE88191.KLIENCI (KLIENT_ID,NAZWA_UZYTKOWNIKA,TYP_KONTA,EMAIL) values ('7','forestwhisper72','standard','marek.szymanski@gmail.com');
Insert into IE88191.KLIENCI (KLIENT_ID,NAZWA_UZYTKOWNIKA,TYP_KONTA,EMAIL) values ('8','blueshadow67','standard','alicja.wojciechowska@gmail.com');
Insert into IE88191.KLIENCI (KLIENT_ID,NAZWA_UZYTKOWNIKA,TYP_KONTA,EMAIL) values ('9','sunnymeadow11','standard','kamil.lewandowski@gmail.com');
Insert into IE88191.KLIENCI (KLIENT_ID,NAZWA_UZYTKOWNIKA,TYP_KONTA,EMAIL) values ('10','thunderstrike40','standard','magdalena.kaczmarek@gmail.com');
REM INSERTING into IE88191.MIEJSCA
SET DEFINE OFF;
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('480','premium','NIE','8','9','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('481','premium','NIE','8','10','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('482','premium','NIE','9','1','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('483','premium','NIE','9','2','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('484','premium','NIE','9','3','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('485','premium','NIE','9','4','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('486','premium','NIE','9','5','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('487','premium','NIE','9','6','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('488','premium','NIE','9','7','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('489','premium','NIE','9','8','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('490','premium','NIE','9','9','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('491','premium','NIE','9','10','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('492','premium','NIE','10','1','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('493','premium','NIE','10','2','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('494','premium','NIE','10','3','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('495','premium','NIE','10','4','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('496','premium','NIE','10','5','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('497','premium','NIE','10','6','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('498','premium','NIE','10','7','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('499','premium','NIE','10','8','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('500','premium','NIE','10','9','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('501','premium','NIE','10','10','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('2','standard','NIE','1','1','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('3','standard','NIE','1','2','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('4','standard','NIE','1','3','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('5','standard','NIE','1','4','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('6','dostepne','TAK','1','5','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('7','dostepne','TAK','1','6','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('8','standard','NIE','1','7','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('9','standard','NIE','1','8','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('10','standard','NIE','1','9','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('11','standard','NIE','1','10','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('12','standard','NIE','2','1','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('13','standard','NIE','2','2','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('14','standard','NIE','2','3','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('15','standard','NIE','2','4','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('16','standard','NIE','2','5','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('17','standard','NIE','2','6','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('18','standard','NIE','2','7','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('19','standard','NIE','2','8','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('20','standard','NIE','2','9','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('21','standard','NIE','2','10','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('22','standard','NIE','3','1','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('23','standard','NIE','3','2','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('24','standard','NIE','3','3','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('25','standard','NIE','3','4','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('26','standard','NIE','3','5','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('27','standard','NIE','3','6','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('28','standard','NIE','3','7','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('29','standard','NIE','3','8','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('30','standard','NIE','3','9','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('31','standard','NIE','3','10','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('32','standard','NIE','4','1','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('33','standard','NIE','4','2','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('34','standard','NIE','4','3','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('35','standard','NIE','4','4','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('36','standard','NIE','4','5','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('37','standard','NIE','4','6','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('38','standard','NIE','4','7','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('39','standard','NIE','4','8','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('40','standard','NIE','4','9','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('41','standard','NIE','4','10','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('42','standard','NIE','5','1','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('43','standard','NIE','5','2','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('44','standard','NIE','5','3','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('45','standard','NIE','5','4','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('46','standard','NIE','5','5','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('47','standard','NIE','5','6','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('48','standard','NIE','5','7','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('49','standard','NIE','5','8','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('50','standard','NIE','5','9','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('51','standard','NIE','5','10','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('52','premium','NIE','6','1','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('53','premium','NIE','6','2','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('54','premium','NIE','6','3','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('55','premium','NIE','6','4','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('56','premium','NIE','6','5','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('57','premium','NIE','6','6','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('58','premium','NIE','6','7','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('59','premium','NIE','6','8','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('60','premium','NIE','6','9','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('61','premium','NIE','6','10','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('62','premium','NIE','7','1','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('63','premium','NIE','7','2','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('64','premium','NIE','7','3','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('65','premium','NIE','7','4','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('66','premium','NIE','7','5','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('67','premium','NIE','7','6','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('68','premium','NIE','7','7','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('69','premium','NIE','7','8','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('70','premium','NIE','7','9','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('71','premium','NIE','7','10','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('72','premium','NIE','8','1','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('73','premium','NIE','8','2','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('74','premium','NIE','8','3','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('75','premium','NIE','8','4','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('76','premium','NIE','8','5','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('77','premium','NIE','8','6','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('78','premium','NIE','8','7','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('79','premium','NIE','8','8','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('80','premium','NIE','8','9','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('81','premium','NIE','8','10','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('82','premium','NIE','9','1','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('83','premium','NIE','9','2','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('84','premium','NIE','9','3','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('85','premium','NIE','9','4','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('86','premium','NIE','9','5','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('87','premium','NIE','9','6','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('88','premium','NIE','9','7','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('89','premium','NIE','9','8','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('90','premium','NIE','9','9','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('91','premium','NIE','9','10','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('92','premium','NIE','10','1','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('93','premium','NIE','10','2','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('94','premium','NIE','10','3','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('95','premium','NIE','10','4','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('96','premium','NIE','10','5','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('97','premium','NIE','10','6','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('98','premium','NIE','10','7','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('99','premium','NIE','10','8','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('100','premium','NIE','10','9','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('101','premium','NIE','10','10','1');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('102','standard','NIE','1','1','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('103','standard','NIE','1','2','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('104','standard','NIE','1','3','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('105','standard','NIE','1','4','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('106','dostepne','TAK','1','5','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('107','dostepne','TAK','1','6','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('108','standard','NIE','1','7','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('109','standard','NIE','1','8','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('110','standard','NIE','1','9','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('111','standard','NIE','1','10','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('112','standard','NIE','2','1','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('113','standard','NIE','2','2','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('114','standard','NIE','2','3','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('115','standard','NIE','2','4','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('116','standard','NIE','2','5','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('117','standard','NIE','2','6','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('118','standard','NIE','2','7','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('119','standard','NIE','2','8','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('120','standard','NIE','2','9','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('121','standard','NIE','2','10','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('122','standard','NIE','3','1','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('123','standard','NIE','3','2','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('124','standard','NIE','3','3','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('125','standard','NIE','3','4','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('126','standard','NIE','3','5','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('127','standard','NIE','3','6','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('128','standard','NIE','3','7','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('129','standard','NIE','3','8','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('130','standard','NIE','3','9','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('131','standard','NIE','3','10','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('132','standard','NIE','4','1','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('133','standard','NIE','4','2','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('134','standard','NIE','4','3','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('135','standard','NIE','4','4','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('136','standard','NIE','4','5','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('137','standard','NIE','4','6','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('138','standard','NIE','4','7','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('139','standard','NIE','4','8','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('140','standard','NIE','4','9','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('141','standard','NIE','4','10','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('142','standard','NIE','5','1','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('143','standard','NIE','5','2','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('144','standard','NIE','5','3','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('145','standard','NIE','5','4','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('146','standard','NIE','5','5','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('147','standard','NIE','5','6','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('148','standard','NIE','5','7','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('149','standard','NIE','5','8','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('150','standard','NIE','5','9','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('151','standard','NIE','5','10','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('152','premium','NIE','6','1','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('153','premium','NIE','6','2','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('154','premium','NIE','6','3','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('155','premium','NIE','6','4','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('156','premium','NIE','6','5','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('157','premium','NIE','6','6','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('158','premium','NIE','6','7','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('159','premium','NIE','6','8','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('160','premium','NIE','6','9','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('161','premium','NIE','6','10','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('162','premium','NIE','7','1','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('163','premium','NIE','7','2','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('164','premium','NIE','7','3','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('165','premium','NIE','7','4','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('166','premium','NIE','7','5','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('167','premium','NIE','7','6','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('168','premium','NIE','7','7','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('169','premium','NIE','7','8','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('170','premium','NIE','7','9','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('171','premium','NIE','7','10','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('172','premium','NIE','8','1','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('173','premium','NIE','8','2','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('174','premium','NIE','8','3','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('175','premium','NIE','8','4','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('176','premium','NIE','8','5','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('177','premium','NIE','8','6','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('178','premium','NIE','8','7','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('179','premium','NIE','8','8','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('180','premium','NIE','8','9','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('181','premium','NIE','8','10','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('182','premium','NIE','9','1','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('183','premium','NIE','9','2','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('184','premium','NIE','9','3','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('185','premium','NIE','9','4','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('186','premium','NIE','9','5','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('187','premium','NIE','9','6','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('188','premium','NIE','9','7','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('189','premium','NIE','9','8','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('190','premium','NIE','9','9','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('191','premium','NIE','9','10','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('192','premium','NIE','10','1','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('193','premium','NIE','10','2','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('194','premium','NIE','10','3','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('195','premium','NIE','10','4','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('196','premium','NIE','10','5','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('197','premium','NIE','10','6','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('198','premium','NIE','10','7','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('199','premium','NIE','10','8','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('200','premium','NIE','10','9','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('201','premium','NIE','10','10','2');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('202','standard','NIE','1','1','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('203','standard','NIE','1','2','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('204','standard','NIE','1','3','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('205','standard','NIE','1','4','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('206','dostepne','TAK','1','5','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('207','dostepne','TAK','1','6','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('208','standard','NIE','1','7','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('209','standard','NIE','1','8','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('210','standard','NIE','1','9','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('211','standard','NIE','1','10','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('212','standard','NIE','2','1','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('213','standard','NIE','2','2','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('214','standard','NIE','2','3','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('215','standard','NIE','2','4','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('216','standard','NIE','2','5','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('217','standard','NIE','2','6','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('218','standard','NIE','2','7','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('219','standard','NIE','2','8','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('220','standard','NIE','2','9','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('221','standard','NIE','2','10','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('222','standard','NIE','3','1','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('223','standard','NIE','3','2','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('224','standard','NIE','3','3','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('225','standard','NIE','3','4','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('226','standard','NIE','3','5','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('227','standard','NIE','3','6','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('228','standard','NIE','3','7','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('229','standard','NIE','3','8','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('230','standard','NIE','3','9','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('231','standard','NIE','3','10','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('232','standard','NIE','4','1','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('233','standard','NIE','4','2','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('234','standard','NIE','4','3','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('235','standard','NIE','4','4','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('236','standard','NIE','4','5','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('237','standard','NIE','4','6','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('238','standard','NIE','4','7','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('239','standard','NIE','4','8','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('240','standard','NIE','4','9','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('241','standard','NIE','4','10','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('242','standard','NIE','5','1','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('243','standard','NIE','5','2','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('244','standard','NIE','5','3','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('245','standard','NIE','5','4','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('246','standard','NIE','5','5','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('247','standard','NIE','5','6','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('248','standard','NIE','5','7','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('249','standard','NIE','5','8','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('250','standard','NIE','5','9','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('251','standard','NIE','5','10','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('252','premium','NIE','6','1','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('253','premium','NIE','6','2','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('254','premium','NIE','6','3','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('255','premium','NIE','6','4','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('256','premium','NIE','6','5','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('257','premium','NIE','6','6','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('258','premium','NIE','6','7','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('259','premium','NIE','6','8','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('260','premium','NIE','6','9','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('261','premium','NIE','6','10','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('262','premium','NIE','7','1','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('263','premium','NIE','7','2','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('264','premium','NIE','7','3','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('265','premium','NIE','7','4','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('266','premium','NIE','7','5','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('267','premium','NIE','7','6','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('268','premium','NIE','7','7','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('269','premium','NIE','7','8','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('270','premium','NIE','7','9','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('271','premium','NIE','7','10','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('272','premium','NIE','8','1','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('273','premium','NIE','8','2','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('274','premium','NIE','8','3','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('275','premium','NIE','8','4','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('276','premium','NIE','8','5','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('277','premium','NIE','8','6','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('278','premium','NIE','8','7','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('279','premium','NIE','8','8','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('280','premium','NIE','8','9','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('281','premium','NIE','8','10','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('282','premium','NIE','9','1','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('283','premium','NIE','9','2','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('284','premium','NIE','9','3','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('285','premium','NIE','9','4','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('286','premium','NIE','9','5','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('287','premium','NIE','9','6','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('288','premium','NIE','9','7','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('289','premium','NIE','9','8','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('290','premium','NIE','9','9','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('291','premium','NIE','9','10','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('292','premium','NIE','10','1','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('293','premium','NIE','10','2','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('294','premium','NIE','10','3','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('295','premium','NIE','10','4','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('296','premium','NIE','10','5','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('297','premium','NIE','10','6','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('298','premium','NIE','10','7','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('299','premium','NIE','10','8','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('300','premium','NIE','10','9','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('301','premium','NIE','10','10','3');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('302','standard','NIE','1','1','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('303','standard','NIE','1','2','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('304','standard','NIE','1','3','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('305','standard','NIE','1','4','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('306','dostepne','TAK','1','5','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('307','dostepne','TAK','1','6','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('308','standard','NIE','1','7','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('309','standard','NIE','1','8','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('310','standard','NIE','1','9','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('311','standard','NIE','1','10','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('312','standard','NIE','2','1','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('313','standard','NIE','2','2','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('314','standard','NIE','2','3','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('315','standard','NIE','2','4','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('316','standard','NIE','2','5','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('317','standard','NIE','2','6','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('318','standard','NIE','2','7','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('319','standard','NIE','2','8','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('320','standard','NIE','2','9','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('321','standard','NIE','2','10','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('322','standard','NIE','3','1','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('323','standard','NIE','3','2','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('324','standard','NIE','3','3','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('325','standard','NIE','3','4','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('326','standard','NIE','3','5','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('327','standard','NIE','3','6','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('328','standard','NIE','3','7','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('329','standard','NIE','3','8','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('330','standard','NIE','3','9','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('331','standard','NIE','3','10','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('332','standard','NIE','4','1','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('333','standard','NIE','4','2','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('334','standard','NIE','4','3','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('335','standard','NIE','4','4','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('336','standard','NIE','4','5','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('337','standard','NIE','4','6','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('338','standard','NIE','4','7','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('339','standard','NIE','4','8','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('340','standard','NIE','4','9','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('341','standard','NIE','4','10','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('342','standard','NIE','5','1','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('343','standard','NIE','5','2','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('344','standard','NIE','5','3','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('345','standard','NIE','5','4','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('346','standard','NIE','5','5','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('347','standard','NIE','5','6','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('348','standard','NIE','5','7','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('349','standard','NIE','5','8','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('350','standard','NIE','5','9','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('351','standard','NIE','5','10','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('352','premium','NIE','6','1','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('353','premium','NIE','6','2','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('354','premium','NIE','6','3','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('355','premium','NIE','6','4','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('356','premium','NIE','6','5','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('357','premium','NIE','6','6','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('358','premium','NIE','6','7','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('359','premium','NIE','6','8','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('360','premium','NIE','6','9','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('361','premium','NIE','6','10','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('362','premium','NIE','7','1','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('363','premium','NIE','7','2','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('364','premium','NIE','7','3','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('365','premium','NIE','7','4','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('366','premium','NIE','7','5','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('367','premium','NIE','7','6','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('368','premium','NIE','7','7','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('369','premium','NIE','7','8','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('370','premium','NIE','7','9','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('371','premium','NIE','7','10','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('372','premium','NIE','8','1','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('373','premium','NIE','8','2','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('374','premium','NIE','8','3','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('375','premium','NIE','8','4','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('376','premium','NIE','8','5','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('377','premium','NIE','8','6','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('378','premium','NIE','8','7','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('379','premium','NIE','8','8','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('380','premium','NIE','8','9','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('381','premium','NIE','8','10','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('382','premium','NIE','9','1','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('383','premium','NIE','9','2','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('384','premium','NIE','9','3','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('385','premium','NIE','9','4','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('386','premium','NIE','9','5','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('387','premium','NIE','9','6','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('388','premium','NIE','9','7','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('389','premium','NIE','9','8','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('390','premium','NIE','9','9','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('391','premium','NIE','9','10','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('392','premium','NIE','10','1','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('393','premium','NIE','10','2','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('394','premium','NIE','10','3','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('395','premium','NIE','10','4','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('396','premium','NIE','10','5','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('397','premium','NIE','10','6','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('398','premium','NIE','10','7','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('399','premium','NIE','10','8','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('400','premium','NIE','10','9','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('401','premium','NIE','10','10','4');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('402','standard','NIE','1','1','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('403','standard','NIE','1','2','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('404','standard','NIE','1','3','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('405','standard','NIE','1','4','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('406','dostepne','TAK','1','5','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('407','dostepne','TAK','1','6','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('408','standard','NIE','1','7','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('409','standard','NIE','1','8','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('410','standard','NIE','1','9','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('411','standard','NIE','1','10','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('412','standard','NIE','2','1','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('413','standard','NIE','2','2','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('414','standard','NIE','2','3','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('415','standard','NIE','2','4','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('416','standard','NIE','2','5','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('417','standard','NIE','2','6','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('418','standard','NIE','2','7','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('419','standard','NIE','2','8','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('420','standard','NIE','2','9','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('421','standard','NIE','2','10','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('422','standard','NIE','3','1','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('423','standard','NIE','3','2','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('424','standard','NIE','3','3','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('425','standard','NIE','3','4','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('426','standard','NIE','3','5','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('427','standard','NIE','3','6','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('428','standard','NIE','3','7','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('429','standard','NIE','3','8','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('430','standard','NIE','3','9','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('431','standard','NIE','3','10','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('432','standard','NIE','4','1','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('433','standard','NIE','4','2','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('434','standard','NIE','4','3','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('435','standard','NIE','4','4','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('436','standard','NIE','4','5','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('437','standard','NIE','4','6','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('438','standard','NIE','4','7','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('439','standard','NIE','4','8','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('440','standard','NIE','4','9','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('441','standard','NIE','4','10','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('442','standard','NIE','5','1','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('443','standard','NIE','5','2','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('444','standard','NIE','5','3','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('445','standard','NIE','5','4','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('446','standard','NIE','5','5','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('447','standard','NIE','5','6','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('448','standard','NIE','5','7','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('449','standard','NIE','5','8','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('450','standard','NIE','5','9','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('451','standard','NIE','5','10','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('452','premium','NIE','6','1','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('453','premium','NIE','6','2','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('454','premium','NIE','6','3','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('455','premium','NIE','6','4','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('456','premium','NIE','6','5','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('457','premium','NIE','6','6','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('458','premium','NIE','6','7','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('459','premium','NIE','6','8','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('460','premium','NIE','6','9','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('461','premium','NIE','6','10','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('462','premium','NIE','7','1','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('463','premium','NIE','7','2','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('464','premium','NIE','7','3','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('465','premium','NIE','7','4','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('466','premium','NIE','7','5','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('467','premium','NIE','7','6','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('468','premium','NIE','7','7','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('469','premium','NIE','7','8','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('470','premium','NIE','7','9','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('471','premium','NIE','7','10','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('472','premium','NIE','8','1','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('473','premium','NIE','8','2','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('474','premium','NIE','8','3','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('475','premium','NIE','8','4','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('476','premium','NIE','8','5','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('477','premium','NIE','8','6','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('478','premium','NIE','8','7','5');
Insert into IE88191.MIEJSCA (MIEJSCE_ID,RODZAJ,CZY_DOSTEPNE,RZAD_ID,FOTEL_ID,SALA_ID) values ('479','premium','NIE','8','8','5');
REM INSERTING into IE88191.REZYSERIE_FILMOW
SET DEFINE OFF;
Insert into IE88191.REZYSERIE_FILMOW (FILM_ID,REZ_ID) values ('1','1');
Insert into IE88191.REZYSERIE_FILMOW (FILM_ID,REZ_ID) values ('2','2');
Insert into IE88191.REZYSERIE_FILMOW (FILM_ID,REZ_ID) values ('3','3');
Insert into IE88191.REZYSERIE_FILMOW (FILM_ID,REZ_ID) values ('4','4');
Insert into IE88191.REZYSERIE_FILMOW (FILM_ID,REZ_ID) values ('5','5');
Insert into IE88191.REZYSERIE_FILMOW (FILM_ID,REZ_ID) values ('6','6');
Insert into IE88191.REZYSERIE_FILMOW (FILM_ID,REZ_ID) values ('7','7');
Insert into IE88191.REZYSERIE_FILMOW (FILM_ID,REZ_ID) values ('8','8');
Insert into IE88191.REZYSERIE_FILMOW (FILM_ID,REZ_ID) values ('9','9');
Insert into IE88191.REZYSERIE_FILMOW (FILM_ID,REZ_ID) values ('10','10');
Insert into IE88191.REZYSERIE_FILMOW (FILM_ID,REZ_ID) values ('11','R13');
Insert into IE88191.REZYSERIE_FILMOW (FILM_ID,REZ_ID) values ('11','R14');
REM INSERTING into IE88191.REZYSERZY
SET DEFINE OFF;
Insert into IE88191.REZYSERZY (REZ_ID,IMIE,NAZWISKO,NARODOWOSC) values ('1','Gints','Zilbalodis','Łotwa');
Insert into IE88191.REZYSERZY (REZ_ID,IMIE,NAZWISKO,NARODOWOSC) values ('2','Brady','Corbet','USA');
Insert into IE88191.REZYSERZY (REZ_ID,IMIE,NAZWISKO,NARODOWOSC) values ('3','Jacques','Audiard','Francja');
Insert into IE88191.REZYSERZY (REZ_ID,IMIE,NAZWISKO,NARODOWOSC) values ('4','Magnus','von Horn','Szwecja');
Insert into IE88191.REZYSERZY (REZ_ID,IMIE,NAZWISKO,NARODOWOSC) values ('5','John','Crowley','Irlandia');
Insert into IE88191.REZYSERZY (REZ_ID,IMIE,NAZWISKO,NARODOWOSC) values ('6','Nora','Fingscheid','Niemcy');
Insert into IE88191.REZYSERZY (REZ_ID,IMIE,NAZWISKO,NARODOWOSC) values ('7','Maciej','Kawulski','Polska');
Insert into IE88191.REZYSERZY (REZ_ID,IMIE,NAZWISKO,NARODOWOSC) values ('8','Mathieu','Kassovitz','Francja');
Insert into IE88191.REZYSERZY (REZ_ID,IMIE,NAZWISKO,NARODOWOSC) values ('9','Leigh','Whannel','Szwecja');
Insert into IE88191.REZYSERZY (REZ_ID,IMIE,NAZWISKO,NARODOWOSC) values ('10','James','Mangold','USA');
Insert into IE88191.REZYSERZY (REZ_ID,IMIE,NAZWISKO,NARODOWOSC) values ('R13','Denis','Villeneuve','Kanadyjczyk');
Insert into IE88191.REZYSERZY (REZ_ID,IMIE,NAZWISKO,NARODOWOSC) values ('R14','Jon','Spaihts','Amerykanin');
REM INSERTING into IE88191.RZEDY
SET DEFINE OFF;
Insert into IE88191.RZEDY (RZAD_ID,NUMER,ILOSC_FOTELI) values ('1','1','10');
Insert into IE88191.RZEDY (RZAD_ID,NUMER,ILOSC_FOTELI) values ('2','2','10');
Insert into IE88191.RZEDY (RZAD_ID,NUMER,ILOSC_FOTELI) values ('3','3','10');
Insert into IE88191.RZEDY (RZAD_ID,NUMER,ILOSC_FOTELI) values ('4','4','10');
Insert into IE88191.RZEDY (RZAD_ID,NUMER,ILOSC_FOTELI) values ('5','5','10');
Insert into IE88191.RZEDY (RZAD_ID,NUMER,ILOSC_FOTELI) values ('6','6','10');
Insert into IE88191.RZEDY (RZAD_ID,NUMER,ILOSC_FOTELI) values ('7','7','10');
Insert into IE88191.RZEDY (RZAD_ID,NUMER,ILOSC_FOTELI) values ('8','8','10');
Insert into IE88191.RZEDY (RZAD_ID,NUMER,ILOSC_FOTELI) values ('9','9','10');
Insert into IE88191.RZEDY (RZAD_ID,NUMER,ILOSC_FOTELI) values ('10','10','10');
REM INSERTING into IE88191.SALE
SET DEFINE OFF;
Insert into IE88191.SALE (SALA_ID,NUMER,ILOSC_MIEJSC) values ('1','1','100');
Insert into IE88191.SALE (SALA_ID,NUMER,ILOSC_MIEJSC) values ('2','2','100');
Insert into IE88191.SALE (SALA_ID,NUMER,ILOSC_MIEJSC) values ('3','3','100');
Insert into IE88191.SALE (SALA_ID,NUMER,ILOSC_MIEJSC) values ('4','4','100');
Insert into IE88191.SALE (SALA_ID,NUMER,ILOSC_MIEJSC) values ('5','5','100');
REM INSERTING into IE88191.SEANSE
SET DEFINE OFF;
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('12',to_date('25/01/17','RR/MM/DD'),'12:30','2','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('13',to_date('25/01/17','RR/MM/DD'),'14:30','3','3');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('14',to_date('25/01/17','RR/MM/DD'),'16:45','4','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('15',to_date('25/01/17','RR/MM/DD'),'19:00','5','5');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('16',to_date('25/01/18','RR/MM/DD'),'10:30','1','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('17',to_date('25/01/18','RR/MM/DD'),'12:30','2','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('18',to_date('25/01/18','RR/MM/DD'),'15:00','3','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('19',to_date('25/01/18','RR/MM/DD'),'17:30','4','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('20',to_date('25/01/18','RR/MM/DD'),'20:00','5','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('1',to_date('25/01/15','RR/MM/DD'),'10:00','1','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('2',to_date('25/01/15','RR/MM/DD'),'12:30','2','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('3',to_date('25/01/15','RR/MM/DD'),'14:30','1','3');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('4',to_date('25/01/15','RR/MM/DD'),'16:45','2','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('5',to_date('25/01/15','RR/MM/DD'),'19:00','3','5');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('6',to_date('25/01/15','RR/MM/DD'),'21:15','1','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('7',to_date('25/01/16','RR/MM/DD'),'10:30','2','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('8',to_date('25/01/16','RR/MM/DD'),'12:30','1','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('9',to_date('25/01/16','RR/MM/DD'),'15:00','3','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('10',to_date('25/01/16','RR/MM/DD'),'17:30','2','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('11',to_date('25/01/17','RR/MM/DD'),'10:00','1','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('21',to_date('24/03/15','RR/MM/DD'),'18:00','1','11');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('22',to_date('24/03/16','RR/MM/DD'),'20:00','2','11');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('23',to_date('25/02/08','RR/MM/DD'),'10:00','1','3');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('24',to_date('25/02/12','RR/MM/DD'),'20:00','5','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('25',to_date('25/01/08','RR/MM/DD'),'15:00','1','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('26',to_date('24/12/06','RR/MM/DD'),'15:00','4','3');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('27',to_date('25/02/07','RR/MM/DD'),'17:30','4','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('28',to_date('24/12/11','RR/MM/DD'),'15:00','5','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('29',to_date('24/12/07','RR/MM/DD'),'15:00','1','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('30',to_date('25/01/24','RR/MM/DD'),'12:30','4','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('31',to_date('24/12/02','RR/MM/DD'),'20:00','5','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('32',to_date('25/01/21','RR/MM/DD'),'17:30','1','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('33',to_date('24/12/19','RR/MM/DD'),'17:30','2','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('34',to_date('25/01/10','RR/MM/DD'),'10:00','2','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('35',to_date('24/12/13','RR/MM/DD'),'20:00','5','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('36',to_date('25/03/20','RR/MM/DD'),'12:30','2','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('37',to_date('25/02/09','RR/MM/DD'),'12:30','4','3');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('38',to_date('25/01/20','RR/MM/DD'),'17:30','4','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('39',to_date('25/03/14','RR/MM/DD'),'20:00','1','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('40',to_date('25/02/16','RR/MM/DD'),'20:00','4','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('41',to_date('25/02/02','RR/MM/DD'),'10:00','2','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('42',to_date('24/12/26','RR/MM/DD'),'10:00','5','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('43',to_date('25/02/07','RR/MM/DD'),'12:30','2','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('44',to_date('25/01/02','RR/MM/DD'),'12:30','1','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('45',to_date('24/12/05','RR/MM/DD'),'10:00','3','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('46',to_date('24/12/06','RR/MM/DD'),'17:30','5','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('47',to_date('25/02/08','RR/MM/DD'),'17:30','5','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('48',to_date('25/02/11','RR/MM/DD'),'10:00','2','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('49',to_date('25/02/12','RR/MM/DD'),'10:00','1','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('50',to_date('24/12/24','RR/MM/DD'),'10:00','5','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('51',to_date('24/12/18','RR/MM/DD'),'12:30','4','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('52',to_date('25/02/05','RR/MM/DD'),'10:00','3','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('53',to_date('25/02/17','RR/MM/DD'),'10:00','1','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('54',to_date('25/01/24','RR/MM/DD'),'17:30','3','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('55',to_date('25/01/16','RR/MM/DD'),'12:30','2','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('56',to_date('25/01/11','RR/MM/DD'),'20:00','3','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('57',to_date('24/12/08','RR/MM/DD'),'12:30','2','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('58',to_date('25/03/28','RR/MM/DD'),'10:00','4','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('59',to_date('25/02/01','RR/MM/DD'),'12:30','1','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('60',to_date('25/02/23','RR/MM/DD'),'17:30','4','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('61',to_date('25/03/09','RR/MM/DD'),'12:30','5','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('62',to_date('25/01/27','RR/MM/DD'),'17:30','4','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('63',to_date('25/02/08','RR/MM/DD'),'12:30','2','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('64',to_date('24/12/15','RR/MM/DD'),'17:30','3','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('65',to_date('25/02/14','RR/MM/DD'),'17:30','2','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('66',to_date('25/02/03','RR/MM/DD'),'10:00','1','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('67',to_date('24/12/06','RR/MM/DD'),'20:00','1','3');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('68',to_date('25/01/20','RR/MM/DD'),'10:00','5','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('69',to_date('25/02/20','RR/MM/DD'),'12:30','4','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('70',to_date('25/03/03','RR/MM/DD'),'17:30','5','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('71',to_date('25/01/10','RR/MM/DD'),'10:00','3','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('72',to_date('25/02/01','RR/MM/DD'),'12:30','5','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('73',to_date('25/02/01','RR/MM/DD'),'20:00','5','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('74',to_date('25/02/16','RR/MM/DD'),'12:30','5','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('75',to_date('24/12/07','RR/MM/DD'),'15:00','1','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('76',to_date('25/03/13','RR/MM/DD'),'17:30','4','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('77',to_date('25/01/10','RR/MM/DD'),'15:00','3','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('78',to_date('24/12/21','RR/MM/DD'),'20:00','5','3');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('79',to_date('25/02/06','RR/MM/DD'),'10:00','5','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('80',to_date('25/02/09','RR/MM/DD'),'12:30','3','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('81',to_date('24/12/08','RR/MM/DD'),'17:30','3','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('82',to_date('25/03/08','RR/MM/DD'),'20:00','2','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('83',to_date('25/01/12','RR/MM/DD'),'17:30','2','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('84',to_date('24/12/07','RR/MM/DD'),'17:30','1','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('85',to_date('25/02/06','RR/MM/DD'),'10:00','4','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('86',to_date('24/12/25','RR/MM/DD'),'10:00','1','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('87',to_date('24/12/19','RR/MM/DD'),'12:30','2','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('88',to_date('24/12/04','RR/MM/DD'),'20:00','2','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('89',to_date('24/12/01','RR/MM/DD'),'10:00','5','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('90',to_date('25/01/07','RR/MM/DD'),'10:00','3','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('91',to_date('25/01/24','RR/MM/DD'),'20:00','3','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('92',to_date('25/01/12','RR/MM/DD'),'20:00','3','5');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('93',to_date('25/03/14','RR/MM/DD'),'10:00','2','5');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('94',to_date('25/02/15','RR/MM/DD'),'10:00','5','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('95',to_date('25/03/08','RR/MM/DD'),'17:30','5','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('96',to_date('25/02/16','RR/MM/DD'),'15:00','4','3');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('97',to_date('25/01/08','RR/MM/DD'),'15:00','3','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('98',to_date('24/12/28','RR/MM/DD'),'17:30','4','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('99',to_date('25/03/28','RR/MM/DD'),'10:00','4','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('100',to_date('24/12/16','RR/MM/DD'),'10:00','1','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('101',to_date('25/01/02','RR/MM/DD'),'10:00','1','3');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('102',to_date('24/12/16','RR/MM/DD'),'17:30','4','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('103',to_date('25/03/21','RR/MM/DD'),'15:00','1','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('104',to_date('25/01/21','RR/MM/DD'),'17:30','5','5');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('105',to_date('24/12/14','RR/MM/DD'),'17:30','5','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('106',to_date('24/12/09','RR/MM/DD'),'17:30','1','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('107',to_date('25/03/27','RR/MM/DD'),'15:00','5','3');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('108',to_date('25/01/10','RR/MM/DD'),'12:30','3','3');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('109',to_date('25/03/22','RR/MM/DD'),'20:00','2','3');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('110',to_date('25/01/13','RR/MM/DD'),'10:00','1','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('111',to_date('25/02/23','RR/MM/DD'),'20:00','2','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('112',to_date('24/12/02','RR/MM/DD'),'10:00','1','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('113',to_date('25/02/09','RR/MM/DD'),'15:00','5','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('114',to_date('25/01/02','RR/MM/DD'),'20:00','3','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('115',to_date('25/03/17','RR/MM/DD'),'10:00','1','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('116',to_date('24/12/25','RR/MM/DD'),'20:00','4','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('117',to_date('24/12/02','RR/MM/DD'),'20:00','4','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('118',to_date('25/02/02','RR/MM/DD'),'17:30','3','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('119',to_date('25/01/02','RR/MM/DD'),'12:30','2','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('120',to_date('25/01/04','RR/MM/DD'),'12:30','2','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('121',to_date('24/12/07','RR/MM/DD'),'10:00','2','5');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('122',to_date('25/02/25','RR/MM/DD'),'17:30','5','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('123',to_date('25/03/04','RR/MM/DD'),'17:30','1','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('124',to_date('25/02/02','RR/MM/DD'),'20:00','2','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('125',to_date('24/12/12','RR/MM/DD'),'10:00','1','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('126',to_date('24/12/28','RR/MM/DD'),'15:00','3','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('127',to_date('25/01/02','RR/MM/DD'),'10:00','1','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('128',to_date('25/01/23','RR/MM/DD'),'17:30','2','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('129',to_date('25/01/27','RR/MM/DD'),'20:00','1','5');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('130',to_date('24/12/20','RR/MM/DD'),'15:00','1','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('131',to_date('25/01/06','RR/MM/DD'),'12:30','3','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('132',to_date('25/01/08','RR/MM/DD'),'17:30','4','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('133',to_date('24/12/06','RR/MM/DD'),'20:00','4','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('134',to_date('24/12/11','RR/MM/DD'),'20:00','1','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('135',to_date('25/01/15','RR/MM/DD'),'20:00','4','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('136',to_date('25/03/13','RR/MM/DD'),'12:30','4','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('137',to_date('25/02/07','RR/MM/DD'),'20:00','1','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('138',to_date('25/02/10','RR/MM/DD'),'17:30','3','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('139',to_date('25/03/27','RR/MM/DD'),'15:00','5','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('140',to_date('25/01/28','RR/MM/DD'),'20:00','2','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('141',to_date('25/03/03','RR/MM/DD'),'12:30','5','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('142',to_date('24/12/05','RR/MM/DD'),'20:00','2','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('143',to_date('25/02/25','RR/MM/DD'),'17:30','1','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('144',to_date('24/12/23','RR/MM/DD'),'15:00','4','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('145',to_date('25/03/08','RR/MM/DD'),'17:30','1','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('146',to_date('25/03/25','RR/MM/DD'),'12:30','3','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('147',to_date('25/03/12','RR/MM/DD'),'12:30','4','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('148',to_date('25/03/13','RR/MM/DD'),'10:00','2','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('149',to_date('25/01/25','RR/MM/DD'),'20:00','1','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('150',to_date('25/02/02','RR/MM/DD'),'10:00','4','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('151',to_date('25/03/22','RR/MM/DD'),'20:00','4','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('152',to_date('25/02/25','RR/MM/DD'),'17:30','4','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('153',to_date('25/01/01','RR/MM/DD'),'17:30','1','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('154',to_date('25/02/22','RR/MM/DD'),'10:00','5','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('155',to_date('25/01/08','RR/MM/DD'),'15:00','4','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('156',to_date('25/02/27','RR/MM/DD'),'15:00','5','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('157',to_date('24/12/18','RR/MM/DD'),'10:00','3','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('158',to_date('25/03/04','RR/MM/DD'),'10:00','4','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('159',to_date('25/02/27','RR/MM/DD'),'12:30','5','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('160',to_date('24/12/18','RR/MM/DD'),'17:30','2','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('161',to_date('25/03/09','RR/MM/DD'),'20:00','4','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('162',to_date('25/01/14','RR/MM/DD'),'20:00','1','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('163',to_date('24/12/26','RR/MM/DD'),'12:30','3','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('164',to_date('25/02/23','RR/MM/DD'),'15:00','5','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('165',to_date('25/03/12','RR/MM/DD'),'10:00','3','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('166',to_date('25/02/12','RR/MM/DD'),'17:30','3','5');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('167',to_date('25/01/20','RR/MM/DD'),'10:00','1','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('168',to_date('25/03/27','RR/MM/DD'),'10:00','4','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('169',to_date('25/02/10','RR/MM/DD'),'15:00','3','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('170',to_date('24/12/13','RR/MM/DD'),'12:30','4','5');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('171',to_date('25/02/11','RR/MM/DD'),'10:00','2','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('172',to_date('25/03/26','RR/MM/DD'),'15:00','1','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('173',to_date('24/12/25','RR/MM/DD'),'20:00','5','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('174',to_date('25/01/24','RR/MM/DD'),'20:00','3','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('175',to_date('25/02/13','RR/MM/DD'),'20:00','3','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('176',to_date('24/12/14','RR/MM/DD'),'17:30','5','5');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('177',to_date('25/03/27','RR/MM/DD'),'20:00','4','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('178',to_date('25/02/15','RR/MM/DD'),'12:30','3','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('179',to_date('25/01/02','RR/MM/DD'),'20:00','2','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('180',to_date('25/02/20','RR/MM/DD'),'20:00','5','5');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('181',to_date('24/12/05','RR/MM/DD'),'17:30','4','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('182',to_date('25/01/16','RR/MM/DD'),'10:00','4','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('183',to_date('25/02/21','RR/MM/DD'),'10:00','5','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('184',to_date('24/12/13','RR/MM/DD'),'15:00','3','3');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('185',to_date('25/02/06','RR/MM/DD'),'12:30','3','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('186',to_date('25/02/28','RR/MM/DD'),'20:00','1','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('187',to_date('24/12/15','RR/MM/DD'),'15:00','5','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('188',to_date('25/02/09','RR/MM/DD'),'17:30','2','5');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('189',to_date('25/02/01','RR/MM/DD'),'10:00','1','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('190',to_date('25/01/04','RR/MM/DD'),'15:00','3','5');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('191',to_date('24/12/08','RR/MM/DD'),'12:30','4','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('192',to_date('25/01/23','RR/MM/DD'),'20:00','3','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('193',to_date('24/12/19','RR/MM/DD'),'10:00','2','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('194',to_date('25/03/09','RR/MM/DD'),'12:30','2','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('195',to_date('25/02/06','RR/MM/DD'),'15:00','4','3');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('196',to_date('25/03/17','RR/MM/DD'),'20:00','5','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('197',to_date('24/12/28','RR/MM/DD'),'15:00','4','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('198',to_date('25/01/25','RR/MM/DD'),'20:00','5','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('199',to_date('25/01/14','RR/MM/DD'),'20:00','3','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('200',to_date('25/03/27','RR/MM/DD'),'15:00','5','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('201',to_date('25/02/23','RR/MM/DD'),'10:00','5','7');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('202',to_date('25/02/02','RR/MM/DD'),'10:00','3','3');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('203',to_date('24/12/24','RR/MM/DD'),'15:00','3','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('204',to_date('25/02/02','RR/MM/DD'),'20:00','4','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('205',to_date('25/03/20','RR/MM/DD'),'17:30','3','3');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('206',to_date('25/02/28','RR/MM/DD'),'15:00','3','3');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('207',to_date('25/01/08','RR/MM/DD'),'17:30','3','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('208',to_date('24/12/16','RR/MM/DD'),'20:00','5','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('209',to_date('25/02/04','RR/MM/DD'),'15:00','4','3');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('210',to_date('25/03/03','RR/MM/DD'),'15:00','3','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('211',to_date('25/02/24','RR/MM/DD'),'10:00','2','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('212',to_date('25/01/11','RR/MM/DD'),'15:00','1','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('213',to_date('24/12/11','RR/MM/DD'),'17:30','5','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('214',to_date('24/12/03','RR/MM/DD'),'15:00','4','5');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('215',to_date('25/01/19','RR/MM/DD'),'15:00','5','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('216',to_date('25/01/17','RR/MM/DD'),'10:00','4','5');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('217',to_date('24/12/17','RR/MM/DD'),'17:30','4','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('218',to_date('25/01/20','RR/MM/DD'),'20:00','1','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('219',to_date('25/03/18','RR/MM/DD'),'20:00','3','5');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('220',to_date('24/12/04','RR/MM/DD'),'12:30','1','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('221',to_date('25/01/17','RR/MM/DD'),'15:00','4','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('222',to_date('24/12/06','RR/MM/DD'),'17:30','4','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('223',to_date('24/12/01','RR/MM/DD'),'18:00','1','11');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('224',to_date('24/12/05','RR/MM/DD'),'20:00','2','11');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('225',to_date('24/12/10','RR/MM/DD'),'15:00','3','11');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('226',to_date('24/12/15','RR/MM/DD'),'12:30','4','11');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('227',to_date('25/02/14','RR/MM/DD'),'12:30','1','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('228',to_date('25/02/20','RR/MM/DD'),'17:30','5','3');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('229',to_date('25/03/26','RR/MM/DD'),'20:00','1','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('230',to_date('25/01/26','RR/MM/DD'),'17:30','2','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('231',to_date('25/02/27','RR/MM/DD'),'17:30','3','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('232',to_date('25/02/21','RR/MM/DD'),'12:30','4','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('233',to_date('24/12/08','RR/MM/DD'),'10:00','2','5');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('234',to_date('24/12/10','RR/MM/DD'),'17:30','4','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('235',to_date('25/03/01','RR/MM/DD'),'12:30','2','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('236',to_date('25/01/27','RR/MM/DD'),'17:30','5','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('237',to_date('25/03/23','RR/MM/DD'),'10:00','4','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('238',to_date('25/01/01','RR/MM/DD'),'20:00','3','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('239',to_date('24/12/21','RR/MM/DD'),'20:00','2','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('240',to_date('25/03/03','RR/MM/DD'),'17:30','2','5');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('241',to_date('24/12/23','RR/MM/DD'),'20:00','3','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('242',to_date('25/03/08','RR/MM/DD'),'17:30','1','11');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('243',to_date('24/12/18','RR/MM/DD'),'20:00','3','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('244',to_date('24/12/19','RR/MM/DD'),'15:00','1','5');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('245',to_date('24/12/11','RR/MM/DD'),'10:00','1','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('246',to_date('25/03/01','RR/MM/DD'),'17:30','4','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('247',to_date('25/03/02','RR/MM/DD'),'12:30','2','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('248',to_date('25/03/22','RR/MM/DD'),'12:30','3','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('249',to_date('24/12/08','RR/MM/DD'),'15:00','3','6');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('250',to_date('25/03/24','RR/MM/DD'),'20:00','4','2');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('251',to_date('25/02/06','RR/MM/DD'),'17:30','2','9');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('252',to_date('24/12/16','RR/MM/DD'),'17:30','5','4');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('253',to_date('25/02/07','RR/MM/DD'),'20:00','4','1');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('254',to_date('25/01/13','RR/MM/DD'),'15:00','4','10');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('255',to_date('25/01/22','RR/MM/DD'),'10:00','4','8');
Insert into IE88191.SEANSE (SEANS_ID,DATA,GODZINA,SALA_ID,FILM_ID) values ('256',to_date('25/02/09','RR/MM/DD'),'20:00','2','8');
--------------------------------------------------------
--  DDL for Index DANE_OSOBOWE__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "IE88191"."DANE_OSOBOWE__IDX" ON "IE88191"."DANE_OSOBOWE" ("KLIENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SEANSE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IE88191"."SEANSE_PK" ON "IE88191"."SEANSE" ("SEANS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SALE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IE88191"."SALE_PK" ON "IE88191"."SALE" ("SALA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index RZEDY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IE88191"."RZEDY_PK" ON "IE88191"."RZEDY" ("RZAD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index REZYSERZY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IE88191"."REZYSERZY_PK" ON "IE88191"."REZYSERZY" ("REZ_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index REZYSERIE_FILMOW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IE88191"."REZYSERIE_FILMOW_PK" ON "IE88191"."REZYSERIE_FILMOW" ("FILM_ID", "REZ_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MIEJSCA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IE88191"."MIEJSCA_PK" ON "IE88191"."MIEJSCA" ("MIEJSCE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KLIENCI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IE88191"."KLIENCI_PK" ON "IE88191"."KLIENCI" ("KLIENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GATUNKI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IE88191"."GATUNKI_PK" ON "IE88191"."GATUNKI" ("GATUNEK_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GATUNKI_FILMOW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IE88191"."GATUNKI_FILMOW_PK" ON "IE88191"."GATUNKI_FILMOW" ("FILM_ID", "GATUNEK_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FOTELE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IE88191"."FOTELE_PK" ON "IE88191"."FOTELE" ("FOTEL_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FILMY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IE88191"."FILMY_PK" ON "IE88191"."FILMY" ("FILM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DANE_OSOBOWE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IE88191"."DANE_OSOBOWE_PK" ON "IE88191"."DANE_OSOBOWE" ("DANE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CENY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IE88191"."CENY_PK" ON "IE88191"."CENY" ("CENA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BILETY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IE88191"."BILETY_PK" ON "IE88191"."BILETY" ("BILET_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Procedure GENERUJ_MIEJSCA_DLA_SALI
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "IE88191"."GENERUJ_MIEJSCA_DLA_SALI" (
    p_sala_id IN NUMBER
) AS
    v_miejsce_id NUMBER := 1; -- Automatyczne ID miejsca
BEGIN
    FOR rzad_id IN 1 .. 10 LOOP -- Iteracja po rzędach od 1 do 10
        FOR fotel_id IN 1 .. 10 LOOP -- Iteracja po fotelach w każdym rzędzie
            INSERT INTO miejsca (miejsce_id, fotele_fotel_id, rzedy_rzad_id, sale_sala_id)
            VALUES (v_miejsce_id, fotel_id, rzad_id, p_sala_id);
            v_miejsce_id := v_miejsce_id + 1; -- Zwiększ ID miejsca
        END LOOP;
    END LOOP;
    COMMIT; -- Zatwierdź zmiany w bazie
END;

/
--------------------------------------------------------
--  Constraints for Table SEANSE
--------------------------------------------------------

  ALTER TABLE "IE88191"."SEANSE" ADD CONSTRAINT "SEANSE_PK" PRIMARY KEY ("SEANS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IE88191"."SEANSE" MODIFY ("SEANS_ID" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."SEANSE" MODIFY ("DATA" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."SEANSE" MODIFY ("GODZINA" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."SEANSE" MODIFY ("SALA_ID" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."SEANSE" MODIFY ("FILM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FILMY
--------------------------------------------------------

  ALTER TABLE "IE88191"."FILMY" ADD CONSTRAINT "FILMY_PK" PRIMARY KEY ("FILM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IE88191"."FILMY" MODIFY ("FILM_ID" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."FILMY" MODIFY ("NAZWA" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."FILMY" MODIFY ("ROK" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."FILMY" MODIFY ("CZAS_TRWANIA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CENY
--------------------------------------------------------

  ALTER TABLE "IE88191"."CENY" ADD CONSTRAINT "CENY_PK" PRIMARY KEY ("CENA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IE88191"."CENY" MODIFY ("CENA_ID" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."CENY" MODIFY ("CENA" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."CENY" MODIFY ("ULGA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BILETY
--------------------------------------------------------

  ALTER TABLE "IE88191"."BILETY" ADD CONSTRAINT "BILETY_PK" PRIMARY KEY ("BILET_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IE88191"."BILETY" MODIFY ("BILET_ID" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."BILETY" MODIFY ("DATA_ZAKUPU" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."BILETY" MODIFY ("RODZAJ" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."BILETY" MODIFY ("SEANS_ID" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."BILETY" MODIFY ("MIEJSCE_ID" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."BILETY" MODIFY ("CENA_ID" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."BILETY" MODIFY ("KLIENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DANE_OSOBOWE
--------------------------------------------------------

  ALTER TABLE "IE88191"."DANE_OSOBOWE" ADD CONSTRAINT "DANE_OSOBOWE_PK" PRIMARY KEY ("DANE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IE88191"."DANE_OSOBOWE" MODIFY ("DANE_ID" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."DANE_OSOBOWE" MODIFY ("IMIE" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."DANE_OSOBOWE" MODIFY ("NAZWISKO" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."DANE_OSOBOWE" MODIFY ("ADRES" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."DANE_OSOBOWE" MODIFY ("KOD_POCZTOWY" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."DANE_OSOBOWE" MODIFY ("KLIENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GATUNKI
--------------------------------------------------------

  ALTER TABLE "IE88191"."GATUNKI" ADD CONSTRAINT "GATUNKI_PK" PRIMARY KEY ("GATUNEK_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IE88191"."GATUNKI" MODIFY ("GATUNEK_ID" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."GATUNKI" MODIFY ("NAZWA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GATUNKI_FILMOW
--------------------------------------------------------

  ALTER TABLE "IE88191"."GATUNKI_FILMOW" ADD CONSTRAINT "GATUNKI_FILMOW_PK" PRIMARY KEY ("FILM_ID", "GATUNEK_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IE88191"."GATUNKI_FILMOW" MODIFY ("FILM_ID" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."GATUNKI_FILMOW" MODIFY ("GATUNEK_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REZYSERIE_FILMOW
--------------------------------------------------------

  ALTER TABLE "IE88191"."REZYSERIE_FILMOW" ADD CONSTRAINT "REZYSERIE_FILMOW_PK" PRIMARY KEY ("FILM_ID", "REZ_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IE88191"."REZYSERIE_FILMOW" MODIFY ("FILM_ID" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."REZYSERIE_FILMOW" MODIFY ("REZ_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RZEDY
--------------------------------------------------------

  ALTER TABLE "IE88191"."RZEDY" ADD CONSTRAINT "RZEDY_PK" PRIMARY KEY ("RZAD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IE88191"."RZEDY" MODIFY ("RZAD_ID" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."RZEDY" MODIFY ("NUMER" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."RZEDY" MODIFY ("ILOSC_FOTELI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MIEJSCA
--------------------------------------------------------

  ALTER TABLE "IE88191"."MIEJSCA" ADD CONSTRAINT "MIEJSCA_PK" PRIMARY KEY ("MIEJSCE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IE88191"."MIEJSCA" MODIFY ("MIEJSCE_ID" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."MIEJSCA" MODIFY ("RODZAJ" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."MIEJSCA" MODIFY ("CZY_DOSTEPNE" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."MIEJSCA" MODIFY ("RZAD_ID" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."MIEJSCA" MODIFY ("FOTEL_ID" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."MIEJSCA" MODIFY ("SALA_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FOTELE
--------------------------------------------------------

  ALTER TABLE "IE88191"."FOTELE" ADD CONSTRAINT "FOTELE_PK" PRIMARY KEY ("FOTEL_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IE88191"."FOTELE" MODIFY ("FOTEL_ID" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."FOTELE" MODIFY ("NUMER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KLIENCI
--------------------------------------------------------

  ALTER TABLE "IE88191"."KLIENCI" ADD CONSTRAINT "KLIENCI_PK" PRIMARY KEY ("KLIENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IE88191"."KLIENCI" MODIFY ("KLIENT_ID" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."KLIENCI" MODIFY ("NAZWA_UZYTKOWNIKA" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."KLIENCI" MODIFY ("TYP_KONTA" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."KLIENCI" MODIFY ("EMAIL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SALE
--------------------------------------------------------

  ALTER TABLE "IE88191"."SALE" ADD CONSTRAINT "SALE_PK" PRIMARY KEY ("SALA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IE88191"."SALE" MODIFY ("SALA_ID" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."SALE" MODIFY ("NUMER" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."SALE" MODIFY ("ILOSC_MIEJSC" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REZYSERZY
--------------------------------------------------------

  ALTER TABLE "IE88191"."REZYSERZY" ADD CONSTRAINT "REZYSERZY_PK" PRIMARY KEY ("REZ_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IE88191"."REZYSERZY" MODIFY ("REZ_ID" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."REZYSERZY" MODIFY ("IMIE" NOT NULL ENABLE);
  ALTER TABLE "IE88191"."REZYSERZY" MODIFY ("NAZWISKO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BILETY
--------------------------------------------------------

  ALTER TABLE "IE88191"."BILETY" ADD CONSTRAINT "BILETY_CENY_FK" FOREIGN KEY ("CENA_ID")
	  REFERENCES "IE88191"."CENY" ("CENA_ID") ENABLE;
  ALTER TABLE "IE88191"."BILETY" ADD CONSTRAINT "BILETY_KLIENCI_FK" FOREIGN KEY ("KLIENT_ID")
	  REFERENCES "IE88191"."KLIENCI" ("KLIENT_ID") ENABLE;
  ALTER TABLE "IE88191"."BILETY" ADD CONSTRAINT "BILETY_MIEJSCA_FK" FOREIGN KEY ("MIEJSCE_ID")
	  REFERENCES "IE88191"."MIEJSCA" ("MIEJSCE_ID") ENABLE;
  ALTER TABLE "IE88191"."BILETY" ADD CONSTRAINT "BILETY_SEANSE_FK" FOREIGN KEY ("SEANS_ID")
	  REFERENCES "IE88191"."SEANSE" ("SEANS_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DANE_OSOBOWE
--------------------------------------------------------

  ALTER TABLE "IE88191"."DANE_OSOBOWE" ADD CONSTRAINT "DANE_OSOBOWE_KLIENCI_FK" FOREIGN KEY ("KLIENT_ID")
	  REFERENCES "IE88191"."KLIENCI" ("KLIENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GATUNKI_FILMOW
--------------------------------------------------------

  ALTER TABLE "IE88191"."GATUNKI_FILMOW" ADD CONSTRAINT "GATUNKI_FILMOW_FILMY_FK" FOREIGN KEY ("FILM_ID")
	  REFERENCES "IE88191"."FILMY" ("FILM_ID") ENABLE;
  ALTER TABLE "IE88191"."GATUNKI_FILMOW" ADD CONSTRAINT "GATUNKI_FILMOW_GATUNKI_FK" FOREIGN KEY ("GATUNEK_ID")
	  REFERENCES "IE88191"."GATUNKI" ("GATUNEK_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MIEJSCA
--------------------------------------------------------

  ALTER TABLE "IE88191"."MIEJSCA" ADD CONSTRAINT "MIEJSCA_FOTELE_FK" FOREIGN KEY ("FOTEL_ID")
	  REFERENCES "IE88191"."FOTELE" ("FOTEL_ID") ENABLE;
  ALTER TABLE "IE88191"."MIEJSCA" ADD CONSTRAINT "MIEJSCA_RZEDY_FK" FOREIGN KEY ("RZAD_ID")
	  REFERENCES "IE88191"."RZEDY" ("RZAD_ID") ENABLE;
  ALTER TABLE "IE88191"."MIEJSCA" ADD CONSTRAINT "MIEJSCA_SALE_FK" FOREIGN KEY ("SALA_ID")
	  REFERENCES "IE88191"."SALE" ("SALA_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REZYSERIE_FILMOW
--------------------------------------------------------

  ALTER TABLE "IE88191"."REZYSERIE_FILMOW" ADD CONSTRAINT "REZYSERIE_FILMOW_FILMY_FK" FOREIGN KEY ("FILM_ID")
	  REFERENCES "IE88191"."FILMY" ("FILM_ID") ENABLE;
  ALTER TABLE "IE88191"."REZYSERIE_FILMOW" ADD CONSTRAINT "REZYSERIE_FILMOW_REZYSERZY_FK" FOREIGN KEY ("REZ_ID")
	  REFERENCES "IE88191"."REZYSERZY" ("REZ_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEANSE
--------------------------------------------------------

  ALTER TABLE "IE88191"."SEANSE" ADD CONSTRAINT "SEANSE_FILMY_FK" FOREIGN KEY ("FILM_ID")
	  REFERENCES "IE88191"."FILMY" ("FILM_ID") ENABLE;
  ALTER TABLE "IE88191"."SEANSE" ADD CONSTRAINT "SEANSE_SALE_FK" FOREIGN KEY ("SALA_ID")
	  REFERENCES "IE88191"."SALE" ("SALA_ID") ENABLE;
