-- Vytvoření databáze

CREATE DATABASE knihovna;

-- Vytvoření tabulek

-- Tabulka knih
CREATE TABLE knihy (
  id_knihy INTEGER PRIMARY KEY AUTO_INCREMENT,
  nazev TEXT NOT NULL,
  autor TEXT NOT NULL,
  kategorie TEXT NOT NULL,
  rok_vydani INTEGER NOT NULL,
  pocet_stran INTEGER NOT NULL,
  hodnoceni REAL NOT NULL,
  dostupnost BOOLEAN NOT NULL DEFAULT TRUE
);

-- Tabulka autorů
CREATE TABLE autori (
  id_autora INTEGER PRIMARY KEY AUTO_INCREMENT,
  jmeno TEXT NOT NULL,
  prijmeni TEXT NOT NULL
);

-- Tabulka výpůjček
CREATE TABLE vypujcky (
  id_vypujcky INTEGER PRIMARY KEY AUTO_INCREMENT,
  id_knihy INTEGER NOT NULL,
  id_uzivatele INTEGER NOT NULL,
  datum_pujceni DATE NOT NULL,
  datum_vraceni DATE
);

-- Tabulka uživatelů
CREATE TABLE uzivatele (
  id_uzivatele INTEGER PRIMARY KEY AUTO_INCREMENT,
  jmeno TEXT NOT NULL,
  prijmeni TEXT NOT NULL
);

-- Vložení příkladových dat

-- Autoři
INSERT INTO autori (jmeno, prijmeni) VALUES ('Gabriel', 'García Márquez');
INSERT INTO autori (jmeno, prijmeni) VALUES ('J. R. R.', 'Tolkien');
INSERT INTO autori (jmeno, prijmeni) VALUES ('Antoine de', 'Saint-Exupéry');

-- Knihy
INSERT INTO knihy (nazev, autor, kategorie, rok_vydani, pocet_stran, hodnoceni)
VALUES ('Sto let samoty', 'Gabriel García Márquez', 'beletrie', 1967, 471, 4.5);
INSERT INTO knihy (nazev, autor, kategorie, rok_vydani, pocet_stran, hodnoceni)
VALUES ('Pán prstenů: Společenstvo Prstenu', 'J. R. R. Tolkien', 'fantasy', 1954, 423, 4.8);
INSERT INTO knihy (nazev, autor, kategorie, rok_vydani, pocet_stran, hodnoceni)
VALUES ('Malý princ', 'Antoine de Saint-Exupéry', 'pohádka', 1943, 96, 4.7);

-- Výpůjčky
INSERT INTO vypujcky (id_knihy, id_uzivatele, datum_pujceni, datum_vraceni)
VALUES (1, 1, '2024-03-01', '2024-03-15');
INSERT INTO vypujcky (id_knihy, id_uzivatele, datum_pujceni, datum_vraceni)
VALUES (2, 2, '2024-03-10', '2024-04-05');
INSERT INTO vypujcky (id_knihy, id_uzivatele, datum_pujceni, datum_vraceni)
VALUES (3, 3, '2024-03-15', '2024-04-01');

-- Uživatelé
INSERT INTO uzivatele (jmeno, prijmeni) VALUES ('Jana', 'Nováková');
INSERT INTO uzivatele (jmeno, prijmeni) VALUES ('Petr', 'Novotný');
INSERT INTO uzivatele (jmeno, prijmeni) VALUES ('Anna', 'Dvořáková');

