remotes::install_github("allisonhorst/palmerpenguins")


library(palmerpenguins)
library(dplyr)
library(ggplot2)
theme_set(theme_minimal())


data_processed <- 
penguins %>%
  dplyr::select(where(is.factor)) %>% 
  glimpse()
write.csv2(x = data_processed, file = "/Users/gabrielnakamura/OneDrive/Aulas/Workshop_UofT/data_example/data_processed1.csv")


plot_1 <- 
ggplot(penguins, aes(x = island, fill = species)) +
  geom_bar(alpha = 0.8) +
  scale_fill_manual(values = c("darkorange","purple","cyan4"), 
                    guide = FALSE) +
  theme_minimal() +
  facet_wrap(~species, ncol = 1) +
  coord_flip()
ggplot2::ggsave(filename = "/Users/gabrielnakamura/OneDrive/Aulas/Workshop_UofT/data_example/plot_1", plot = plot_1, device = "png", dpi = "screen")

