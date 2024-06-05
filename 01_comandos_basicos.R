# -------------------------------------------------------------------------
# Curso "Descomplicando o R: da avers?o ? independ?ncia" - Naturaulas
#
# Prof:Alex Barbosa de Moraes
#
# Last update: 2021-05-27
# -------------------------------------------------------------------------


# Comando - Funcao - Argumento -------------------------------------------

log(10) # Faz o logaritmo de 10 na base 2 (defalt)

log(10,10) # Faz o logaritmo de 10 na base 10

log(100,10) # Faz o logaritmo de 100 na base 10

# Informacao faltando -----------------------------------------------------

log(10  #se você rodar no console só essa linha, vai ver que aparece um +. Isso indica que falta informação na função. Caso queira abortar um comando iniciado, simplesmente tecle ESC antes de iniciar outra função.
)    


# R e Case Sensitive ------------------------------------------------------

log(10) # isso
Log(10) # é diferente disso
log(10,10) # vírgulas são usada para separar argumentos.
log(10.5,10) # pontos são usados para casas decimais

# R Como calculadora ------------------------------------------------------

2+2 # Soma
3-2 # Diminuição
10/2 # Divisão
2*5 # Multiplicação
10^2 # Potência
sqtr(100) # Raiz quadrada
(9+3)/4 # Equação

# Instalacao de pacotes ----------------------------------------------------

install.packages("base") # Ao instalar um pacote já existente, ele retorna um alerta
install.packages("vegan") # Instalação de um pacote
library(vegan) # Carregar um pacote já instalado

# R - Orientado a objetos -------------------------------------------------

A <- 2+2 # Criação de um objeto
A
B <- 3+3
B
C <- A+B # Operações matemáticas utilizando objetos
C
D <- A+B-5 # Operações matemáticas mistas
D


# Tipos de dados ----------------------------------------------------------

# Character
teste <- "Curso de introdução a projetos no R" # Dados que são textuais
teste

# Numerico
teste <- 5.4 # Dados que são numéricos, inteiros ou decimais.

# Interger
teste <- as.interger(5.4) # Dados numéricos mas retorna um valor inteiro
teste

# Logico
x <- 1
y <- 2

teste <- x>y # Retorna uma resposta lógica a uma pergunta: TRUE ou FALSE
teste

# Tipos de objetos --------------------------------------------------------

# Escalar
teste <- 4 # Um único valor numérico
teste

# Vetor
teste <- c(1,2,3,4,5) # Conjunto de valores do tipo numérico
teste
teste <- c("Bola", "cafe", "unha") # Conjunto de valores do tipo caracter
teste

# Array (Arranjo)
vetor1 <- c(5,9,3)
vetor2 <- c(10,11,12,13,14,15)
arranjo <- array(c(vetor1,vetor2), dim=c(3,3,2)) # vetor multidimensional
arranjo

# List (Lista)
n <- c(5,6,8)
s <- c("ab","bc")
b <- c(FALSE,TRUE)
x <- list(n,s,b, 3) # x contem copias de n, s, b - ? um Conjunto de vetores, dataframes ou de matrizes. 
x

# Data-frame
teste <- data.frame(X = 1:10, Y = c(51, 54, 61, 67, 68, 75, 77, 75, 80, 82))
teste
names(teste)
teste$X
teste$Y

# Concatenar --------------------------------------------------------------

# o "c()" significa combinar informações em um vetor.

n <- c(5,6,8)
n
s <- c("ab","bc")
s
b <- c(FALSE,TRUE)
b

# Remocao de objeto -------------------------------------------------------

rm()
rm(teste) # Remove o objeto teste

# Acessar valores dentro de um objeto -------------------------------------

teste <- c(22,28,37,34,13,24,39,5,33,32) # Vetor de teste

teste[5] # Acessar o quinto elemento do vetor

teste[c(5,8,10)] # Acessa o quinto, oitavo e decimo elementos do vetor. Resultado e um vetor

teste[-1] # Acessa todos os elementos EXCETO o primeiro. O menos significa exceção

teste [1] <- 100 # Acessa o primeiro elemento do vetor e altera seu valor para 100.

# Para Matrizes

arranjo
arranjo[2,2] # Acessa o elemento na linha 2, coluna 2, nessa ordem.

arranjo[,2] # Acessar todo os elementos da coluna 2
arranjo[3,] # Acessar todo os elementos da linha 3


# Diretorio de trabalho ---------------------------------------------------

# Definir diretorio de trabalho
setwd()
setwd("C:/Users/Fulano/R files") # entre as aspas, escreva o diret?rio onde estiver seus arquivos de trabalho.

# Conferir diretorio de trabalho
getwd() # Pede para o R te dizer qual é o diretório de trabalho que ele está usando


# Fim! =)

