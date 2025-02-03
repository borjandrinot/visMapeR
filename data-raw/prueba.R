

library(tidyverse)

embalses_raw <- read_csv("data-raw/data_embalses.csv")


embalses_raw |>
  ggplot(aes(x = fecha, y = this_year, group = ambito_nombre, color = this_year)) +
  geom_line() +
  coord_polar() +
  facet_wrap(~ambito_nombre)


read_csv("data-raw/elecciones_europeas/europeas_24_munis.csv") |>
  filter(partido == "PP",
         censo < 20000) |>
  ggplot(aes(x = censo, y = votos_pc)) +
  geom_point()
