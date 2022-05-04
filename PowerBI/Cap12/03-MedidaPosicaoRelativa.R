# Estatistica Basica 

# Parte 3 - Medidas de Posicao Relativa

# Cuidado: A Linguaguem R e case sensitive!

# Definindo a pasta de trabalho
# Substitua o caminho abaixo pela pasta no seu PC
setwd("C:/Arquivos/Documents/PowerBI/Cap12")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo dos dados
head(vendas)
tail(vendas)
View(vendas)

# Medidas de tendencia central
summary(vendas$Valor)
summary(vendas[c('Valor', 'Custo')])

# Explorando variaveis numericas
mean(vendas$Valor)
median(vendas$Valor)
quantile(vendas$Valor)
quantile(vendas$Valor, probs = c(0.01, 0.99))
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.20))
IQR(vendas$Valor) # Diferenca entre Q3 e Q1
range(vendas$Valor)
summary(vendas$Valor)
diff(range(vendas$Valor))
