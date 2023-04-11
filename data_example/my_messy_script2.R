# Count penguins for each species / sex

penguins <- read.csv2("/Users/gabrielnakamura/OneDrive/Aulas/Workshop_UofT/data_example/raw_data_penguins.csv", header = TRUE)

data_processed2 <- 
  penguins %>% 
  count(species, sex, .drop = FALSE)


ggplot(penguins, aes(x = sex, fill = species)) +
  geom_bar(alpha = 0.8) +
  scale_fill_manual(values = c("darkorange","purple","cyan4"), 
                    guide = FALSE) +
  theme_minimal() +
  facet_wrap(~species, ncol = 1) +
  coord_flip()


# Scatterplot example 1: penguin flipper length versus body mass
ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color = species, 
                 shape = species),
             size = 2) +
  scale_color_manual(values = c("darkorange","darkorchid","cyan4")) 