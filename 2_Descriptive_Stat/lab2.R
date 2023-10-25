# 1.7 a)
df_1 <- data.frame(c(1,5,15), c(2,6,36))
df_1
typeof(df_1)
class(df_1)
# b)
df_2 <- data.frame(name=c("Kowalski","Nowak"), age=c(21,23), student=c(TRUE,FALSE))
rownames(df_2) <- c("std1","std2")
lapply(df_2, typeof)
sapply(df_2, typeof)


sapply(seq(2, 4, 0.1), function (x) { exp(x)*cos(x) })

sum(2:10)

sum(seq(2, 100, 2))

log(prod(1:50))

outer(1:10, 1:20)

lapply(df_2, typeof)

sum(outer(1:3, 1:4, "^"))

sqrt(sum(outer(1:10, 1:20, "^")))


#1.9

minmax <- function(x,n){
  if (n > length(x)){
    return("argument too long")
  }
  
  smallest <- sort(x)[1:n]
  largest <- sort(x, decreasing = TRUE)[1:n]
  return(list(smallest = smallest, largest=largest))
}
x <- c(5,4,3,2,1,8,9,0)
n <- 3

print(minmax(x,100))

# 1.10

l <- list(x=c(1, 3, 9, 15), y=c(5, 3, 19))
sapply(l, sum)
lapply(l, sum)

sapply(l, mean)
sapply(l, sd)


# 1.11
f <- function(x){
  x^3-x^2+x-1
}
xs <- seq(-2, 3, length.out=1000)
ys <- f(xs)
plot(xs, ys)

plot(x^3 - x^2 + x - 1 ~ x, data=list(x=xs))


# 1.12

data <- cars
data$changedspeed <- data$speed*1.61;
data$changeddist <- data$dist*0.3;
plot(data$changedspeed, data$changeddist, xlab='speed', ylab = 'dist')
plot(changedspeed ~ changeddist, data=data)


# 2.1
#a categorical -ordinal data set
#b
wl <- c("m","l", "l", "h", "h", "l","h","m", 'h', "l")
wl
fl <- factor(wl, level= c("l", "m", "h"), labels=c("low","medium", "high"),ordered = TRUE)
fl
t1 <- table(fl)

p1 <- proportions(table(fl))

c1 <- cumsum(table(fl))

cp1 <- cumsum(p1)
cp1
cbind(t1,sone_name=p1,c1,cp1)
barplot(t1)
pie(t1)


# Ex 2.2

cylinders <- mtcars$cyl
counts <- table(cylinders)
p1 <- proportions(table(cylinders))
c1 <- cumsum(table(cylinders))
cp1 <- cumsum(p1)

df_2_2 <- cbind(abs_freq=counts, cum_abs_freq=c1,
                rel_freq=p1, cum_rel_freq=cp1)


#2.3
install.packages("coin")

library(coin)
?malformations

#a
tabela <-table(malformations)

#b
tabela2 <- proportions(tabela, margin=1)

#c
#with margin = 1, proportion of present cases rises on a given level
leevel <- tabela2['1-2', 'Present']

#d
malform <- malformations
malform$consumption_high <- ifelse(malform$consumption < '3-5', "No", "Yes")

#f
tabela4 <- proportions(table(malform[,c("malformation", "consumption_high")]), margin =2)
factorrisk <- tabela4['Present', 'Yes']/tabela4['Present','No']
factorrisk
#high consumption gives us 4.316883 times bigger probability of having a malfunctioning child



# 2.4
HairEyeColor
proportions(HairEyeColor)
sum(proportions(HairEyeColor))

?HairEyeColor
proportions(HairEyeColor, margin=1)
proportions(HairEyeColor, margin=2)
proportions(HairEyeColor, margin=3)

#b 
prop <- proportions(HairEyeColor[, "Blue", "Female"])
barplot(prop)
prop
