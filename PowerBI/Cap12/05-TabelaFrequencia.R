# Estatistica Basica 

# Parte 5 - Tabela de Frequencia

# Definindo a pasta de trabalho
# Substitua o caminho abaixo pela pasta no seu PC
setwd("C:/Arquivos/Documents/PowerBI/Cap12")
getwd()

# Carregando o dataset
dados <- read.table("Usuarios.csv",
                     dec = ".",
                     sep = ",",
                     h = T,
                     fileEncoding = "windows-1252")

# Visualizando e sumarizando os dados
View(dados)
names(dados)
str(dados)
summary(dados$salario)
summary(dados$grau_instrucao)
mean(dados$salario)
mean(dados$grau_instrucao)

# Tabela de Frequencia Absoluta
freq <- table(dados$grau_instrucao)
View(freq)

# Tabela de Frequencia Relativas
freq_rel <- prop.table(freq)
View(freq_rel)

# Porcentagem (100 * freq_rel_table)
p_freq_rel <- 100 * prop.table(freq_rel)
View(p_freq_rel)

# Adiciona linhas de total
View(freq)
freq <- c(freq, sum(freq))
names(freq)[4] <- "Total"
View(freq)

# Tabela final com todos os vetores
tabela_final <- cbind(freq,
                      freq_rel = round(freq_rel, digits = 2),
                      p_freq_rel = round(p_freq_rel, digits = 2))
View(tabela_final)