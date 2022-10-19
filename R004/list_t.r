x <- list("James", "Bob", c(2, 4, 8), 42)
print(x[[3]])

y <- list("name" = "AkaruiYami", "age" = 22)
print(y$name)
y[["name"]] <- "AkaruiYami Code"
print(y$name)

merge_list <- c(x, y)
print(merge_list)

w <- list(1, 2, 3)
w <- unlist(w)
print(sum(w))