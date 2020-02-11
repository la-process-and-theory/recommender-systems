
I1 <- read.csv("interest.csv")
D1 <- read.csv("difficulty.csv")

colnames(I1)
colnames(D1)
D1$first
D1
I1

library(dplyr)
library(tidyr)
I2 <- unite(I1, "name", first,last, sep = " ") #combine names
I2 <- distinct(I2,name, .keep_all= TRUE) #remove duplicate students
rownames(I2) <- I2$name
I2$name
I2$name <- NULL # removes name as a variable/column
I2 <- as.matrix(I2)
I2

# First let's transpose the matrix so that multiplication occurs by students rather than units.
I2 <- t(I2) # transpose matrix
I2


library(lsa)
I.SIM <- cosine(I2) 
#This command generates the cosine similarity values as a new matrix. 
# lick on I.SIM in the Global Environment pane to see what it looks like.
I.SIM
diag(I.SIM) <- NA 
#Since each student will be most similar to themselves we want to remove that information
 


my.name <- "Artemas Wang" #Input your name as it appears in the data set

head(rownames(I.SIM[order(I.SIM[my.name,], decreasing = TRUE),]), n = 3) # who is most closest to me
 # [1] "Jiahao Guo"      "Lingling Miao"   "Zhongyuan Zhang"


D2 <- unite(D1, "name", first, last, sep = " ")
D2 <- distinct(D2, name, .keep_all = TRUE)
rownames(D2) <- D2$name
D2$name <- NULL # removes name as a variable/column
D2 <- as.matrix(D2)
D2
D.SIM <- cosine(D2)
diag(D.SIM) <- NA
head(rownames(D.SIM[order(D.SIM["prediction.difficulty",], decreasing = TRUE),]), n = 1) 
 

library(tidyr)
library(lsa)

I1 <- unite(I1, "name", first,last, sep = " ")
I3 <- I1 %>% pivot_longer(-name, names_to = 'unit', values_to = 'interest')

D1 <- unite(D1, "name", first,last, sep = " ")
D3 <- D1 %>% pivot_longer(-name, names_to = "unit", values_to = 'difficulty')

C1 <- data.frame(I3$name, I3$unit, I3$interest, D3$difficulty)
names(C1) <- c("name", "unit", "interest", "difficulty")
C1 <- filter(C1, difficulty > 0)
C2 <- select(C1, "interest", "difficulty")

# Run PCA
pc <- prcomp(C2)
pc
# Extract PC1 loadings as new measure and attach to stid & unit
C3 <- data.frame(C1$name, C1$unit, pc$x)
C3
C4 <- select(C3, C1.name, C1.unit, PC1)
C4
#Remove int from unit label
C4$C1.unit <- gsub(".interest", "", C4$C1.unit)
C4
names(C4) <- c("name", "unit", "PC1")
C4
#Recreate unit by student matrix
C5 <- C4 %>%
  group_by(name) %>%
  mutate(row = row_number()) %>%
  pivot_wider(names_from = name, values_from = PC1) %>%
  select(-row)
C5 <- as.data.frame(C5)
C5 <- C5[1:7,]
str(C5)
rownames(C5) <- C5$unit
C5$unit <- NULL
C5 <- as.matrix(C5)
C5 <- ifelse(is.na(C5), 0, C5)
C5 <- t(C5)

#Generate cosine similarity matrix for units
C.SIM <- cosine(C5)
diag(C.SIM) <- NA

#Search for most similar unit to "neural" 
head(rownames(C.SIM[order(C.SIM["loop",], decreasing = TRUE),]), n = 1)
## 
  
 
