class BranchBound extends Solution {
  float bestLength;
  BranchBound(int length) {
    super(length);
    bestLength = 100000;
  }
  int[] generateSolution() {
    branchPrune();
    reachNextIteration();
    count++;
    return order.array();
  }
  void setBest(float a) {
    bestLength = a;
  }
  /**
  checks if the current order of vertices yields a distance that is over the best known distance. 
  If it does, it "skips over" all of the remaining combinations of those vertices.
  */
  void branchPrune() {
    float sum = 0;
    for (int i = 0; i < order.size()-2; i++) {
      sum += dist(vertices.get(order.get(i)).x, vertices.get(order.get(i)).y, vertices.get(order.get(i+1)).x, vertices.get(order.get(i+1)).y);
      //checks if the path current is over the best known path
      if (sum > bestLength) {
        //"prune the branch"
        for (int j = 0; j < factorial(order.size()-i-1); j++){
          reachNextIteration();
          count++;
        }
      }
    }
  }
  void reachNextIteration() {
    int largest1 = -1; 
      int length = order.size(); 

      for (int i = 0; i < length-1; i++) {
      if (order.get(i) < order.get(i+1)) {
        largest1 = i;
      }
    }
    int largest2 = 0; 
      for (int i = 0; i < length; i++) {
      if (order.get(largest1) < order.get(i)) {
        largest2 = i;
      }
    }
    super.swap(largest1, largest2); 
      //reverse order from largest1 + 1 to the end
      int[] tempArray = order.array(); 
      order.clear(); 
      for (int i = 0; i <= largest1; i++) {
      order.append(tempArray[i]);
    }
    for (int i = length-1; i > largest1; i--) {
      order.append(tempArray[i]);
    }
  }
  int factorial(int n) {
    if (n <= 1) {
      return 1;
    } else {
      return n*factorial(n-1);
    }
  }
}
