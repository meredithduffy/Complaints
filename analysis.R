complaints <- readRDS("complaints.rds")

### states with highest number of complaints

complaints %>% count(state)

state <- complaints %>% 
  count(state) %>% arrange(desc(n))

glimpse(state)
View(state)

