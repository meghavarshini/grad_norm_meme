library("ggplot2")
library("ggimage")

# create a df

#set.seed(2017-02-21)
trainig_step <- 1:10
grad_norm <- c(1.5, 1.2, 1.3, 1.7, 8, 1.8, 1.8, 1.9, 1.7, 2)
d <- data.frame(trainig_step, grad_norm,
                image = c("doomer.png",
                                 "doomer.png",
                                 "doomer.png",
                                 "doomer.png",
                                 "Surprised_Pikachu.png",
                                 "doomer.png",
                                 "doomer.png",
                                 "doomer.png",
                                 "doomer.png",
                                 "doomer.png"))

# plot2
ggplot(d, aes(trainig_step, grad_norm)) + geom_image(aes(image=image), size=.13)+ ylim(1,10)+xlim(0,11)+
  theme(
    axis.text.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks = element_blank(),
    axis.title=element_text(size=24,face="bold")
    )+ xlab("Training Steps") + ylab("Grad Norm")

