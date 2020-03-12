class BruteForce extends Solution {
  //uses an intlist because of the shuffle function
  BruteForce(int length) {
    super(length);
  }
  int[] generateSolution() {
    int largest1 = 0;
    for (int i = 0; i < order.size()-1; i++) {
      if (order.get(i) < order.get(i+1)) {
        largest1 = i;
      }
    }
    int largest2 = 0;
    for (int j = 0; j < order.size(); j++) {
      if (order.get(j) < order.get(largest1)) {
      }
    }
    if (largest1 == -1) {
      //it's finished
    }
    super.swap(largest1, largest2);
    //reverse order from largest1 + 1 to the end
    int[] tempArray = order.array();
    int length = order.size();
    order.clear();
    for (int i = 0; i <= largest1; i++) {
      order.append(tempArray[i]);
    }
    for (int i = 0; i < length-(largest1 + 1); i++) {
      order.append(tempArray[order.size()-i]);
    }  
    return order.array();
  }
}
