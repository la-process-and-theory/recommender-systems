# Recommender Systems

This repo contains files for an assignment on building an item-based
collaborative filter in R for HUDK 4051: Learning Analytics: Process and Theory.

HUDK 4051 is the second of three core courses in the Learning Analytics MS at
Teachers College, Columbia University focusing on the thinking, methods, and
conventions in data science. Particular attention is given to the fields of
Educational Data Mining and Learning Analytics. Refer to the
[Syllabus](https://github.com/timothyLeeXQ/HUDK-4051-Syllabus) (forked from
the [main repo](https://github.com/la-process-and-theory/syllabus) which may
contain updates for future class iterations) for more information on HUDK 4051.

Other classes in the series are:
* [HUDK 4050: Core Methods in Educational Data
Mining](https://github.com/timothyLeeXQ/HUDK-4050-Syllabus)
([Main repo](https://github.com/core-methods-in-edm/syllabus))
* HUDK 5053: Feature Engineering Studio (Starting in May 2020.
 [Main repo](https://github.com/feature-engineering-studio/syllabus))

## Instructor Notes

As the amount of educational data available to us has grown, the task of organizing and making use of it has become more daunting. [Duval (2011)](dl.acm.org/citation.cfm?id=2090118) saw recommender systems as a way to deal with the "paradox of choice", the dilemma of determining what information to feed back to learners about their learning. An idealized recommender system provides a limited number of suggested metrics or new content based on the learner's past behavior and the patterns of all other learners in the sample. Recommender systems may provide behavioral cues, new content, insights or suggested behavioral changes based on a comparison of the learner to all other learners in the system.

## Goals for this Unit

* Be able to discuss different uses for recommender systems in learning applications
* Be able to discuss the theory behind item-based and user-based collaborative filtering methods and the role of cosine similarity
* Be able to build a basic recommender system using an item-based collaborative filter and cosine similarity in R

## Tasks for this unit

In this unit you will be working towards creating a recommender system for HUDK4051. This recommedner system will suggest which unit you should tackle next. Your recommender will be based on a type of collaboratove filter. As background to this task please read over the follwing materials and watch the methodological videos. If you find any other useful materials please add them under **Additional Materials** at the end of the this page and pull request the change back to this repo.

### Readings

[Drachsler, H., Verbert, K., Santos, O. C., & Manouselis, N. (2015). Panorama of recommender systems to support learning. In *Recommender Systems Handbook* (pp. 421-451). Springer: New York, NY.](https://lirias.kuleuven.be/bitstream/123456789/476545/1/TEL_RecSys.pdf)

[Schafer, J. B., Frankowski, D., Herlocker, J., & Sen, S. (2007). Collaborative filtering recommender systems. In *The Adaptive Web* (pp. 291-324). Springer: Berlin, Heidelberg.](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.130.4520&rep=rep1&type=pdf)

### Videos

[Leskovec, J., Rajaraman, A. & Ullman, J. (2017). Recommender systems: Collaborative filtering. In *Mining of Massive Data Sets*. Coursera: Stanford, CA](https://www.youtube.com/watch?v=h9gpufJFF-0)

Brinton, C. & Chiang, M. (2013). Cosine similarity. In *Networks Illustrated: Principals without Calculus*  
[Part A](https://www.youtube.com/watch?v=C-JauEnlSlM)  
[Part B](https://www.youtube.com/watch?v=-gz1qdsM0tk)  

### Assignment: Collaborative Filters for Learning

In this assignment you will be building a collaborative filter. Collaborative filters are a class of algorithm used to suggest content to a given user (filtering) by leveraging information about many users (collaboration). There are many flavors of collaborative filter and they are very commonly used in scenarios where there is incomplete information about a user's preferences such as Netflix suggestions or product recommendations on Amazon. The instructions for the assignment are contained in the file collaborative-filter.rmd. Fork this repo, clone it to Rstudio and when you have completed it, commit the changes, push to your version on Github and pull request your answers back to this repo.

### Knowledge Check  

**Once you have completed all tasks in the unit, please complete the [knowledge check](https://tccolumbia.qualtrics.com/jfe/form/SV_5mCqPdWk3KpfXjD).**

### Additional Materials

* [Fazeli, S., Drachsler, H. & Sloep, P. (2017). Applying recommender systems for learning analytics: A tutorial. In *The Handbook of Learning Analytics* (pp. 235-240). SOLAR: Vancouver, BC](https://solaresearch.org/hla-17/hla17-chapter20/)

* [Principal Compononent Analysis - Visually Explained](http://setosa.io/ev/principal-component-analysis/)
