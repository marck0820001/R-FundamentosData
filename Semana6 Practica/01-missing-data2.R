
data <- read.csv("missing-data.csv", na.strings = "" )
#1 convertinos en  los 0  en NA
data$Income[data$Income == 0] <- NA
#la función ifelse() le asignamos a esta nueva variable el valor medio de ingresos de la población (reemplazamos los valores con NA), dejando el valor original de ingreso a las filas que tienen un valor distinto a NA
data$Income.mean <- ifelse(is.na(data$Income), mean(data$Income, na.rm = TRUE), data$Income)
#creamos una cuarta columna con la finalidad de poner los datos normales  y a las NA cambiarlos por el promedio

#Caso 2: Reemplazo de datos NA con un valor aleatorio simple 
#NO PODEMOS CALCULAR EL PROMEDIO DE VARIABLES CATEGORICAS, SOLO DE VARIABLES NUMERICAS
