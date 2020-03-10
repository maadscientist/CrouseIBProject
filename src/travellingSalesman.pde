ArrayList <Vertice> vertices;
int radius;
float bestLength;
IntList bestPath;
RandomSolution randomSalesman;
void setup() {
  frameRate(1);
  radius = 10;
  background(255);
  fill(0);
  vertices = new ArrayList<Vertice>();
  bestPath = new IntList();
  size(600, 600);
  for (int i = 0; i < 7; i++) {
    vertices.add(new Vertice(int(random(0, 600)), int(random(0, 600))));
  }
  randomSalesman = new RandomSolution(vertices.size());
  bestLength = 100000;
}
void draw() {
  int[] pathOrder = randomSalesman.generateSolution();

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
  }
  stroke(100,100,200);
  strokeWeight(1);
  for (int i : bestPath) {
    print(i + " ");
    if (i < bestPath.size()-1){
      line(vertices.get(i).x, vertices.get(i).y, vertices.get(i+1).x, vertices.get(i+1).y);
    }
  }
  //print(bestLength + " ");
}
void mousePressed() {
  boolean removing = false;
  for (int i = 0; i < vertices.size(); i++) {
    if (dist(vertices.get(i).x, vertices.get(i).y, mouseX, mouseY) < radius) {
      vertices.remove(i);
      removing = true;
      randomSalesman.updateLength(vertices.size());
    }
  }
  if (!removing) {
    vertices.add(new Vertice(mouseX, mouseY));
    randomSalesman.updateLength(vertices.size());
  }
}
//@param: an ordered integer array that gives the "path" or order of the vertices in the application
//@return: the length of the given path
float pathLength(int[] order) {
  float sum = 0;
  for (int i = 0; i < order.length-1; i++) {
    sum += dist(vertices.get(order[i]).x, vertices.get(order[i]).y, vertices.get(order[i+1]).x, vertices.get(order[i+1]).y);
  }
  return sum;
}
