### HOW TO SAVE A GGPLOT GRAPH###

ggplot(data = top5_malaria_averaged, aes(x = state, y = prevalence)) + 
  geom_bar(stat = "identity", fill = "#f68060",
           alpha = 0.6, width = 0.4) +
  #coord_flip() +
  labs(x = "States", y = "Malaria prevalence (per thousand people)") +
  theme_bw()

ggplot(data = top5_malaria_averaged, aes(x = state, y = prevalence)) + 
  geom_bar(stat = "identity", fill = "#f68060",
           alpha = 0.6, width = 0.4) +
  coord_flip() +
  labs(x = "States", y = "Malaria prevalence (per thousand people)") +
  theme_bw()

# Save the plot as a PNG file or any other format that you would like
# saving the last plot
?ggsave
ggsave("top5_malaria_averaged.png", scale = 1, units = "in",
       width = 8, height = 6, dpi = 300)
ggsave("top5_malaria_averaged.pdf", scale = 1, units = "in",
       width = 8, height = 6, dpi = 300)

# saving a specific plot
ggsave("top5_malaria_averaged_p0.png", plot = p0, scale = 1, units = "in",
       width = 8, height = 6, dpi = 300)
ggsave("top5_malaria_averaged_p1.png", plot = p1, scale = 1, units = "in",
       width = 8, height = 6, dpi = 300)
