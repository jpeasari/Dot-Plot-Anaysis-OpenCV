#######################
library(ggplot2)
setwd("C:/Users/johnp/Downloads/Image_analysis/Violin_plots")
counts <- read.csv("all_genotypes_counts.csv")
counts
counts$sample<-as.factor(counts$sample)

##############
p <- ggplot(counts, aes(x=sample, y=stretch,ymax=48)) +
  geom_violin()
p
###############3
ggplot(counts, aes(x=sample, y=stretch,ymax=48)) +
  geom_violin(trim=FALSE, fill="gray")+
  labs(title="Plot of stretch length by sample",x="Sample", y = "Stretch length")+
  geom_boxplot(width=0.1)+
  theme_classic()
##########
p <- ggplot(counts, aes(x=sample, y=stretch, fill=sample)) +
  geom_violin(trim=FALSE)+
  geom_boxplot(width=0.1, fill="white")+
  labs(title="Plot of stretch length by sample",x="Sample", y = "Stretch length")
p + theme_classic()
#################
p + geom_dotplot(binaxis='y', stackdir='center', dotsize=.1)
# violin plot with jittered points
# 0.2 : degree of jitter in x direction
p + geom_jitter(shape=16, position=position_jitter(0.2))
###################
p + stat_summary(fun.data=mean_sdl, mult=1,
                 geom="pointrange", color="red")
########################
# violin plot with dot plot
p + geom_dotplot(binaxis='y', stackdir='center', dotsize=.05)

####################################

p <- ggplot(counts, aes(x=sample, y=stretch, fill=sample)) +
  geom_violin(trim=FALSE)+
  geom_boxplot(width=0.1, fill="white")+
  labs(title="Plot of stretch length by sample",x="Sample", y = "Stretch length")
p + theme_classic()
ggplot(counts, aes(x=sample, y=stretch,ymax=48)) +
  geom_violin(trim=FALSE, fill="gray")+
  labs(title="Plot of stretch length by sample",x="Sample", y = "Stretch length")+
  geom_boxplot(width=0.1,scale = "width")+
  theme_classic()

