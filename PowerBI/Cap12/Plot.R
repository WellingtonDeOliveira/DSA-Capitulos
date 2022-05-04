# Definindo a pasta de trabalho
# Substitua o caminho abaixo pela pasta no seu PC
setwd("C:/Arquivos/Documents/PowerBI/Cap12")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Carrega o ggplot2
library(ggplot2)

# Cria o grafico
qplot(Valor, Custo, data = vendas)