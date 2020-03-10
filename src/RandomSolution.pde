class RandomSolution {
  //uses an intlist because of the shuffle function
  float bestSolution;
  IntList order;
  // add abstraction
  RandomSolution(int length) {
    order = new IntList();
    for (int i = 0; i < length; i++) {
      order.append(i);
    }
  }
  int[] generateSolution() {
    order.shuffle();
    return order.array();
  }
  void updateLength(int length){
   order.clear();
   for (int i = 0; i < length; i++) {
      order.append(i);
    } 
  }
}
