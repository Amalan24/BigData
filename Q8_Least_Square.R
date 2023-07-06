x <- c(1.5, 2.5, 3.5, 3.5, 4.5, 5.5, 6)
y <- c(3.5, 4.5, 4.5, 5.5, 6, 8, 9)

model <- lm(y ~ x)
print(model)

new_x <- 9
predicted_y <- predict(model, newdata = data.frame(x = new_x))

predicted_y
