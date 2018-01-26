next_module <- function (module="pred", path_Start="pred")
{
  #start with inputs of last module completed and start to module path.  Then read in CSV Files
  #and setup initital values
  I1 <- read.csv("interest.csv", header=TRUE)
  D1 <- read.csv("difficulty.csv", header =TRUE)
  i1names <- I1$stid
  d1names <- D1$stid
  I3 <-data.matrix(I1 [,-1])
  D2 <- data.matrix(D1[,-1])
  rownames(I3) <- i1names
  rownames(D2) <- d1names
  
  #combine difficulty and interest into single 2 column matrix
  two_column <- rbind(cbind(I3[,1],D2[,1]), cbind(I3[,2],D2[,2]), cbind(I3[,3],D2[,3]), cbind(I3[,4],D2[,4]),cbind(I3[,5],D2[,5]),cbind(I3[,6],D2[,6]))
  #Perform PCA on new matrix
  tc_pca <- prcomp(two_column)
  
  #Take the primary component from the PCA and rebuild 6 column matrix with one column per module
  combined_matrix <- cbind(tc_pca[["x"]][1:22,1], 
                           tc_pca[["x"]][23:44,1],
                           tc_pca[["x"]][45:66,1],
                           tc_pca[["x"]][67:88,1],
                           tc_pca[["x"]][89:110,1],
                           tc_pca[["x"]][111:132,1])
  colnames(combined_matrix) <- c("pred","nlp","sna","neural","viz","loop")
  rownames(combined_matrix) <- i1names
  #loop through each of the potential modules, creating one column per module as the start point
  unit.order <- matrix(nrow=6,ncol=6)
  for (j in 1:dim(combined_matrix)[2]){
  #peform cosine similariry and remove self-referential comparisons
    C.SIM <- cosine(combined_matrix)
    diag(C.SIM) <- NA
    last.unit <- colnames(combined_matrix)[j]
    #loop through cosine similarity matrix finding the next unit, and then clearing that row, so 
    #we can resort without that row coming up again.  Build path for this starting unit.
    for (i in 1:dim(C.SIM)[2]) {
      unit.order[i,j] <- last.unit
      this.unit <- head(rownames(C.SIM[order(C.SIM[last.unit,], decreasing = TRUE),]), n = 1)
      C.SIM[,last.unit] <- NA
      last.unit <- this.unit
    }
  }
  #find the next unit compared to the starting unit path and last finished module
  return(unit.order[ which(unit.order[,which(unit.order[1,] == path_Start)] ==module)+1, which(unit.order[1,] == path_Start)])
}