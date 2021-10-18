class RandomSolution extends Solution {
  //uses an intlist because of the shuffle function
  RandomSolution(int length) {
    super(length);
  }
  int[] generateSolution() {
    order.shuffle();
    //super.swap(int(random(order.size())), int(random(order.size())));
    return order.array();
  }
}
