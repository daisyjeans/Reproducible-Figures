## a function for cleaning the raw penguin data 

cleaning_penguins <- function(penguins_raw){
  penguins_raw %>%
    clean_names() %>%
    remove_empty(c("rows", "cols")) %>%
    select(-starts_with("delta")) %>%
    select(-"comments")
}