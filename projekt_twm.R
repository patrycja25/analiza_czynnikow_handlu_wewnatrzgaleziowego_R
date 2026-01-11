rm(list = ls()) # czyścimy środowisko
options(scipen = 999, digits=5)
gc() # free memory


requiredPackages = c("stargazer", "lmtest", "fBasics", "sandwich", 
                     "olsrr", "car", "sandwich", "MASS", "tseries",
                     "robust", "haven", "tidyverse", "readxl", "corrplot")

for(i in requiredPackages){if(!require(i,character.only = TRUE)) install.packages(i)}
for(i in requiredPackages){if(!require(i,character.only = TRUE)) library(i,character.only = TRUE) }


setwd("C:\\Users\\rutko\\Desktop\\Projekt_twm")

dane <- read_xlsx("model_grawitacyjny.xlsx")

View(dane)

names(dane) # names of variables in dataset

summary(dane)

# Relacja handlu z odległością 
ggplot(dane, aes(x = log(odległość), y = zagregowany_GL)) +
  geom_point(alpha = 0.5, color = "darkblue") +
  geom_smooth(method = "lm", color = "red") +
  labs(title = "Relacja indeksu GL i odległości",
       x = "Logarytm odległości",
       y = "Indeks Grubela-Lloyda") +
  theme_minimal()

# Wybieramy zmienne numeryczne do korelacji
zmienne_num <- dane %>% 
  select(zagregowany_GL, odległość, podobieństwo, zamożność, wielkość_rynku)

res <- cor(zmienne_num, use = "complete.obs")
corrplot(res, method = "color", addCoef.col = "black", 
         type = "upper", tl.col = "black", tl.srt = 45)

# Porównanie indeksu GL dla krajów z RTA i bez
ggplot(dane, aes(x = as.factor(RTA), y = zagregowany_GL, fill = as.factor(RTA))) +
  geom_boxplot() +
  scale_x_discrete(labels = c("0" = "Brak RTA", "1" = "RTA")) +
  labs(title = "Wpływ porozumień handlowych na indeks GL",
       x = "Regional Trade Agreement",
       y = "Zagregowany GL") +
  theme_light() +
  guides(fill = FALSE)

#Histogram zmiennej zależnej (indeksu GL)
ggplot(dane, aes(x = zagregowany_GL)) +
  geom_histogram(bins = 30, fill = "steelblue", color = "white") +
  labs(title = "Rozkład indeksu Grubela-Lloyda",
       x = "Indeks GL",
       y = "Częstość") +
  theme_minimal()

