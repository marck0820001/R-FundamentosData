#el na.string = "" rellena los spacios vacios con NA, basicamente dice, si es un "" pon un NA
data <- read.csv("missing-data.csv", na.strings = "")
data.limpia <- na.omit(data)
#na.omit(data), elimina las obsevaciones(filas) que contengan un NA

View(data.limpia)
#La funcion na.omit(data), usa internamente el is.na() que devuelve un booleano
is.na(data[4,2])
#Es NA el valor de la fila 4 y de la columna 2
is.na(data[4,1])
is.na(data$Income)


#####Limpiar datos NA de sólo una variable de un dataframe
##Limpieza  selectiva de datos sin valor
data.income.limpio <- data[!is.na(data$Income),]
#porque después de la “,” no se ha especificado que lo haga de alguna variable o columna en particular
#En lugar de utilizar la función na.omit(), podemos utilizar la funcion complete.cases() que nos retorna un vector booleano con los valores True o False si encuentra una valor NA.


#### Limpiar datos NA de todo el dataframe 
complete.cases(data)
data.limpia2 <- data[complete.cases(data),]


#### Limpiar los valores ‘cero’ de una variable de un dataframe
#verificamos el numero de 0 en el dataset
data$Income[data$Income == 0]
data$Income[data$Income == 0] <- NA
data$Income[data$Income == 0]
#comprobamos que todos los 0 ahora son NA


#Limpiar los valores NA con valores/métricas estadísticas y/o matemáticas
#obs, si hay minimo un NA y queremos sacar el promedio u otras cosas, nos dara NA
mean(data$Income)
#na.rm = True, remueve los valores que sean NA  al sacar el promedio
mean(data$Income, na.rm=TRUE)
sd(data$Income)
sd(data$Income, na.rm=TRUE)
sum(data$Income)
sum(data$Income, na.rm=TRUE)

#Reemplazo de datos NA con la media o con la extraccion aleatoria de valores












