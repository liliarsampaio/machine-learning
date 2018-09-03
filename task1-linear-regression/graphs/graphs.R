library(readr)
library(ggplot2)

working_dir <- '/home/liliars/workspace/linear_regression_live'
setwd(working_dir)

theme_labels <- function() {
  theme_update(
    plot.title = element_text(size=22, color = 'black'),
    axis.text.y =element_text(size=20, color = 'black'),
    axis.text.x =element_text(size=20, color = 'black'),
    axis.title = element_text(size=22, color = 'black'),
    legend.title = element_text(size = 20, color = 'black'),
    legend.text = element_text(size = 20, color = 'black')
  )
}

theme_set(theme_bw())
theme_labels()

rss_data <- read.csv("rss_1000.csv")
rss_data <- data.frame(rss_data)

rss_plot <- ggplot(data = rss_data, mapping = aes(rss_data$iteration, rss_data$rss)) + 
  labs(x="Number of iterations",y="RSS error") + 
  geom_point(colour = "orange") 
rss_plot
