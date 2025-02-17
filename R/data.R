#' Resultados por municipio de las elecciones de 2020 en Galicia
#'
#' Dataset que contiene los resultados electorales a nivel municipal de las elecciones 
#' autonómicas de Galicia en 2020.
#'
#' @format Un data frame con 1.868 filas y 13 columnas.
#' \describe{
#'   \item{election}{Año de la elección (2020)}
#'   \item{codigo_mun}{Código INE del municipio}
#'   \item{municipio}{Nombre del municipio}
#'   \item{provincia}{Provincia a la que pertenece el municipio}
#'   \item{censo}{Número de personas con derecho a voto}
#'   \item{partido}{Partido político}
#'   \item{votos}{Número de votos obtenidos}
#'   \item{blancos}{Votos en blanco}
#'   \item{nulos}{Votos nulos}
#'   \item{candidaturas}{Votos a candidaturas}
#' }
#' @source Instituto Galego de Estadística
#'
#' @examples
#' data(galicia_20_munis)
"galicia_20_munis"


#' Resultados del PP en las elecciones de 2020 en municipios de menos de 20.000 habitantes
#'
#' @format Un data frame con 296 filas y 13 columnas.
#' \describe{
#' }
#' @source Instituto Galego de Estadística
#'
#' @examples
#' data(galicia_20_pp_menos_20k)
"galicia_20_pp_menos_20k"

#' Resultados totales de las elecciones gallegas desde 1981
#'
#' Serie histórica de resultados electorales en las elecciones autonómicas de Galicia
#' desde 1981 hasta la actualidad.
#'
#' @format Un data frame con 57 filas y 3 columnas.
#' \describe{
#'   \item{election}{Año de la elección}
#'   \item{partido}{Partido político}
#'   \item{votos}{Número de votos obtenidos}
#' }
#' @source Instituto Galego de Estadística
#'
#' @examples
#' data(historic_totales_galicia)
"historic_totales_galicia"

#' Resultados del PP en las elecciones de 2020 en municipios de menos de 20.000 habitantes
#'
#' @format Un data frame con 350 filas y 9 columnas.
#' \describe{
#' }
#' @source Congreso de los Diputados
#'
#' @examples
#' data(diputados_congreso)
"diputados_congreso"

#' Renta media por persona en los municipios de la Comunidad de Madrid
#'
#' Datos de renta media por persona a nivel municipal en la Comunidad de Madrid.
#'
#' @format Un data frame con 179 filas y 5 columnas.
#' \describe{
#'   \item{municipio}{Nombre del municipio}
#'   \item{codigo_mun}{Código INE del municipio}
#'   \item{poblacion}{Población total del municipio}
#'   \item{renta}{Renta media por persona en euros}
#'   \item{año}{Año de referencia de los datos}
#' }
#' @source Instituto Nacional de Estadística
#'
#' @examples
#' data(renta_munis_madrid)
"renta_munis_madrid"

#' Renta media por persona en todos los municipios de España
#'
#' @format Un data frame con 8.136 filas y 5 columnas.
#' \describe{
#' }
#' @source Instituto Nacional de Estadística
#'
#' @examples
#' data(renta_munis)
"renta_munis"

#' Contagios acumulados e incidencia a 14 días por 100.000 habitantes de la Comunidad de Madrid
#'
#' (Documentación generada por Claude)
#' Serie temporal de datos COVID-19 para la Comunidad de Madrid, que permite analizar
#' la evolución de la pandemia a través de casos acumulados e incidencia.
#'
#' @format Un data frame con 753 filas y 4 columnas.
#' \describe{
#'   \item{fecha}{Fecha de la observación}
#'   \item{casos_acum}{Casos acumulados totales desde el inicio de la pandemia}
#'   \item{casos_14d}{Casos nuevos en los últimos 14 días}
#'   \item{incidencia_14d}{Incidencia acumulada a 14 días por 100.000 habitantes}
#' }
#' @source Ministerio de Sanidad y EL PAÍS
#'
#' @examples
#' data(covid_madrid)
"covid_madrid"


#' Contagios acumulados e incidencia a 14 días por 100.000 habitantes en cada comunidad autónoma
#'
#' (Documentación generada por Claude)
#' Serie temporal completa de datos COVID-19 para todas las comunidades autónomas de España,
#' permitiendo comparar la evolución de la pandemia entre territorios.
#'
#' @format Un data frame con 14.308 filas y 4 columnas.
#' \describe{
#'   \item{fecha}{Fecha de la observación}
#'   \item{ccaa}{Nombre de la comunidad autónoma}
#'   \item{casos_acum}{Casos acumulados totales desde el inicio de la pandemia}
#'   \item{incidencia_14d}{Incidencia acumulada a 14 días por 100.000 habitantes}
#' }
#' @source Ministerio de Sanidad y EL PAÍS
#'
#' @examples
#' data(covid_ccaa)
"covid_ccaa"



#' Gasto por habitante y renta del municipio en municipios de más de 20.000 habitantes
#'
#' (Documentación generada por Claude)
#' Dataset que relaciona el gasto público municipal por habitante con el nivel de renta
#' en municipios grandes, permitiendo analizar la relación entre recursos económicos
#' y gasto público local.
#'
#' @format Un data frame con 409 filas y 6 columnas.
#' \describe{
#'   \item{municipio}{Nombre del municipio}
#'   \item{provincia}{Provincia a la que pertenece el municipio}
#'   \item{poblacion}{Número de habitantes}
#'   \item{renta_media}{Renta media por persona en euros}
#'   \item{gasto_habitante}{Gasto público por habitante en euros}
#'   \item{año}{Año de referencia de los datos}
#' }
#' @source Elaboración propia
#'
#' @examples
#' data(gasto_renta_munis)
"gasto_renta_munis"

#' Estadísticas de 9 modelos de coche diferentes
#'
#' (Documentación generada por Claude)
#' Muestra aleatoria de 9 modelos del dataset clásico mtcars, transformada a formato
#' largo y con valores normalizados para facilitar visualizaciones.
#'
#' @format Un data frame con 99 filas y 4 columnas.
#' \describe{
#'   \item{car_model}{Nombre del modelo de coche}
#'   \item{name}{Variable medida (mpg, cyl, disp, etc.)}
#'   \item{value}{Valor original de la medición}
#'   \item{value_norm}{Valor normalizado (dividido por el máximo de cada variable)}
#' }
#' @source Elaboración propia basada en el dataset mtcars de R
#'
#' @examples
#' data(mtcars_to_plot)
"mtcars_to_plot"

#' Resultados del BNG y el PSOE en formato wide
#'
#' (Documentación generada por Claude)
#' Evolución histórica de los resultados electorales de BNG y PSOE en Galicia,
#' presentada en formato ancho (una columna por partido).
#'
#' @format Un data frame con 12 filas y 2 columnas.
#' \describe{
#'   \item{BNG}{Porcentaje de votos obtenido por el BNG}
#'   \item{PSOE}{Porcentaje de votos obtenido por el PSOE}
#' }
#' @source Xunta de Galicia
#'
#' @examples
#' data(galicia_psoe_bng_wide)
"galicia_psoe_bng_wide"


#' Resultados del BNG y el PSOE en formato long
#'
#' (Documentación generada por Claude)
#' Los mismos datos que galicia_psoe_bng_wide pero en formato largo,
#' facilitando su uso con ggplot2 y otras herramientas de visualización.
#'
#' @format Un data frame con 24 filas y 2 columnas.
#' \describe{
#'   \item{partido}{Partido político (BNG o PSOE)}
#'   \item{perc_votos}{Porcentaje de votos obtenido}
#' }
#' @source Xunta de Galicia
#'
#' @examples
#' data(galicia_psoe_bng_long)
"galicia_psoe_bng_long"


#' Datos horarios de contaminación en la ciudad de Madrid
#'
#' (Documentación generada por Claude)
#' Mediciones horarias de diferentes contaminantes atmosféricos en las estaciones
#' de medición de la ciudad de Madrid.
#'
#' @format Un data frame con 4.005 filas y 56 columnas.
#' \describe{
#'   \item{FECHA}{Fecha y hora de la medición}
#'   \item{ESTACION}{Código de la estación de medición}
#'   \item{MAGNITUD}{Tipo de contaminante medido}
#'   \item{H01-H24}{Mediciones horarias (una columna por hora del día)}
#'   \item{V01-V24}{Códigos de validación de las mediciones}
#' }
#' @source Ayuntamiento de Madrid
#'
#' @examples
#' data(contaminacion_madrid)
"contaminacion_madrid"


#' Datos con intervenciones de bomberos en la ciudad de Madrid
#'
#' (Documentación generada por Claude)
#' Registro detallado de las intervenciones del cuerpo de bomberos de Madrid,
#' clasificadas por tipo, distrito y fecha.
#'
#' @format Un data frame con 1.848 filas y 6 columnas.
#' \describe{
#'   \item{date}{Fecha de la intervención (YYYY-MM)}
#'   \item{ano}{Año de la intervención}
#'   \item{mes}{Mes de la intervención}
#'   \item{distrito}{Distrito de Madrid donde se realizó la intervención}
#'   \item{tipo_salida}{Categoría de la intervención (fuegos, salvamentos, etc.)}
#'   \item{salidas}{Número de intervenciones realizadas}
#' }
#' @source Ayuntamiento de Madrid
#'
#' @examples
#' data(data_bomberos_long)
"data_bomberos_long"

#' Datos con intervenciones de bomberos en la ciudad de Madrid (total)
#'
#' (Documentación generada por Claude)
#' Resumen anual de intervenciones de bomberos agregadas por tipo de salida.
#'
#' @format Un data frame con 7 filas y 3 columnas.
#' \describe{
#'   \item{ano}{Año de las intervenciones}
#'   \item{tipo_salida}{Categoría de la intervención}
#'   \item{salidas}{Número total de intervenciones}
#' }
#' @source Ayuntamiento de Madrid
#'
#' @examples
#' data(data_bomberos_all)
"data_bomberos_all"


#' Datos con intervenciones de bomberos en la ciudad de Madrid (mensuales)
#'
#' (Documentación generada por Claude)
#' Serie temporal mensual de intervenciones de bomberos por tipo de salida.
#'
#' @format Un data frame con 83 filas y 3 columnas.
#' \describe{
#'   \item{date}{Fecha (YYYY-MM)}
#'   \item{tipo_salida}{Categoría de la intervención}
#'   \item{salidas}{Número de intervenciones en el mes}
#' }
#' @source Ayuntamiento de Madrid
#'
#' @examples
#' data(data_bomberos_monthly)
"data_bomberos_monthly"

#' Resultados totales en las elecciones de Galicia de 2024
#'
#' (Documentación generada por Claude)
#' Resultados globales de las elecciones autonómicas gallegas de 2024, mostrando
#' el número total de votos obtenido por cada partido político.
#'
#' @format Un data frame con 6 filas y 3 columnas.
#' \describe{
#'   \item{election}{Año de la elección (2024)}
#'   \item{partido}{Partido político (PP, BNG, PSOE, DO, etc.)}
#'   \item{votos}{Número total de votos obtenidos}
#' }
#' @source Xunta de Galicia
#'
#' @examples
#' data(galicia_total_2024)
"galicia_total_2024"


#' Resultados totales en las elecciones de Galicia en todas las legislaturas
#'
#' (Documentación generada por Claude)
#' Serie histórica completa de resultados electorales en todas las elecciones
#' autonómicas gallegas, permitiendo analizar la evolución del voto desde
#' el inicio de la autonomía hasta 2024.
#'
#' @format Un data frame con 52 filas y 3 columnas.
#' \describe{
#'   \item{election}{Año de la elección}
#'   \item{partido}{Partido político}
#'   \item{votos}{Número de votos obtenidos}
#' }
#' @source Wikipedia
#'
#' @examples
#' data(galicia_evol)
"galicia_evol"


#' Resultados de cada partido en cada tipo de municipio
#'
#' (Documentación generada por Claude)
#' Análisis de los resultados de las elecciones gallegas de 2024 segmentados por
#' tamaño del municipio, permitiendo comparar el comportamiento electoral según
#' el tamaño de la población.
#'
#' @format Un data frame con 19 filas y 8 columnas.
#' \describe{
#'   \item{tipo_mun}{Categoría de tamaño del municipio (0-5.000, 5.000-25.000, etc.)}
#'   \item{censo}{Número total de electores en esa categoría}
#'   \item{blancos}{Votos en blanco}
#'   \item{nulos}{Votos nulos}
#'   \item{candidaturas}{Votos válidos a candidaturas}
#'   \item{partido}{Partido político}
#'   \item{votos}{Número de votos obtenidos}
#'   \item{perc_votos}{Porcentaje de votos sobre votos válidos}
#' }
#' @source Wikipedia
#'
#' @examples
#' data(galicia_24_tam_censo)
"galicia_24_tam_censo"

#' Resultados de cada partido en cada municipio en Galicia
#'
#' (Documentación generada por Claude)
#' Resultados detallados de las elecciones gallegas de 2024 a nivel municipal,
#' incluyendo datos de participación y resultados por partido.
#'
#' @format Un data frame con 3212 filas y 11 columnas.
#' \describe{
#'   \item{codigo_mun}{Código INE del municipio}
#'   \item{municipio}{Nombre del municipio}
#'   \item{provincia}{Provincia}
#'   \item{censo}{Número de personas con derecho a voto}
#'   \item{blancos}{Votos en blanco}
#'   \item{nulos}{Votos nulos}
#'   \item{candidaturas}{Votos válidos a candidaturas}
#'   \item{partido}{Partido político}
#'   \item{votos}{Número de votos obtenidos}
#'   \item{porcentaje}{Porcentaje de votos sobre votos válidos}
#'   \item{participacion}{Porcentaje de participación}
#' }
#' @source Wikipedia
#'
#' @examples
#' data(galicia_24_munis)
"galicia_24_munis"


#' Datos de edad media por nombre en España
#'
#' (Documentación generada por Claude)
#' Dataset que contiene información sobre la edad media de las personas según
#' su nombre de pila y género en España, permitiendo analizar tendencias
#' generacionales en la elección de nombres.
#'
#' @format Un data frame con 54.364 filas y 5 columnas.
#' \describe{
#'   \item{nombre}{Nombre de pila}
#'   \item{edad_media}{Edad media de las personas con ese nombre}
#'   \item{frecuencia}{Número de personas con ese nombre}
#'   \item{ano}{Año de referencia de los datos}
#'   \item{genero}{Género (H: Hombre, M: Mujer)}
#' }
#' @source INE
#'
#' @examples
#' data(edades)
"edades"


#' Diccionario municipios del INE
#'
#' (Documentación generada por Claude)
#' Tabla de referencia que contiene los códigos oficiales y nombres de todos
#' los municipios de España según el Instituto Nacional de Estadística.
#'
#' @format Un data frame con 8.121 filas y 7 columnas.
#' \describe{
#'   \item{CODMUN}{Código INE del municipio}
#'   \item{NOMBRE}{Nombre oficial del municipio}
#'   \item{CPRO}{Código de la provincia}
#'   \item{PROVINCIA}{Nombre de la provincia}
#'   \item{CCAA}{Nombre de la comunidad autónoma}
#'   \item{CMUN}{Código municipal dentro de la provincia}
#'   \item{CAPITAL}{Indicador de si es capital de provincia (1) o no (0)}
#' }
#' @source INE
#'
#' @examples
#' data(cod_municipios_ine)
"cod_municipios_ine"

#' Datos de contaminación de Madrid en 2022
#'
#' (Documentación generada por Claude)
#' Mediciones de contaminación atmosférica en las estaciones de Madrid durante 2022.
#'
#' @format Un data frame con mediciones horarias de contaminantes.
#' \describe{
#' }
#' @source Ayuntamiento de Madrid
#'
#' @examples
#' data(contaminacion_madrid_2022)
"contaminacion_madrid_2022"

#' Nivel de ocupación de embalses por cuenca hidrográfica
#'
#' (Documentación generada por Claude)
#' Serie temporal del nivel de ocupación de los embalses españoles por cuenca hidrográfica.
#'
#' @format Un data frame con 3 columnas:
#' \describe{
#'   \item{cuenca}{Nombre de la cuenca hidrográfica}
#'   \item{fecha}{Fecha de la medición}
#'   \item{ocupacion}{Porcentaje de ocupación del embalse}
#' }
#' @source Ministerio para la Transición Ecológica
#'
#' @examples
#' data(embalses)
"embalses"

#' Temperatura superficial mensual global
#'
#' (Documentación generada por Claude)
#' Serie histórica de temperaturas superficiales medias mensuales por país.
#'
#' @format Un data frame con 4 columnas:
#' \describe{
#'   \item{entity}{País o región}
#'   \item{year}{Año de la medición}
#'   \item{day}{Fecha de la medición}
#'   \item{surface}{Temperatura superficial media}
#'   \item{day_standard}{Fecha estandarizada al año 2000}
#' }
#' @source Our World in Data
#'
#' @examples
#' data(temperature)
"temperature"

#' Coeficiente de Gini por país
#'
#' (Documentación generada por Claude)
#' Serie temporal del coeficiente de Gini (medida de desigualdad) por país,
#' incluyendo datos de población y continente.
#'
#' @format Un data frame con 7 columnas:
#' \describe{
#'   \item{country}{Nombre del país}
#'   \item{year}{Año de la medición}
#'   \item{gini}{Coeficiente de Gini}
#'   \item{pop}{Población total}
#'   \item{continent}{Continente}
#'   \item{n}{Número de observaciones por país}
#' }
#' @source Our World in Data
#'
#' @examples
#' data(data_gini)
"data_gini"