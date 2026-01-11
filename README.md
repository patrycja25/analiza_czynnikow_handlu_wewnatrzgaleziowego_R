# analiza_czynnikow_handlu_wewnatrzgaleziowego

# Skrypt w języku R analizuje determinanty handlu wewnątrzgałęziowego (mierzonego indeksem Grubela-Lloyda) przy użyciu zmiennych typowych dla modelu grawitacyjnego, badając wpływ odległości, wielkości rynku, zamożności oraz porozumień handlowych na intensywność wymiany.

# Wymagane biblioteki:

tidyverse, readxl: wczytywanie, manipulacja danymi i podstawowa wizualizacja.

corrplot: wizualizacja macierzy korelacji.

## Analiza opiera się na zbiorze danych model_grawitacyjny.xlsx.

# Kluczowe zmienne:

zagregowany_GL: Indeks Grubela-Lloyda (zmienna zależna, mierząca poziom handlu wewnątrzgałęziowego).

odległość: Dystans geograficzny między partnerami handlowymi (w analizie używany logarytm).

podobieństwo: Wskaźnik podobieństwa gospodarczego (np. struktur PKB).

zamożność: Poziom zamożności partnerów handlowych.

wielkość_rynku: Rozmiar rynku (zwykle mierzony PKB).

RTA (Regional Trade Agreement): Zmienna binarna (0/1) oznaczająca istnienie regionalnego porozumienia handlowego.

# Analiza danych i wnioski wizualne:

Przeprowadzono wstępną analizę danych: 

Relacja z odległością: Wykres punktowy z linią trendu wskazuje na ujemną korelację między logarytmem odległości a indeksem GL. Oznacza to, że im dalej znajdują się kraje, tym mniejszy udział handlu wewnątrzgałęziowego (zgodnie z teorią grawitacji).

Macierz korelacji:

Silna dodatnia korelacja między zagregowany_GL a wielkość_rynku (większe rynki sprzyjają specjalizacji wewnątrzgałęziowej).

Potwierdzenie ujemnej korelacji z odległością (-0.36).

Wpływ porozumień handlowych (RTA): Wykres pudełkowy (boxplot) wyraźnie pokazuje, że kraje posiadające porozumienie handlowe (RTA = 1) charakteryzują się wyższą medianą indeksu GL oraz mniejszym rozrzutem wyników w dolnych kwartylach w porównaniu do krajów bez umów.

Rozkład zmiennej: Histogram indeksu GL wskazuje na rozkład multimodalny, co sugeruje zróżnicowanie w strukturze handlu analizowanych krajów i może wymagać zastosowania metod estymacji odpornej (biblioteki robust, MASS załadowane w skrypcie).
