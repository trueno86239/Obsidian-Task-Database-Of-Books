
**Cíl úkolu:**

Cílem tohoto úkolu je procvičit si práci s databází v jazyce SQL. Žák bude analyzovat databázi knihovny a zodpoví otázky týkající se knih, autorů a výpůjček.

**Podmínky zadání:**

- Žák bude pracovat s databází knihovny, která bude k dispozici v souboru `knihy.sql`.
- Žák odpoví na otázky v textovém souboru.

**Postup:**

1. Stáhněte soubor a otevřete
2. Zodpovězte otázky v textovém souboru. U každé otázky uveďte SQL dotaz, který jste použili k získání odpovědi, a samotnou odpověď.

**Otázky:**

1. Kolik knih je v databázi?
2. Vypiš všechny autory, kteří napsali více než 3 knihy.
3. Kolik knih je v kategorii "beletrie"?
4. Najděte nejdelší knihu v databázi.
5. Kolik knih je v databázi dostupných (tj. nejsou vypůjčené)?

**Výstup:**

Výstupem úkolu bude textový soubor, který bude obsahovat odpovědi na zadané otázky. U každé otázky bude uveden SQL dotaz, který byl použit k získání odpovědi, a samotná odpověď.








**POZOR NEKOUKAT DÁLE JEN ODPOVĚDI!!!!!**



**Odpovědi:**


1. V databázi je 3 knihy.
2. V databázi nejsou žádní autoři, kteří by napsali více než 3 knihy.
3. V kategorii "beletrie" je 1 kniha.
4. Nejdelší knihou v databázi je **Sto let samoty** s délkou 471 stran.
5. V databázi jsou 2 knihy dostupné


**SQL Dotazy:**

```
-- 1. Kolik knih je v databázi?
SELECT COUNT(*) FROM knihy;

-- 2. Vypiš všechny autory, kteří napsali více než 3 knihy.
SELECT autor FROM knihy GROUP BY autor HAVING COUNT(*) > 3;

-- 3. Kolik knih je v kategorii "beletrie"?
SELECT COUNT(*) FROM knihy WHERE kategorie = 'beletrie';

-- 4. Najděte nejdelší knihu v databázi.
SELECT nazev, pocet_stran FROM knihy ORDER BY pocet_stran DESC LIMIT 1;

-- 5. Kolik knih je v databázi dostupných (tj. nejsou vypůjčené)?
SELECT COUNT(*) FROM knihy WHERE dostupnost = TRUE;
```
`
