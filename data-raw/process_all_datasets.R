
library(tidyverse)
library(usethis)
library(googlesheets4)
library(janitor)
library(readxl)

galicia_20_munis <-
  read_csv("data-raw/elecciones_gallegas/historic_elecciones_galicia.csv") |>
  filter(election == 2020)

usethis::use_data(galicia_20_munis, overwrite = T)

galicia_24_munis <-
  read_csv("data-raw/elecciones_gallegas/datos_munis_2024.csv") |>
  select(-perc_escrutado, -codigo_candidatura, -orden)

usethis::use_data(galicia_24_munis, overwrite = T)


galicia_24_tam_censo_all <-
  galicia_24_munis |>
  distinct(codigo_mun, .keep_all = T) |>
  mutate(tipo_mun = cut(censo,
                        breaks = c(0, 5000, 25000, 50000, Inf),
                        labels = c("0-5.000", "5.000-25.000",
                                   "25.000-50.000", ">50.000"))) |>
  group_by(tipo_mun) |>
  summarise(across(c(censo, blancos, nulos, candidaturas),
                   \(x) sum(x, na.rm = T)),
            .groups = "drop")


galicia_24_tam_censo_partidos <-
  galicia_24_munis |>
  mutate(partido = fct_other(partido,
                             keep = c("PP", "BNG", "PSOE", "DO"),
                             other_level = "Otros"),
         tipo_mun = cut(censo,
                        breaks = c(0, 5000, 25000, 50000, Inf),
                        labels = c("0-5.000", "5.000-25.000",
                                   "25.000-50.000", ">50.000"))) |>
  group_by(tipo_mun, partido) |>
  summarise(votos = sum(votos, na.rm = T),
            .groups = "drop")

galicia_24_tam_censo <-
  galicia_24_tam_censo_all |>
  left_join(galicia_24_tam_censo_partidos) |>
  mutate(perc_votos = round(100 * votos / (candidaturas + blancos), 2))

usethis::use_data(galicia_24_tam_censo, overwrite = T)

galicia_evol <-
  read_csv("data-raw/elecciones_gallegas/evol_historica.csv")

usethis::use_data(galicia_evol, overwrite = T)

galicia_total_2024 <-
  galicia_evol |>
  filter(election == 2024)

usethis::use_data(galicia_total_2024, overwrite = T)

galicia_20_pp_menos_20k <-
  read_csv("data-raw/elecciones_gallegas/historic_elecciones_galicia.csv") |>
  filter(election == 2020,
         partido == "PP",
         censo < 20000)

usethis::use_data(galicia_20_pp_menos_20k, overwrite = T)

diputados_congreso <- read_csv2("data-raw/congreso_diputados/DiputadosActivos__20240211050026.csv") |>
  mutate(GRUPOPARLAMENTARIO = str_replace_all(GRUPOPARLAMENTARIO, "Grupo Parlamentario", "G. P."),
         GRUPOPARLAMENTARIO = fct_recode(GRUPOPARLAMENTARIO,
                                         `G. P. Popular` = "G. P. Popular en el Congreso",
                                         `G. P. Socialista` = "G. P. Socialista",
                                         `G. P. VOX` = "G. P. VOX",
                                         `G. P. Vasco` = "G. P. Vasco (EAJ-PNV)",
                                         `G. P. EH Bildu` = "G. P. Euskal Herria Bildu",
                                         `G. P. SUMAR` = "G. P. Plurinacional SUMAR",
                                         `G. P. Republicano` = "G. P. Republicano",
                                         `G. P. Mixto` = "G. P. Mixto",
                                         `G. P. Junts` = "G. P. Junts per Catalunya"))

usethis::use_data(diputados_congreso, overwrite = T)

renta_munis_madrid <-
  read_csv("data-raw/stats/renta_munis_madrid.csv")

usethis::use_data(renta_munis_madrid, overwrite = T)

renta_munis <-
  read_csv("data-raw/stats/renta_munis.csv")

usethis::use_data(renta_munis, overwrite = T)


historic_totales_galicia <-
  read_csv("data-raw/elecciones_gallegas/historic_totales_galicia.csv")

usethis::use_data(historic_totales_galicia, overwrite = T)


covid_madrid <-
  read_csv("data-raw/covid/covid_madrid.csv")

usethis::use_data(covid_madrid, overwrite = T)

covid_ccaa <-
  read_csv("data-raw/covid/covid_ccaa.csv")

usethis::use_data(covid_ccaa, overwrite = T)


gasto_renta_munis <-
  read_csv("data-raw/stats/gasto_renta_munis.csv")

usethis::use_data(gasto_renta_munis, overwrite = T)

mtcars_to_plot <-
  mtcars |>
  rownames_to_column(var = "car_model") |>
  slice_sample(n = 9) |>
  pivot_longer(cols = -car_model) |>
  group_by(name) |>
  mutate(value_norm = value / max(value))

usethis::use_data(mtcars_to_plot, overwrite = T)

galicia_psoe_bng_wide <-
  read_sheet("16olNluEckv-nVM-p8sIITZkLJ6qhkT3NCp-KtN0iYvw",
             sheet = "izquierdas")

usethis::use_data(galicia_psoe_bng_wide, overwrite = T)

galicia_psoe_bng_long <-
  read_sheet("16olNluEckv-nVM-p8sIITZkLJ6qhkT3NCp-KtN0iYvw",
             sheet = "izquierdas") |>
  pivot_longer(BNG:PSOE,
               names_to = "partido",
               values_to = "perc_votos")

usethis::use_data(galicia_psoe_bng_long, overwrite = T)

contaminacion_madrid <-
  read_csv2("data-raw/ene_mo24.csv")

usethis::use_data(contaminacion_madrid, overwrite = T)


data_bomberos_long <-
  read_csv2("https://datos.madrid.es/egobfiles/MANUAL/300177/ActuacionesBomberos_2023.csv") |>
  clean_names() |>
  mutate(mes = fct_relevel(mes,
                           "enero", "febrero", "marzo",
                           "abril", "mayo", "junio", "julio",
                           "agosto", "septiembre", "octubre",
                           "noviembre", "diciembre"),
         date = ym(str_glue("{ano}-{as.numeric(mes)}"))) |>
  select(date, ano, mes, distrito, fuegos:servicios_varios) |>
  pivot_longer(fuegos:servicios_varios,
               names_to = "tipo_salida",
               values_to = "salidas")

usethis::use_data(data_bomberos_long, overwrite = T)

data_bomberos_all <-
  data_bomberos_long |>
  group_by(ano, tipo_salida) |>
  summarise(salidas = sum(salidas, na.rm = T),
            .groups = "drop")

usethis::use_data(data_bomberos_all, overwrite = T)

data_bomberos_monthly <-
  data_bomberos_long |>
  group_by(date, tipo_salida) |>
  summarise(salidas = sum(salidas, na.rm = T),
            .groups = "drop")

usethis::use_data(data_bomberos_monthly, overwrite = T)

edades_h <-
  read_excel("data-raw/nombres/nombres_por_edad_media.xls",
             sheet = "Hombres",
             skip = 6) |>
  clean_names() |>
  mutate(genero = "H")


edades_m <-
  read_excel("data-raw/nombres/nombres_por_edad_media.xls",
             sheet = "Mujeres",
             skip = 6) |>
  clean_names() |>
  mutate(genero = "M")


edades <- bind_rows(edades_h, edades_m)
usethis::use_data(edades, overwrite = T)

provs_ine <-
  read_csv("data-raw/provincias_ine.csv")

cod_municipios_ine <-
  read_excel("data-raw/cod_municipios_ine.xlsx", skip = 1) |>
  left_join(provs_ine)

usethis::use_data(cod_municipios_ine, overwrite = T)

contaminacion_madrid_2022 <-
  read_csv2("data-raw/contaminacion_datos22.csv")

usethis::use_data(contaminacion_madrid_2022, overwrite = T)

embalses <- read_csv("data-raw/data_embalses.csv") |>
  select(cuenca = ambito_nombre, fecha, ocupacion = this_year)

usethis::use_data(embalses, overwrite = T)


