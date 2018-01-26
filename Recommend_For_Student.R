# Load the CSV Files

I1 <- read.csv("interest.csv", header=TRUE)
D1 <- read.csv("difficulty.csv", header =TRUE)

#intialize the variables and build first set of matricies 
my.uni = "js4633"
i1names <- I1$stid
d1names <- D1$stid
I2 <-data.matrix(I1 [,-1])
D2 <- data.matrix(D1[,-1])
rownames(I2) <- i1names
rownames(D2) <- d1names

#combine difficulty and interest into single 2 column matrix
two_column <- rbind(cbind(I2[,1],D2[,1]), cbind(I2[,2],D2[,2]), cbind(I2[,3],D2[,3]), cbind(I2[,4],D2[,4]),cbind(I2[,5],D2[,5]),cbind(I2[,6],D2[,6]))

#Perform PCA on new matrix
tc_pca <- prcomp(two_column)

#Take the primary component from the PCA and rebuild 6 column matrix with one column per module
combined_matrix <- cbind(tc_pca[["x"]][1:22,1], 
                         tc_pca[["x"]][23:44,1],
                         tc_pca[["x"]][45:66,1],
                         tc_pca[["x"]][67:88,1],
                         tc_pca[["x"]][89:110,1],
                         tc_pca[["x"]][111:132,1])
colnames(combined_matrix) <-  c("pred","nlp","sna","neural","viz","loop")

#transpose matrix to do similarity comparison between students
t_comb_matrix <- t(combined_matrix)
#perform cosine similarity
T.SIM <- cosine(t_comb_matrix)
#remove comparsion of each student to them selves
diag(T.SIM) <- NA

#find the nearest 4 similar students to a given student
Neighbors <- head(rownames(T.SIM[order(T.SIM[my.uni,], decreasing = TRUE),]), n = 4)

#collect the similarity of those students
Neighbor_weight <- T.SIM[my.uni, Neighbors]
#weight their ratings for each element by their similarity to the given student
Neighbor_value <- combined_matrix[Neighbors,] * Neighbor_weight

#perform averages of weighted ratings
averages <- as.matrix(colMeans(Neighbor_value))
colnames(averages) <- c("average")
#get highest rated value
head(rownames(as.matrix(averages[order(averages[,"average"], decreasing = TRUE),])),1)
