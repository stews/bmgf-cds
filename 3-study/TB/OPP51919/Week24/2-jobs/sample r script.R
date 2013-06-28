#-----------------------
#title:   basic sample script
#purpose: test setup
#-----------------------


# init
setwd("V:/3-studys/TB/OPP51919/Week24/1-import")
study <- read.csv("DecGTS20_hominidSubset.csv",sep=",",header=TRUE) 


# parse / analysis



# graph / output
barplot(study$qCHOL, names.arg=study$Subject, col="gray", border=NA, xlab="Subject", ylab="qCHOL")


