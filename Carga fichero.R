load("~/Desktop/Recu_DS/Recu_examen_ds/muestra01.RData")
dim(muestra01)
#este fichero tiene 336086 filas y 3 columnas

colnames(muestra01)
#tiene 3 columnas: var1,var2 y var3.


names(muestra01) <- c("NifCif", "nombre", "genero")
names(muestra01)

#cambio los nombres de las variables


# Identificadion Sociedades Limitadas -------------------------------------
library(stringr)
regexp <- "([[:alpha:]]{1})([[:digit:]]{8})"
grepl(pattern = regexp, x = muestra01$NifCif) #no hay ningun registro que empiece por una letra y tenga 8 digitos

str_detect(muestra01$NifCif, "^B")

#No hay ningun registro que empiece por la letra B y tenga 8 digitod