rmr1<-read.table("secher.txt",header=T)
model1<-lm(bwt~bpd, data=rmr)
sum.model1<-summary(model1)
R21<-sum.model1$r.squared
f1<-sum.model1$fstatistic
p.value1<-pf(f[1],f[2],f[3],lower.tail=F)
output1<-sprintf("R2 = %f and p-value=%f", R21, p.value1)
cat(output1)
intercept1<-model1$coefficients[1]
slope1<-model1$coefficients[2]
output1<-sprintf("slope=%f  intercept=%f",slope1, intercept1)
cat(output1)
png("graph1.png")
plot(bwt~bpd, data=rmr1)
abline(model1)
dev.off()

rmr<-read.table("secher.txt",header=T)
model<-lm(bwt~ad, data=rmr)
sum.model<-summary(model)
R2<-sum.model$r.squared
f<-sum.model$fstatistic
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
output<-sprintf("R2 = %f and p-value=%f", R2, p.value)
cat(output)
intercept<-model$coefficients[1]
slope<-model$coefficients[2]
output<-sprintf("slope=%f  intercept=%f",slope, intercept)
cat(output)
png("graph2.png")
plot(bwt~ad, data=rmr)
abline(model)
dev.off()

