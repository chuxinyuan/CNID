data = readxl::read_xls("./身份证籍贯对照表.xls")

code = matrix(data$行政区划代码, ncol = 5, byrow = TRUE)
code = as.data.frame(code)
code$V6 = "sp"
write.csv(code, "code.csv", row.names = F)

name = matrix(data$地区, ncol = 1, byrow = TRUE)
name = as.data.frame(name)
name$V2 = "sp"
write.csv(name, "name.csv", row.names = F)