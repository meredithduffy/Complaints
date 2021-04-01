complaints <- readRDS("complaints.rds")



### states and complaints
complaints %>% count(state)

state <- complaints %>% 
  count(state) %>% arrange(desc(states)) %>% 

glimpse(state)
View(state)



### companies and complaints
complaints %>% count(company)

company <- complaints %>% 
  count(company) %>% arrange(desc(n)) 

glimpse(company)
View(company)



### companies that gave monetary relief
complaints %>% 
  filter(company_response_to_consumer == "Closed with monetary relief") %>% 
  select(company) %>% 
  head(10)

