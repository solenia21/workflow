library(tidyverse)

print(sum(1:10))

diamonds_plot <- ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point(alpha = 0.3, size = 1) +
  scale_color_viridis_d(option = "C", end = 0.9) +
  scale_y_continuous(labels = scales::label_dollar()) +
  labs(
    title = "The price of a diamond",
    subtitle = "Diamond prices rise with carat; color shows cut quality",
    x = "Carat weight",
    y = "Price (USD)",
    color = "Cut"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold", size = 20),
    legend.position = "bottom",
    panel.grid.minor = element_blank()
  )

ggsave("diamonds-1.png", plot = diamonds_plot, width = 10, height = 7, dpi = 300, bg = "white")
