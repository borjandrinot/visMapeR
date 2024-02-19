
library(tidyverse)
library(usethis)
library(googlesheets4)

galicia_20_munis <-
  read_csv("data-raw/elecciones_gallegas/historic_elecciones_galicia.csv") |>
  filter(election == 2020)

usethis::use_data(galicia_20_munis, overwrite = T)


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
  mtcars %>%
  rownames_to_column(var = "car_model") %>%
  slice_sample(n = 9) %>%
  pivot_longer(cols = -car_model) %>%
  group_by(name) %>%
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


