library("tidyverse")
library("readxl")
data<-('gab.xlsx')
head(gab)
library("ggplot2")
library("readxl")
library("dplyr")
ggplot(data=gab,aes(x=PN,y=EBB))+
  geom_point(color="blue",size=2)+
  labs(title="tabel 1. Pengaruh Ekspor Batu Bara Terhadap Pendapatan Negara di Indonesia",
       x="Pendapatan Negara",
       y="Ekspor Batu Bara",
       caption = "sumber : Badan Pusat Statistik")+
  theme_classic()
reg1<-lm(PN~EBB,data=gab)
summary(reg1)
