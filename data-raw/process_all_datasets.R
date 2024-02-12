
library(tidyverse)
library(usethis)
library()

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
