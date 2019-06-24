# Recommender Systems

As the amount of educational data available to us has grown, the task of organizing and making use of it has become more daunting. [Duval (2011)](dl.acm.org/citation.cfm?id=2090118) saw recommender systems as a way to deal with the "paradox of choice", the dilemma of determining what information to feed back to learners about their learning. An idealized recommender system provides a limited number of suggested metrics or new content based on the learner's past behavior and the patterns of all other learners in the sample. Recommender systems may provide behavioral cues, new content, insights or suggested behavioral changes based on a comparison of the learner to all other learners in the system.

In HUDK 4051 there are six units. We will use our ratings of these units in terms of both interest and difficulty to produce individual suggestions about what unit to attempt next. To achieve this, we will build a recommender system using an item-based collaborative filter and cosine similarity in R.

## Packages Requried 
```
install.packages("lsa") #Install the lsa pacakage to access the cosine command.
install.packages("tidyr") 
```
## Datasets Info

### difficulty.csv
```
This dataset contains students' perceptions of difficulty on each topic:
* Variables:
 - name
 - pred.dif
 - nlp.dif
 - sna.dif
 - neural.dif
 - viz.dif
 - loop.dif
```
### interest.csv
```
This dataset contains students' perceptions of interest on each topic:
* Variables:
 - name
 - pred.dif
 - nlp.dif
 - sna.dif
 - neural.dif
 - viz.dif
 - loop.dif
```

## Procedure

1. Upload both the interest and difficulty csv files.
2. Use matrix operations by converting both two data frames to matricies.
3. Generate a user-based similarity matrix based on cosine similarity using the ratings the class gave each unit.
4. Find out who have the most similar interests with you in class.
5. Create a unit-based similarity matrix for difficulty and provide suggestions on which following unit a student is going to do based on the similarity of difficulty to another unit (e.g: "prediction")
6. Create a composite measure (such as PCA) from interest and difficulty and then a similarity matrix using this measure, so that we can ensure that students are recommended with units not just based on their interests but also based on what unit(s) they have already completed.
