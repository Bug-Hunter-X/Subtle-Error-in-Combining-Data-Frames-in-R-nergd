```r
# Improved code with error handling
list_of_dfs <- list()
for (i in 1:3) {
  df <- data.frame(a = i, b = i^2)
  list_of_dfs[[i]] <- df
}
#Check if all dataframes in the list are non-empty
if (all(sapply(list_of_dfs, nrow) > 0)){
  combined_df <- do.call(rbind, list_of_dfs)
  print(combined_df)
} else {
  print("Error: One or more data frames are empty. Cannot combine.")
}
```