lst <- read.csv("list.txt", header=F)
str <- gsub("\\.html", "", lst$V1)
for (s in str) {
    print(paste("(", s, ")[", s, ".html]", sep=""))
}
