# Pearson's Product Moment Correlation Coefficient T-Test

# Creating our data or variables ; interval or ratio

x <- c(44.4, 45.9, 41.9, 53.3, 44.7, 44.1, 50.7, 45.2, 60.1)

y <- c(2.6, 3.1, 2.5, 5.0, 3.6, 4.0, 5.2, 2.8, 3.8)

# Testing for normality

# ?shapiro.test to ask for help about the function

shapiro.test(x)
shapiro.test(y)
# P-value is the null hypothesis, saka lang alternative hypothesis if lesser than 0.5
# since normal ang data then proceed to correation test

cor.test(x, y)

?cor.test

# SPEARMAN RANK CORRELATION TEST

# If ordinal ang data, no need to test for normality
# Continuous - not normal

# Test
cor.test(x, y, method = "spearman")
# since p-value is higher than 0.05 then we accept the null hypothesis

#  KENDALL’S TAU CORRELATION COEFFICIENT TEST

# Same lang with spearman and you can use either as alternative

# Test

cor.test(x, y, method = "kendall")

# Right method dapat ang gamitin to get the correst results, since normal na ang test and we used these 3 mas lumiliit nang lumiliit
# Look at the literature kung ano ang mas common na ginagamit nila

# Z TEST OF THE DIFFERENCE BETWEEN INDEPENDENT CORRELATIONS
# xy and yz may common variable and like one variable will retain sa isang correlation
