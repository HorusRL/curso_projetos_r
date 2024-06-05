# -------------------------------------------------------------------------
# Curso "Introdução a projetos no R" - UERN
#
# Prof:Alex Barbosa de Moraes
#
# Last update: 2024-06-05
# -------------------------------------------------------------------------



# Importação de dados -----------------------------------------------------

dados <- read.table(file="my_file.txt")
# ou
dados <- read.table("my_file.txt")

dados <- read.table("my_file.txt", header=TRUE)
# ou
dados <- read.table("my_file.txt", header=T)


# Importação de dados com outro delimitador -------------------------------


dados2 <- read.table("my_file2.txt", header=T)
dados2 <- read.delim2("my_file2.txt", header=T)


# Importação de csv -------------------------------------------------------


dados <- read.csv("my_file.csv", header=T)


# Manipulação de dados ----------------------------------------------------

library(dplyr)
library(tidyverse)

# Criar um objeto com nosso conjunto de dados de exemplo
iris <- iris

# Visualizar todo o conjunto de dados de exemplo.
view(iris)

# 1. Select ---------------------------------------------------------------

select(iris, Sepal.Length, Species)


# 2. Filter ---------------------------------------------------------------

filter(iris, Sepal.Length > 7)

filter(iris, Sepal.Length > 7, Petal.Length >6, Species == "virginica")


# 3. Arrange --------------------------------------------------------------

arrange(iris, Sepal.Length)

arrange(iris, Species, desc(Sepal.Length))


# 4. Summarise ------------------------------------------------------------

by_species <- group_by(iris, Species)

summarise(by_species, media_Sepal.Length = mean(Sepal.Length))

summarise(by_species, min_Sepal.Length = min(Sepal.Length))

summarise(by_species, max_Sepal.Length = max(Sepal.Length))

summarise(by_species, media_Sepal.Length = mean(Sepal.Length), min_Sepal.Length = min(Sepal.Length), max_Sepal.Length = max(Sepal.Length))


# 5. Mutate ---------------------------------------------------------------

mutate(iris, Razao = Sepal.Length/Petal.Length)

mutate(iris, Soma = Sepal.Length+Petal.Length)

