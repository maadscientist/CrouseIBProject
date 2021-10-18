## Travelling Salesman Problem (TSP) Showcase Project
(My IA project for my 11th grade IB Computer Science class)

The Travelling Salesman problem is a famous computer science problem which asks: "Given a list of cities and the distances between each pair of cities, what is the shortest possible route that visits each city exactly once and returns to the origin city?" (from [Wikipedia] (https://en.wikipedia.org/wiki/Travelling_salesman_problem)).
I used Processing to create a simple program which showcases three simple algorithms solving this problem: an algorithm which simply chooses random permutations of cities (points) and stores the shortest path found so far; an algorith which goes through permutations of points in order, storing the shortest path; and an algorithm which does the same as the previous but culls out some permutations which are guaranteed not to be shorter than the shortest known path. It allows the user to place and remove "cities" and select which algorithm to use, and displays the path currently being explored each frame.
![ProjectShowcase](/images/TravellingSalesmanShowcase.PNG)
