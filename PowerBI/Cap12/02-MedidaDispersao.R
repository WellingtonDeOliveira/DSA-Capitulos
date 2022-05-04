# Estatistica Basica 

# Parte 2 - Medidas de Dispersao

# Definindo a pasta de trabalho
# Substitua o caminho abaixo pela pasta no seu PC
setwd("C:/Arquivos/Documents/PowerBI/Cap12")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do dataset
View(vendas)
str(vendas)
summary(vendas$Valor)

# Variancia
var(vendas$Valor)

# Desvio Padrao
sd(vendas$Valor)