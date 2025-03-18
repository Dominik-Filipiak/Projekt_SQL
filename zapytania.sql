--1 Opis: Pobierz szczegółowe informacje o biletach, w tym datę zakupu, rodzaj biletu, nazwę filmu, imię i nazwisko klienta oraz cenę biletu.
SELECT b.data_zakupu, b.rodzaj, f.nazwa AS film, d.imie, d.nazwisko, c.cena
FROM bilety b
JOIN seanse s ON b.seans_id = s.seans_id
JOIN filmy f ON s.film_id = f.film_id
JOIN klienci k ON b.klient_id = k.klient_id
JOIN dane_osobowe d ON k.klient_id = d.klient_id
JOIN ceny c ON b.cena_id = c.cena_id;


--2 Opis: Oblicz całkowitą sumę wydatków każdego klienta na bilety, posortowaną malejąco.
SELECT k.nazwa_uzytkownika, d.imie, d.nazwisko, SUM(c.cena) AS total_wydatki
FROM klienci k
JOIN bilety b ON k.klient_id = b.klient_id
JOIN ceny c ON b.cena_id = c.cena_id
JOIN dane_osobowe d ON k.klient_id = d.klient_id
GROUP BY k.nazwa_uzytkownika, d.imie, d.nazwisko
ORDER BY total_wydatki DESC;

--3 Opis: Pobierz klientów, których imiona i nazwiska mają łącznie więcej niż 10 znaków.
SELECT k.nazwa_uzytkownika, d.imie, d.nazwisko, LENGTH(d.imie || d.nazwisko) AS dlugosc_imienia_nazwiska
FROM klienci k
JOIN dane_osobowe d ON k.klient_id = d.klient_id
WHERE LENGTH(d.imie || d.nazwisko) > 10;


--4 Opis: Pobierz listę klientów, których numery telefonów są sformatowane jako międzynarodowe (z dodanym prefiksem +48).
SELECT d.imie, d.nazwisko, '+48' || TO_CHAR(d.nr_tel) AS nr_tel_miedzynarodowy
FROM dane_osobowe d
WHERE d.nr_tel IS NOT NULL;

--5 Opis: Pobierz klientów, którzy nie podali numeru telefonu.
SELECT d.imie, d.nazwisko, d.adres, k.nazwa_uzytkownika
FROM dane_osobowe d
JOIN klienci k ON d.klient_id = k.klient_id
WHERE d.nr_tel IS NULL;

--6 Opis: Pobierz wszystkie seanse, które odbędą się w przyszłym miesiącu.
SELECT s.seans_id, f.nazwa AS film, s.data, s.godzina
FROM seanse s
JOIN filmy f ON s.film_id = f.film_id
WHERE s.data BETWEEN ADD_MONTHS(SYSDATE, 1) AND LAST_DAY(ADD_MONTHS(SYSDATE, 1));


--7 Opis: Pobierz listę filmów, które mają więcej niż lub 2 gatunki i były wyświetlane w ostatnich 2 miesiącach.
SELECT f.nazwa
FROM filmy f
WHERE (SELECT COUNT(*) FROM gatunki_filmow gf WHERE gf.film_id = f.film_id) >= 2
  AND EXISTS (
      SELECT 1
      FROM seanse s
      WHERE s.film_id = f.film_id
        AND s.data BETWEEN ADD_MONTHS(SYSDATE, -2) AND SYSDATE
  );


--8 Opis: Pobierz klientów, którzy kupili bilety na filmy wyreżyserowane przez reżysera o nazwisku "Corbet".
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
);






--PERSPEKTYWY

--1 
CREATE VIEW szczegoly_biletow AS
SELECT b.data_zakupu, b.rodzaj, f.nazwa AS film, d.imie, d.nazwisko, c.cena
FROM bilety b
JOIN seanse s ON b.seans_id = s.seans_id
JOIN filmy f ON s.film_id = f.film_id
JOIN klienci k ON b.klient_id = k.klient_id
JOIN dane_osobowe d ON k.klient_id = d.klient_id
JOIN ceny c ON b.cena_id = c.cena_id;

--2
CREATE VIEW wydatki_klientow AS
SELECT k.nazwa_uzytkownika, d.imie, d.nazwisko, SUM(c.cena) AS total_wydatki
FROM klienci k
JOIN bilety b ON k.klient_id = b.klient_id
JOIN ceny c ON b.cena_id = c.cena_id
JOIN dane_osobowe d ON k.klient_id = d.klient_id
GROUP BY k.nazwa_uzytkownika, d.imie, d.nazwisko;

--3
CREATE VIEW klienci_dlugie_nazwiska AS
SELECT k.nazwa_uzytkownika, d.imie, d.nazwisko, LENGTH(d.imie || d.nazwisko) AS dlugosc_imienia_nazwiska
FROM klienci k
JOIN dane_osobowe d ON k.klient_id = d.klient_id
WHERE LENGTH(d.imie || d.nazwisko) > 10;

--4
CREATE VIEW klienci_miedzynarodowe_nr_tel AS
SELECT d.imie, d.nazwisko, '+48' || TO_CHAR(d.nr_tel) AS nr_tel_miedzynarodowy
FROM dane_osobowe d
WHERE d.nr_tel IS NOT NULL;

--5
CREATE VIEW klienci_bez_telefonu AS
SELECT d.imie, d.nazwisko, d.adres, k.nazwa_uzytkownika
FROM dane_osobowe d
JOIN klienci k ON d.klient_id = k.klient_id
WHERE d.nr_tel IS NULL;


--6
CREATE VIEW seanse_przyszly_miesiac AS
SELECT s.seans_id, f.nazwa AS film, s.data, s.godzina
FROM seanse s
JOIN filmy f ON s.film_id = f.film_id
WHERE s.data BETWEEN ADD_MONTHS(SYSDATE, 1) AND LAST_DAY(ADD_MONTHS(SYSDATE, 1));

--7
CREATE VIEW filmy_wiele_gatunkow AS
SELECT f.nazwa
FROM filmy f
WHERE (SELECT COUNT(*) FROM gatunki_filmow gf WHERE gf.film_id = f.film_id) >= 2
  AND EXISTS (
      SELECT 1
      FROM seanse s
      WHERE s.film_id = f.film_id
        AND s.data BETWEEN ADD_MONTHS(SYSDATE, -2) AND SYSDATE
  );

--8

CREATE VIEW klienci_corbet AS
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
);


--Wyświetlanie z perspektyw
SELECT * FROM szczegoly_biletow;
SELECT * FROM wydatki_klientow ORDER BY total_wydatki DESC;
SELECT * FROM klienci_dlugie_nazwiska;
SELECT * FROM klienci_miedzynarodowe_nr_tel;
SELECT * FROM klienci_bez_telefonu;
SELECT * FROM seanse_przyszly_miesiac;
SELECT * FROM filmy_wiele_gatunkow;
SELECT * FROM klienci_corbet;