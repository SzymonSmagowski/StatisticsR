# 1.1
x1 <- c(1,3,4)
x2 <- seq(1, 100) # alternatively 1:100
x3 <- seq(1, 99, by=2)
x1
x2
x3
100:1
100:-5

# 1.2
c(5,5,6)
1:50
seq(50,-5) # alternatively 50:-5
d <- c(1L,5L,6L)
d
typeof(d)
c(T,T,F)
typeof(c(T,T,F))
c(rep(T,49),F)

c("quick", "introduction", "to", "R")

list(c(T,T,F), list(c(1,4,5), c("ab", "cdef")), 4.6)

# 1.3
a <- c("this", "is", "CS", "lab")
paste(a, collapse=" ")
paste(a, collapse=".")
b <- c("and", "we", "start", "today")
paste(a, b, sep=" ")
paste(a, b, sep="|")
paste(a, b, sep=" ", collapse=" ")
paste(a, b, sep="|", collapse=" ")
paste(c(paste(a, collapse=" "), paste(b, collapse=" ")), collapse=" ")
paste(c(paste(a, collapse=" "), paste(b[-1], collapse=" ")), collapse=", ")

# 1.4
x <- c(1, 2, -3.4, 0, 8.1, 1.9, 12, 0, -1)
length(x)
sort(x)
sort(x, decreasing=T)
order(x)
x[order(x)]
sum(x)
min(x)
max(x)
?range
range(x)
cumsum(x)
cumprod(x)
cummin(x)
cummax(x)
cumsum(x)/c(1:length(x))
cumsum(x)/seq_along(x)
which(x<0) # returns indices
x[x<0]
?letters
names(x) <- letters[1:length(x)]
x
paste(which(x<0), x[x<0], sep=": ") # indices of negative elements together with the corresponding values
x[x==0] <- NA
x
sum(x)
sum(x, na.rm=T)

# 1.5
m <- matrix(c(1, 2, 3, 0, 1, 4, 5, 6, 0), ncol=3)
dim(m)
nrow(m)
ncol(m)
t(m)
m^2
m
m %*% m
sum(m)
rownames(m) <- c("row1", "row2", "row3")
colnames(m) <- c("col1", "col2", "col3")
m
m[2, 3]
m[2, 3, drop=F]
m[2, , drop=F]
m[, 1, drop=F]
m[2:3, 1, drop=F]
m[2:3]
m[2:3] <- c(12, 13)
m
sum(m[1,])
rowSums(m)
colSums(m)
rowMeans(m)
colMeans(m)
apply(m, 1, range)
m
apply(m, 2, range)
mm <- t(apply(m, 1, range))
colnames(mm) <- c("min", "max")
mm

# 1.6
tit <- Titanic
dim(tit)
class(tit)
tit[,,2,, drop=F]
tit[,1,,,drop=F]
tit[,1,2,,drop=F]
