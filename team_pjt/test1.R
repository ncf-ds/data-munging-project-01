setwd("~/Desktop/CollegeScorecard_Raw_Data")
data1996 <- read.csv((file.path="MERGED1996_PP.csv"), header=TRUE, na.strings="NULL", sep=",")
data1997 <- read.csv((file.path="MERGED1997_PP.csv"), header=TRUE, na.strings="NULL", sep=",")
data1998 <- read.csv((file.path="MERGED1998_PP.csv"), header=TRUE, na.strings="NULL", sep=",")
data1999 <- read.csv((file.path="MERGED1999_PP.csv"), header=TRUE, na.strings="NULL", sep=",")
data2000 <- read.csv((file.path="MERGED2000_PP.csv"), header=TRUE, na.strings="NULL", sep=",")
data2001 <- read.csv((file.path="MERGED2001_PP.csv"), header=TRUE, na.strings="NULL", sep=",")
data2002 <- read.csv((file.path="MERGED2002_PP.csv"), header=TRUE, na.strings="NULL", sep=",")
data2003 <- read.csv((file.path="MERGED2003_PP.csv"), header=TRUE, na.strings="NULL", sep=",")
data2004 <- read.csv((file.path="MERGED2004_PP.csv"), header=TRUE, na.strings="NULL", sep=",")
data2005 <- read.csv((file.path="MERGED2005_PP.csv"), header=TRUE, na.strings="NULL", sep=",")
data2006 <- read.csv((file.path="MERGED2006_PP.csv"), header=TRUE, na.strings="NULL", sep=",")
data2007 <- read.csv((file.path="MERGED2007_PP.csv"), header=TRUE, na.strings="NULL", sep=",")
data2008 <- read.csv((file.path="MERGED2008_PP.csv"), header=TRUE, na.strings="NULL", sep=",")
data2009 <- read.csv((file.path="MERGED2009_PP.csv"), header=TRUE, na.strings="NULL", sep=",")
data2010 <- read.csv((file.path="MERGED2010_PP.csv"), header=TRUE, na.strings="NULL", sep=",")
data2011 <- read.csv((file.path="MERGED2011_PP.csv"), header=TRUE, na.strings="NULL", sep=",")
data2012 <- read.csv((file.path="MERGED2012_PP.csv"), header=TRUE, na.strings="NULL", sep=",")
data2013 <- read.csv((file.path="MERGED2013_PP.csv"), header=TRUE, na.strings="NULL", sep=",")
data.frame <- list('data1996','data1997','data1998','data1999','data2000','data2001','data2002','data2003','data2004','data2005','data2006','data2007','data2008','data2009','data2010','data2011','data2012','data2013')

years = 1996:2013

allyears <- data.frame()
for (i in 1:length(data.frame)){
  allyears <- rbind(allyears, cbind(eval(parse(text = data.frame[[i]])), rep(years[i], nrow(eval(parse(text = data.frame[[i]]))))))
}

str(allyears)