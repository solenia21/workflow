library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = cut, y = price, fill = cut)) +
  geom_violin(alpha = 0.85, trim = FALSE, color = "white") +
  scale_fill_viridis_d(option = "C", end = 0.9) +
  labs(
    title = "How diamond prices vary by cut",
    subtitle = "Each violin shows the distribution of prices within a cut category",
    x = "Cut quality",
    y = "Price (USD)",
    fill = "Cut"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold", size = 20),
    legend.position = "none",
    panel.grid.minor = element_blank()
  )

ggsave("diamonds-2.png", plot = diamonds_plot, width = 10, height = 7, dpi = 300, bg = "white")
