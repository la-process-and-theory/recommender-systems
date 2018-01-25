next_module <- function (module="pred", path_Start="pred")
{
  I1 <- read.csv("interest.csv", header=TRUE)
  D1 <- read.csv("difficulty.csv", header =TRUE)
  i1names <- I1$stid
  d1names <- D1$stid
  I3 <-data.matrix(I1 [,-1])
  D2 <- data.matrix(D1[,-1])
  rownames(I3) <- i1names
  rownames(D2) <- d1names
  
  two_column <- rbind(cbind(I3[,1],D2[,1]), cbind(I3[,2],D2[,2]), cbind(I3[,3],D2[,3]), cbind(I3[,4],D2[,4]),cbind(I3[,5],D2[,5]),cbind(I3[,6],D2[,6]))
  
  tc_pca <- prcomp(two_column)
  
  summary(tc_pca)
  
  combined_matrix <- cbind(tc_pca[["x"]][1:22,1], 
                           tc_pca[["x"]][23:44,1],
                           tc_pca[["x"]][45:66,1],
                           tc_pca[["x"]][67:88,1],
                           tc_pca[["x"]][89:110,1],
                           tc_pca[["x"]][111:132,1])
  colnames(combined_matrix) <- c("pred","nlp","sna","neural","viz","loop")
  rownames(combined_matrix) <- i1names
  t_comb_matrix <- t(combined_matrix)
  unit.order <- matrix(nrow=6,ncol=6)
  for (j in 1:dim(combined_matrix)[2]){
    C.SIM <- cosine(combined_matrix)
    diag(C.SIM) <- NA
    last.unit <- colnames(combined_matrix)[j]
    for (i in 1:dim(C.SIM)[2]) {
      unit.order[i,j] <- last.unit
      this.unit <- head(rownames(C.SIM[order(C.SIM[last.unit,], decreasing = TRUE),]), n = 1)
      C.SIM[,last.unit] <- NA
      last.unit <- this.unit
    }
  }
  return(unit.order[ which(unit.order[,which(unit.order[1,] == path_Start)] ==module)+1, which(unit.order[1,] == path_Start)])
}