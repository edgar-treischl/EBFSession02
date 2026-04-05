library(plotly)
library(ggplot2)
library(tidyverse)
library(HistData)

df <- Galton


p<- ggplot(df, aes(x=parent, y=child)) +
  geom_point() +
  #geom_smooth(method = "lm", formula = y ~ x)+
  theme_minimal()

fig <- ggplotly(p) %>%
  layout(legend = list(orientation = 'h'))%>% 
  layout(legend = list(x = 0.45, y = -0.05))

fig

lm(child ~ parent, data = Galton)