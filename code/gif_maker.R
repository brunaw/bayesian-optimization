#--------------------------------------------
library(magick)
library(animation)
library(tidyverse)

list.files(path = "presentation/img", 
           pattern = "[0-9].png", full.names = TRUE) %>%  
  map(image_read) %>% # reads each path file
  image_join() %>% # joins image
  image_animate(fps = 1) %>% # animates, can opt for number of loops
  image_write("presentation/img/utility.gif")
#--------------------------------------------