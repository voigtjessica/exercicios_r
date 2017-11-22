# Aula 4

### IFELSE

# Ele equivale a função "SE" do excel
# "Se a coluna ao lado for >=5 então aprovado, se não, reprovado"
# Exemplo:

notas <- c("nome, nota",
           "Maria, 5",
           "João, 7",
           "Clara, 1",
           "Zuleide, 8",
           "Zequinha, 4")

notas  <- read.csv(text = notas , strip.white = TRUE)

#Objetivo: criar uma coluna para saber se eles passaram ou não

boletins1 <- notas %>%
  mutate(resultado_final = ifelse(nota >= 5, "aprovado",
                                  "reprovado"))

passaram

#agora, vamos fingir que notas menores que 2 são automaticamente reprovados 
# e notas entre 2 e 5 vão para recuperação

boletins2 <- notas %>%
  mutate(resultado_final = ifelse(nota >= 5, "aprovado",
                                  ifelse(nota < 2, "reprovado",
                                         "recuperação")))

boletins2

#Agora vamos tentar outro exemplo, criem a tabela de compras abaixo:


transparencia_equipe <- c("nome, cidade",
                          "Jessica, Santos",
                          "Hugo, Guarujá",
                          "Renata, Santos",
                          "Gabriella, Osasco",
                          "Lorena, Itabuna")

transparencia_equipe  <- read.csv(text = transparencia_equipe , strip.white = TRUE)

#Use o ifelse e o | (ou) para criar a coluna dos estados de cada uma das cidades

## Aula 4

### Joins
## O dplyr também tem verbos para duas tabelas
## os joins, que servem para juntar duas tabelas
## Simples exemplo, adaptaod de https://stat545-ubc.github.io/bit001_dplyr-cheatsheet.html

super_heroes <-
  c("    name, alignment, gender,         publisher",
    " Magneto,       bad,   male,            Marvel",
    "   Storm,      good, female,            Marvel",
    "Mystique,       bad, female,            Marvel",
    "  Batman,      good,   male,                DC",
    "   Joker,       bad,   male,                DC",
    "Catwoman,       bad, female,                DC",
    " Hellboy,      good,   male, Dark Horse Comics")
super_heroes <- read.csv(text = super_heroes, strip.white = TRUE)

publishers <- 
  c("publisher, yr_founded",
    "       DC,       1934",
    "   Marvel,       1939",
    "    Image,       1992")
publishers <- read.csv(text = publishers, strip.white = TRUE)

super_heroes
publishers

## objetivo, pegar o ano de fundaçao da revista, e juntar cm superheroes

## verbos
## inner_join, left_join, right_join, full_join etc.
inner_join(super_heroes, publishers)
# perdemos Hell boy

left_join(super_heroes, publishers)

right_join(super_heroes, publishers)

anti_join(super_heroes, publishers)
# deixa o que n tem match
