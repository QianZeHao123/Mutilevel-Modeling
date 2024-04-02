ggplot(data.frame(Residuals = resid(Model.5)),
       aes(sample = Residuals)) +
  # Creates the Q-Q plot
  stat_qq() +
  # Adds the theoretical Q-Q line
  stat_qq_line(color = "red") +
  labs(title = "Q-Q Plot of Residuals for Model.5",
       x = "Theoretical Quantiles", y = "Sample Quantiles") +
  theme_minimal()