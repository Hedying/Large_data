
# 加载haven包
library(haven)

data <- read_dta("C:/Users/Lenovo/Desktop/大二下/计量经济学/大作业/2010finalll.dta")

#只保留大于十岁的样本
data_filtered <- data[data$age > 10, ]

# 保留math等于1的样本
df_math <- data_filtered[data_filtered$Math == 1, ]


library(AER)
data(STAR) 
library(ggplot2) 
p1<-ggplot(STAR, aes(readk)) + 
  geom_histogram(bins=30,colour="black",fill="blue")
p2<-ggplot(STAR, aes(x=gender,y=readk)) + 
  geom_boxplot() +
  theme_minimal() +
  theme(legend.position = "none") +
  xlab("Reading Score") +
  ylab("Count")
library(gridExtra) 
grid.arrange(p1,p2,ncol = 2, nrow = 1)


efuhfuief
