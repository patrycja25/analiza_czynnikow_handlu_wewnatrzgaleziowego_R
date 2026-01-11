# analiza_czynnikow_handlu_wewnatrzgaleziowego

# Skrypt w języku R zawiera analizę wstępną determinant handlu wewnątrzgałęziowego (mierzonego indeksem Grubela-Lloyda) przy użyciu zmiennych typowych dla modelu grawitacyjnego, badając wpływ odległości, wielkości rynku, zamożności oraz porozumień handlowych na intensywność wymiany.

# Wymagane biblioteki:

tidyverse, readxl: wczytywanie, manipulacja danymi i podstawowa wizualizacja.

corrplot: wizualizacja macierzy korelacji.

## Analiza opiera się na zbiorze danych model_grawitacyjny.xlsx.

# Kluczowe zmienne:

- odległość jako średnia ważona odległości między największymi aglomeracjami obu krajów. Wagami w tym wyliczeniu jest udział ludności danego miasta w całkowitej populacji kraju, 

- podobieństwo liczone jako wartości bezwzględną różnicy PKB per capita dla pary krajów raportujących i partnerskich, 

- zamożność liczona jako średnie PKB per capita dla pary krajów raportujących i partnerskich, 

- wielkość rynku liczona jako średnie PKB dla pary krajów raportujących i partnerskich, 

- RTA jako zmienna zero-jedynkowa przyjmująca wartość 1, gdy oba kraje należą do tej samej strefy wolnego handlu lub posiadają wiążącą umowę handlową oraz 0 w przeciwnym przypadku, 

- wspólny język jako zmienna zero-jedynkowa przyjmująca wartość 1, gdy kraje posiadają przynajmniej jeden wspólny język urzędowy oraz 0 w przeciwnym przypadku,  

- wspólna granica jako zmienna zero-jedynkowa przyjmująca wartość 1, gdy kraje sąsiadują ze sobą lądowo, oraz 0 w przeciwnym przypadku, 

# Analiza danych i wnioski wizualne:

We wstępnej analizie danych wykonano trzy wykresy, w celu sprawdzenia zależności pomiędzy zmiennymi objaśniającymi, a zmienną objaśniano. Ustalono (Rplot1) ujemną korelację pomiędzy odległością, a intensywnością handlu wewnątrzgałęziowego. Im większa odległość między partnerami handlowymi, tym niższa wartość zagregowanego wskaźnika Grubela-Lloyda. Jest to zgodne z teorią grawitacji w handlu międzynarodowym. Koszty transportu i bariery informacyjne rosną wraz z odległością, co zniechęca do handlu wewnątrzgałęziowego.  

Ustalono (Rplot2), że jest to najsilniej negatywna korelacja dla badanej zmiennej objaśnianej w tym zestawieniu (-0,36). Ponadto wywnioskowano słabą ujemną korelację między wielkością rynku, a zmienną objaśnianą (-0,20) oraz podobieństwem, a zmienną zależną (–0,17). Równocześnie zaobserwowano brak istotnej korelacji liniowej między zamożnością, a wartość zagregowanego wskaźnika Grubela-Lloyda w badanej próbie. Z obserwacji korelacji zmiennych niezależnych ustalono silną dodatnią korelację między podobieństwem, a wielkością rynku (0,61) oraz odległością, a wielkością rynku (0,57).  

Ponadto ustalono, że (Rplot3) istnienie Regionalnych Porozumień Handlowych (RTA) sprzyja wyższemu poziomowi handlu wewnątrzgałęziowego. Zniesienie ceł i barier w ramach RTA ułatwia wymianę podobnych produktów. 
