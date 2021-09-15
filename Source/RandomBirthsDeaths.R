#random deaths and births
#coding practice in Janna's office
#7/22/2021
#help using ?sample
#syntax is sample(group, X, replace) (with X being the number to kill this year)

dead = sample(pop[,1], 2, replace = FALSE) #pop[,1] is the ID column in the matrix, just like saying pop$ID from a dataframe
dead
pop[dead]
pop[pop[,1]==dead,]
dead
pop
pop = pop[-pop[,1]==dead,]
pop

#can use sample, but which function works better
pop1 = pop[-which(pop[,1]==dead),]

alive = sample(pop[,1], 98, replace = FALSE) #this is to keep alive individuals and do the opposite
