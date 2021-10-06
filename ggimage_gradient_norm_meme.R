library("ggplot2")
library("ggimage")

# create a df

#set.seed(2017-02-21)
x <- 1:10
y <- c(1.5, 1.2, 1.3, 1.7, 8, 1.2, 1.5, 1.4, 1.5, 2)
d <- data.frame(x, y,
                image = sample(c("https://www.github.com/gradient-norm-meme/doomer.png",
                                 "https://www.github.com/gradient-norm-meme/Surprised_Pikachu.png"),
                               size=13, replace = TRUE)
)
# plot2
ggplot(d, aes(x, y)) + geom_image(aes(image=image), size=.05)+ ylim(1,10)+xlim(0,11)
