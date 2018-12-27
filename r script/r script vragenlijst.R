answers <- read.csv("C:/Users/dylan/Downloads/oefeningenOZT2018/answers.csv",sep=",")
View(answers)

#persoonsgegevens

#gender
sum(answers$gender=='vrouw')
sum(answers$gender=='vrouw')/nrow(answers)*100
sum(answers$gender=='man')
sum(answers$gender=='man')/nrow(answers)*100

#age
array <- c(answers$age)
#adolescents
adolescents <- subset(array,array <= 25)
sum(array<=25)
median(adolescents)
#adults
adults <- subset(array,array > 25)
sum(array>25)
median(adults)

#howoften
sum(answers$howoften=='less_than_1')
sum(answers$howoften=='less_than_1')/nrow(answers)*100
sum(answers$howoften=='1_time')
sum(answers$howoften=='1_time')/nrow(answers)*100
sum(answers$howoften=='2_times')
sum(answers$howoften=='2_times')/nrow(answers)*100
sum(answers$howoften=='more_than_2_times')
sum(answers$howoften=='more_than_2_times')/nrow(answers)*100

#os
sum(answers$OS=='Android')
sum(answers$OS=='Android')/nrow(answers)*100
sum(answers$OS=='IOS')
sum(answers$OS=='IOS')/nrow(answers)*100
sum(answers$OS=='other')
sum(answers$OS=='other')/nrow(answers)*100

#do you use
sum(answers$used=='Yes')
sum(answers$used=='Yes')/nrow(answers)*100
sum(answers$used=='No')
sum(answers$used=='No')/nrow(answers)*100

###################################################

#requirements

#functional

#connect
sum(answers$connect=='Yes')
sum(answers$connect=='Yes')/nrow(answers)*100
sum(answers$connect=='No')
sum(answers$connect=='No')/nrow(answers)*100

#social
sum(answers$socialMedia=='Annoying')
sum(answers$socialMedia=='Annoying')/nrow(answers)*100 #ja
sum(answers$socialMedia=='Limited')
sum(answers$socialMedia=='Limited')/nrow(answers)*100 #nee

#GPS
sum(answers$GPS=='Yes')
sum(answers$GPS=='Yes')/nrow(answers)*100
sum(answers$GPS=='No')
sum(answers$GPS=='No')/nrow(answers)*100

#videos
sum(answers$videos=='Must')
sum(answers$videos=='Must')/nrow(answers)*100
sum(answers$videos=='Sometimes')
sum(answers$videos=='Sometimes')/nrow(answers)*100
sum(answers$videos=='Not_necessarily')
sum(answers$videos=='Not_necessarily')/nrow(answers)*100

#non-functional

#paid
sum(answers$paid=='Yes')
sum(answers$paid=='Yes')/nrow(answers)*100
sum(answers$paid=='No')
sum(answers$paid=='No')/nrow(answers)*100

#ux
sum(answers$UX=='Important')
sum(answers$UX=='Important')/nrow(answers)*100
sum(answers$UX=='Neutral')
sum(answers$UX=='Neutral')/nrow(answers)*100
sum(answers$UX=='Not_important')
sum(answers$UX=='Not_important')/nrow(answers)*100

#purpose
sum(answers$purpose=='Muscle')
sum(answers$purpose=='Muscle')/nrow(answers)*100
sum(answers$purpose=='Losing_weight')
sum(answers$purpose=='Losing_weight')/nrow(answers)*100
sum(answers$purpose=='Stay_Fit')
sum(answers$purpose=='Stay_Fit')/nrow(answers)*100



