Vbar <- 0.05
T <- 280
a <- 4.192
B <- 0.02665
R <- 0.083145
P <- (R*T)/(Vbar-B) - a/(Vbar*(Vbar+B)+B*(Vbar-B))
cat(P)