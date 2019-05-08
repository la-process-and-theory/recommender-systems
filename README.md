# Simple Recommender System

![Image rec system](https://github.com/andreamcornejo/recommender-systems/blob/master/pic3.png)


## Background

Recommender systems are a response to the growing problem of an excess of data. They are systems to help make decisions in the context of users selecting modules or units by giving users feedback that is based on their learning and their preferences. An "ideal" recommender system provides a small number of suggested metrics or new content based on the learner's past behavior as well as the patterns of all other learners in the sample. Recommender systems may provide behavioral cues, new content, insights or suggested behavioral changes based on a comparison of the learner to all other learners in the system. Collaborative filters are a class of algorithm used to suggest content to a given user (filtering) by leveraging information about many users (collaboration).

For this task, we are going to create a simple recommender system and collaborative filter to help students of a data analytics classes to identify who they should be able to collaborate with for each unit, and which class units are most similar. 

![Image rec system](https://github.com/andreamcornejo/recommender-systems/blob/master/pic2.png)

## Specific Objective

More specifically, we will use two datasets where students of the class have rated their interest and perceived level of difficulty for each unit in the class (called interest and difficulty, respectively), to create cosine similarity matrices that will suggest people in the class that have similar interests and perceived difficulties for the units. In addition, we will use principal component analysis (PCA) to create a composite index that considers both interest and difficult, so as to reduce the probability that a given student using the recommender would select all the "less difficult" units in the course (and thus learn less). 

## Conclusion

Moving forward, it would be interesting to also try to make the collaborative filter consider a third factor, such as preferred method of in-class work (something that considers the degree to which each student prefers to actively discuss and work in a group as opposed to independently). 


### Readings

[Drachsler, H., Verbert, K., Santos, O. C., & Manouselis, N. (2015). Panorama of recommender systems to support learning. In *Recommender Systems Handbook* (pp. 421-451). Springer: New York, NY.](https://lirias.kuleuven.be/bitstream/123456789/476545/1/TEL_RecSys.pdf)

[Schafer, J. B., Frankowski, D., Herlocker, J., & Sen, S. (2007). Collaborative filtering recommender systems. In *The Adaptive Web* (pp. 291-324). Springer: Berlin, Heidelberg.](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.130.4520&rep=rep1&type=pdf)

### Videos

[Leskovec, J., Rajaraman, A. & Ullman, J. (2017). Recommender systems: Collaborative filtering. In *Mining of Massive Data Sets*. Coursera: Stanford, CA](https://www.youtube.com/watch?v=h9gpufJFF-0)

Brinton, C. & Chiang, M. (2013). Cosine similarity. In *Networks Illustrated: Principals without Calculus*  
[Part A](https://www.youtube.com/watch?v=C-JauEnlSlM)  
[Part B](https://www.youtube.com/watch?v=-gz1qdsM0tk)  

### Knowledge Check  

**Once you have completed all tasks in the unit, please complete the [knowledge check](https://tccolumbia.qualtrics.com/jfe/form/SV_1GOk42X1JrBTIFf).**

### Additional Materials

* [Fazeli, S., Drachsler, H. & Sloep, P. (2017). Applying recommender systems for learning analytics: A tutorial. In *The Handbook of Learning Analytics* (pp. 235-240). SOLAR: Vancouver, BC](https://solaresearch.org/hla-17/hla17-chapter20/) 

* [Principal Compononent Analysis - Visually Explained](http://setosa.io/ev/principal-component-analysis/)
