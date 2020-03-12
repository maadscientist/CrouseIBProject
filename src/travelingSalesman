ArrayList <Vertice> vertices;
int radius;
float bestLength;
IntList bestPath;
RandomSolution randomSalesman;
BruteForce bruteSalesman;
void setup() {
  frameRate(30);
  radius = 10;
  background(255);
  fill(0);
  vertices = new ArrayList<Vertice>();
  bestPath = new IntList();
  size(800, 800);
  for (int i = 0; i < 13; i++) {
    vertices.add(new Vertice(int(random(0, width)), int(random(0, height))));
  }
  randomSalesman = new RandomSolution(vertices.size());
  bruteSalesman = new BruteForce(vertices.size());
  bestLength = 1000000;
}
void draw() {
  int[] pathOrder = bruteSalesman.generateSolution();

  display(pathOrder);
  //check if it's the best solution
  float totalLength = pathLength(pathOrder);
  if (bestLength > totalLength) {
    bestLength = totalLength;
    bestPath.clear();
    for (int j : pathOrder) {
      bestPath.append(j);
    }
  }
}

void display(int[] path) {

  background(255);
  for (Vertice i : vertices) {
    circle(i.x, i.y, radius);
  }
  stroke(0);
  strokeWeight(10);
  for (int i = 0; i < path.length-1; i++) {
    line(vertices.get(path[i]).x, vertices.get(path[i]).y, vertices.get(path[i+1]).x, vertices.get(path[i+1]).y);
    print(vertices.get(path[i]).x + " ");
    print(vertices.get(path[i]).y + " ");
    //print(path[i] + " ");
  }
  stroke(100, 200, 100);
  strokeWeight(2);
  for (int i = 0; i < bestPath.size(); i++) {
    if (i < bestPath.size()-1) {
      line(vertices.get(bestPath.get(i)).x, vertices.get(bestPath.get(i)).y, vertices.get(bestPath.get(i+1)).x, vertices.get(bestPath.get(i+1)).y);
    }
  }
  //makes the start and end of the best found solution green
  //circle(vertices.get(bestPath.get(0)).x,vertices.get(bestPath.get(0)).y,10);
}

void mousePressed() {
  boolean removing = false;
  for (int i = 0; i < vertices.size(); i++) {
    if (dist(vertices.get(i).x, vertices.get(i).y, mouseX, mouseY) < radius) {
      vertices.remove(i);
      removing = true;
      randomSalesman.updateLength(vertices.size());
      clearBestPath();
    }
  }
  if (!removing) {
    vertices.add(new Vertice(mouseX, mouseY));
    randomSalesman.updateLength(vertices.size());
    
    clearBestPath();
  }
}

//@param: an ordered integer array that gives the "path" or order of the vertices in the application
//@return: the length of the given path
float pathLength(int[] ordering) {
  float sum = 0;
  for (int i = 0; i < ordering.length-1; i++) {
    sum += dist(vertices.get(ordering[i]).x, vertices.get(ordering[i]).y, vertices.get(ordering[i+1]).x, vertices.get(ordering[i+1]).y);
  }
  return sum;
}
//clears bestPath and stuff
void clearBestPath(){
 bestPath.clear();
 bestLength = 1000000; 
}
