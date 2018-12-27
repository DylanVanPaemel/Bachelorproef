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
median(adolescents)
#adults
adults <- subset(array,array > 25)
median(adults)

#howoften

sum(answers$howoften=='less_than_1')
sum(answers$howoften=='less_than_1')/nrow(answers)*100
#gendersort
sum(answers$howoften=='less_than_1'&answers$gender=='vrouw')
sum(answers$howoften=='less_than_1'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$howoften=='less_than_1')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$howoften=='less_than_1')
nrow(adults)/nrow(answers)*100

sum(answers$howoften=='1_time')
sum(answers$howoften=='1_time')/nrow(answers)*100
#gendersort
sum(answers$howoften=='1_time'&answers$gender=='vrouw')
sum(answers$howoften=='1_time'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$howoften=='1_time')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$howoften=='1_time')
nrow(adults)/nrow(answers)*100

sum(answers$howoften=='2_times')
sum(answers$howoften=='2_times')/nrow(answers)
#gendersort
sum(answers$howoften=='2_times'&answers$gender=='vrouw')
sum(answers$howoften=='2_times'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$howoften=='2_times')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$howoften=='2_times')
nrow(adults)/nrow(answers)*100
  
sum(answers$howoften=='more_than_2_times')
sum(answers$howoften=='more_than_2_times')/nrow(answers)*100
#gendersort
sum(answers$howoften=='more_than_2_times'&answers$gender=='vrouw')
sum(answers$howoften=='more_than_2_times'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$howoften=='more_than_2_times')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$howoften=='more_than_2_times')
nrow(adults)/nrow(answers)*100

#os
sum(answers$OS=='Android')
sum(answers$OS=='Android')/nrow(answers)*100
#gendersort
sum(answers$OS=='Android'&answers$gender=='vrouw')
sum(answers$OS=='Android'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$OS=='Android')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$OS=='Android')
nrow(adults)/nrow(answers)*100

sum(answers$OS=='IOS')
sum(answers$OS=='IOS')/nrow(answers)*100
#gendersort
sum(answers$OS=='IOS'&answers$gender=='vrouw')
sum(answers$OS=='IOS'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$OS=='IOS')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$OS=='IOS')
nrow(adults)/nrow(answers)*100

sum(answers$OS=='other')
sum(answers$OS=='other')/nrow(answers)*100
#gendersort
sum(answers$OS=='other'&answers$gender=='vrouw')
sum(answers$OS=='other'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$OS=='other')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$OS=='other')
nrow(adults)/nrow(answers)*100

#do you use
sum(answers$used=='Yes')
sum(answers$used=='Yes')/nrow(answers)*100
#gendersort
sum(answers$used=='Yes'&answers$gender=='vrouw')
sum(answers$used=='Yes'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$used=='Yes')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$used=='Yes')
nrow(adults)/nrow(answers)*100

sum(answers$used=='No')
sum(answers$used=='No')/nrow(answers)*100
#gendersort
sum(answers$used=='No'&answers$gender=='vrouw')
sum(answers$used=='No'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$used=='No')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$used=='No')
nrow(adults)/nrow(answers)*100

###################################################

#requirements

#functional

#connect
sum(answers$connect=='Yes')
sum(answers$connect=='Yes')/nrow(answers)*100
#gendersort
sum(answers$connect=='Yes'&answers$gender=='vrouw')
sum(answers$connect=='Yes'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$connect=='Yes')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$connect=='Yes')
nrow(adults)/nrow(answers)*100

sum(answers$connect=='No')
sum(answers$connect=='No')/nrow(answers)*100
#gendersort
sum(answers$connect=='No'&answers$gender=='vrouw')
sum(answers$connect=='No'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$connect=='No')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$connect=='No')
nrow(adults)/nrow(answers)*100

#social
sum(answers$socialMedia=='Annoying')
sum(answers$socialMedia=='Annoying')/nrow(answers)*100 #ja
#gendersort
sum(answers$socialMedia=='Annoying'&answers$gender=='vrouw')
sum(answers$socialMedia=='Annoying'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$socialMedia=='Annoying')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$socialMedia=='Annoying')
nrow(adults)/nrow(answers)*100

sum(answers$socialMedia=='Limited')
sum(answers$socialMedia=='Limited')/nrow(answers)*100 #nee
#gendersort
sum(answers$socialMedia=='Limited'&answers$gender=='vrouw')
sum(answers$socialMedia=='Limited'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$socialMedia=='Limited')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$socialMedia=='Limited')
nrow(adults)/nrow(answers)*100


#GPS
sum(answers$GPS=='Yes')
sum(answers$GPS=='Yes')/nrow(answers)*100
#gendersort
sum(answers$GPS=='Yes'&answers$gender=='vrouw')
sum(answers$GPS=='Yes'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$GPS=='Yes')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$GPS=='Yes')
nrow(adults)/nrow(answers)*100

sum(answers$GPS=='No')
sum(answers$GPS=='No')/nrow(answers)*100
#gendersort
sum(answers$GPS=='No'&answers$gender=='vrouw')
sum(answers$GPS=='No'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$GPS=='No')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$GPS=='No')
nrow(adults)/nrow(answers)*100

#videos
sum(answers$videos=='Must')
sum(answers$videos=='Must')/nrow(answers)*100
#gendersort
sum(answers$videos=='Must'&answers$gender=='vrouw')
sum(answers$videos=='Must'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$videos=='Must')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$videos=='Must')
nrow(adults)/nrow(answers)*100

sum(answers$videos=='Sometimes')
sum(answers$videos=='Sometimes')/nrow(answers)*100
#gendersort
sum(answers$videos=='Sometimes'&answers$gender=='vrouw')
sum(answers$videos=='Sometimes'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$videos=='Sometimes')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$videos=='Sometimes')
nrow(adults)/nrow(answers)*100

sum(answers$videos=='Not_necessarily')
sum(answers$videos=='Not_necessarily')/nrow(answers)*100
#gendersort
sum(answers$videos=='Not_necessarily'&answers$gender=='vrouw')
sum(answers$videos=='Not_necessarily'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$videos=='Not_necessarily')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$videos=='Not_necessarily')
nrow(adults)/nrow(answers)*100

#non-functional

#paid
sum(answers$paid=='Yes')
sum(answers$paid=='Yes')/nrow(answers)*100
#gendersort
sum(answers$paid=='Yes'&answers$gender=='vrouw')
sum(answers$paid=='Yes'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$paid=='Yes')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$paid=='Yes')
nrow(adults)/nrow(answers)*100

sum(answers$paid=='No')
sum(answers$paid=='No')/nrow(answers)*100
#gendersort
sum(answers$paid=='No'&answers$gender=='vrouw')
sum(answers$paid=='No'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$paid=='No')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$paid=='No')
nrow(adults)/nrow(answers)*100

#ux
sum(answers$UX=='Important')
sum(answers$UX=='Important')/nrow(answers)*100
#gendersort
sum(answers$UX=='Important'&answers$gender=='vrouw')
sum(answers$UX=='Important'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$UX=='Important')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$UX=='Important')
nrow(adults)/nrow(answers)*100

sum(answers$UX=='Neutral')
sum(answers$UX=='Neutral')/nrow(answers)*100
#gendersort
sum(answers$UX=='Neutral'&answers$gender=='vrouw')
sum(answers$UX=='Neutral'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$UX=='Neutral')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$UX=='Neutral')
nrow(adults)/nrow(answers)*100

sum(answers$UX=='Not_important')
sum(answers$UX=='Not_important')/nrow(answers)*100
#gendersort
sum(answers$UX=='Not_important'&answers$gender=='vrouw')
sum(answers$UX=='Not_important'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$UX=='Not_important')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$UX=='Not_important')
nrow(adults)/nrow(answers)*100

#purpose
sum(answers$purpose=='Muscle')
sum(answers$purpose=='Muscle')/nrow(answers)*100
#gendersort
sum(answers$purpose=='Muscle'&answers$gender=='vrouw')
sum(answers$purpose=='Muscle'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$purpose=='Muscle')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$purpose=='Muscle')
nrow(adults)/nrow(answers)*100

sum(answers$purpose=='Losing_weight')
sum(answers$purpose=='Losing_weight')/nrow(answers)*100
#gendersort
sum(answers$purpose=='Losing_weight'&answers$gender=='vrouw')
sum(answers$purpose=='Losing_weight'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$purpose=='Losing_weight')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$purpose=='Losing_weight')
nrow(adults)/nrow(answers)*100

sum(answers$purpose=='Stay_Fit')
sum(answers$purpose=='Stay_Fit')/nrow(answers)*100
#gendersort
sum(answers$purpose=='Stay_Fit'&answers$gender=='vrouw')
sum(answers$purpose=='Stay_Fit'&answers$gender=='man')
#agesort
adolescents <- subset(answers,answers$age <= 25 & answers$purpose=='Stay_Fit')
nrow(adolescents)/nrow(answers)*100
adults <- subset(answers,answers$age  > 25  & answers$purpose=='Stay_Fit')
nrow(adults)/nrow(answers)*100

############################################

#applicationtype
sum(answers$preferred_app=='fitness_only')
sum(answers$preferred_app=='fitness_only')/nrow(answers)
sum(answers$preferred_app=='food_only')
sum(answers$preferred_app=='food_only')/nrow(answers)*100
sum(answers$preferred_app=='mobile_coach')
sum(answers$preferred_app=='mobile_coach')/nrow(answers)*100


