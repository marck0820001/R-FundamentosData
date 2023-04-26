#para obtener un valor aleatorio de la(s) variable(s) del dataframe que queremos examinar (data en nuestro ejemplo). Esta técnica la llamamos Muestra Aleatoria Simple (MAS).
rand.valor <- function(x){ 
  faltantes <- is.na(x)
  tot.faltantes <- sum(faltantes)
  x.obs <- x[!faltantes]
  valorado <- x
  valorado[faltantes] <- sample(x.obs, tot.faltantes, replace = TRUE)
  return (valorado)
}
random.df <- function(df, cols){ 
  nombres <- names(df) 
  for (col in cols) {
    nombre <- paste(nombres[col], "valorado", sep = ".")
    df[nombre] <- rand.valor(df[,col])
   }
  df
}

data.limpio <- random.df(data, c(1,2))
View(data.limpio)



###Evitar duplicación de observaciones
familia.salario <- c(40000,60000,50000, 80000, 60000, 70000, 60000)
familia.integrantes <- c(4,3,2,2,3,4,3)
###
familia.auto <- c("Lujo", "Compacto", "SUV", "Lujo", "Compacto", "Compacto", "Compacto")
familia <- data.frame(familia.salario, familia.integrantes, familia.auto)
View(familia)
##Con la funcion duplicated, nos muestra la duplicacion de los datos con un valor booleano
duplicated(familia)
#Nos muestra las duplicadas
familia[duplicated(familia),]

#Nos muestra las unicas
unique(familia)

familias.unicas <- unique(familia)
View(familias.unicas)




















