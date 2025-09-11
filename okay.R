
# 加载haven包
library(haven)

data <- read_dta("C:/Users/Lenovo/Desktop/大二下/计量经济学/大作业/2010finalll.dta")

#只保留大于十岁的样本
data_filtered <- data[data$age > 10, ]

# 保留math等于1的样本
df_math <- data_filtered[data_filtered$Math == 1, ]

