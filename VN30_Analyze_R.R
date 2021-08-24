# INSTALL AND LOAD PACKAGES ################################
if (!require("pacman")) install.packages("pacman")
pacman::p_load(pacman,tidyverse,readxl,tidyquant, plotly)


# SCRIPT
my_data <- read_excel("Output_Python_Input_R.xlsx")
head(my_data, 10)

my_data %>%
  filter(Primary_Key_Stock == "BID") %>%
  ggplot()+
  geom_bar(mapping = aes(x=Date,y=No.27),stat="identity")

x <- "Reference price"
y <- "Net Transaction Value"
# Add regression line
plot(x, y, main = "Main title",
     xlab = "X axis title", ylab = "Y axis title",
     pch = 19, frame = FALSE)
# abline(lm(y ~ x, data = mtcars), col = "blue")


# CLEAN UP #################################################
rm(list = ls()) 
p_unload(all)
detach("package:datasets", unload = TRUE)
cat("\014")
