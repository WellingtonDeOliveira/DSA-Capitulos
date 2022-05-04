# Estatistica Basica 

# Parte 1 - Medidas de Posicao

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
summary(vendas$Custo)

# Media
?mean
mean(vendas$Valor)
mean(vendas$Custo)

# Media Ponderada
?weighted.mean
weighted.mean(vendas$Valor, w = vendas$Custo)

# Mediana
median(vendas$Valor)
median(vendas$Custo)

# Moda
# Criando uma funsao
moda <- function(v) {
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

# Obtenha a Moda
resultado <- moda(vendas$Valor)
print(resultado)

# Obtenha a Moda
resultadoCusto <- moda(vendas$Custo)
print(resultadoCusto)

# Criando grafico de Media de valor Por Estado com ggplot2
install.packages("ggplot2")
library(ggplot2)

# Cria o grafico
ggplot(vendas) + 
  stat_summary(aes(x = Estado,
                   y = Valor),
               fun = mean,
               geom = "bar",
               fill = "lightgreen",
               col = "grey50") +
  labs(title = "Média de Valor Por Estado")

