Find similar students (Neighbors)= weighted average of rankings of items they rated, sort.  IF completed, then move to second completed

T2.SIM <- cosine(t_comb_matrix)
diag(T2.SIM) <- NA
head(rownames(T2.SIM[order(T2.SIM[last.unit,], decreasing = TRUE),]), n = 3)

important_people <- rbind(t_comb_matrix[,"mh3736"],t_comb_matrix[,"jl4965"], t_comb_matrix[,"ma3694"])
important_people[,1] <- important_people[,1] * .3399770
order_values <- as.matrix(rowMeans(important_people))