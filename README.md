# Recommender Systems

As the amount of educational data available to us has grown, the task of organizing and making use of it has become more daunting. [Duval (2011)](dl.acm.org/citation.cfm?id=2090118) saw recommender systems as a way to deal with the "paradox of choice", the dilemma of determining what information to feed back to learners about their learning. An idealized recommender system provides a limited number of suggested metrics or new content based on the learner's past behavior and the patterns of all other learners in the sample. Recommender systems may provide behavioral cues, new content, insights or suggested behavioral changes based on a comparison of the learner to all other learners in the system.

In HUDK 4051 there are six units. We will use our ratings of these units in terms of both interest and difficulty to produce individual suggestions about what unit to attempt next.


## Datasets Info



* Be able to discuss different uses for recommender systems in learning applications
* Be able to discuss the theory behind item-based and user-based collaborative filtering methods and the role of cosine similarity 
* Be able to build a basic recommender system using an item-based collaborative filter and cosine similarity in R

## Tasks for this unit

In this unit you will be working towards creating a recommender system for HUDK4051. This recommedner system will suggest which unit you should tackle next. Your recommender will be based on a type of collaboratove filter. As background to this task please read over the follwing materials and watch the methodological videos. If you find any other useful materials please add them under **Additional Materials** at the end of the this page and pull request the change back to this repo.

### Assignment: Collaborative Filters for Learning

In this assignment you will be building a collaborative filter. Collaborative filters are a class of algorithm used to suggest content to a given user (filtering) by leveraging information about many users (collaboration). There are many flavors of collaborative filter and they are very commonly used in scenarios where there is incomplete information about a user's preferences such as Netflix suggestions or product recommendations on Amazon. The instructions for the assignment are contained in the file collaborative-filter.rmd. Fork this repo, clone it to Rstudio and when you have completed it, commit the changes, push to your version on Github and pull request your answers back to this repo. 


