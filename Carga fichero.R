load("~/Desktop/Recu_DS/Recu_examen_ds/muestra01.RData")
dim(muestra01)
#este fichero tiene 336086 filas y 3 columnas

colnames(muestra01)
#tiene 3 columnas: var1,var2 y var3.


names(muestra01) <- c("NifCif", "nombre", "genero")
names(muestra01)
#cambio los nombres de las variables

<<<<<<< HEAD
library(stringr)
muestra01$NifCif
regexp <- "([[:alpha:]]{1})([[:digit:]]{8})"
grepl(pattern = regexp, x = muestra01$NifCif)

str_detect(muestra01$NifCif, "^a") 


#no hay ningun registro que empieza por una letra y luego tenga 8 caracteres
=======
#cambio los nombres de las variables


# Identificadion Sociedades Limitadas -------------------------------------
library(stringr)
regexp <- "([[:alpha:]]{1})([[:digit:]]{8})"
grepl(pattern = regexp, x = muestra01$NifCif) #no hay ningun registro que empiece por una letra y tenga 8 digitos

str_detect(muestra01$NifCif, "^B")

#No hay ningun registro que empiece por la letra B y tenga 8 digitod
>>>>>>> rama2


#podemos ver que tenemos un conflicto, por lo que tenemos que eliminar varias lineas. He intentado eliminar las lineas
#de la rama 2, porque posteriormente tenemos qye eliminar la rama 2, pero me da error. He intentado eliminar también 
#las lineas del master, pero también me sigue diciendo que tenemos un conflicto.

#No podemos mergear la rama 2 a la rama master porque en los 2 ficheros tenemos escrito distintas cosas en las filas, y
#es por ello que no nos deja merge

#Al no dejarme hacer el merge, no puedo eliminar la rama2