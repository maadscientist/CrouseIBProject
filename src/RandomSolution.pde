class RandomSolution extends Solution {
  //uses an intlist because of the shuffle function
  RandomSolution(int length) {
    super(length);
  }
  int[] generateSolution() {

    super.swap(int(random(order.size())), int(random(order.size())));
    print(order);
    return order.array();
  }
}
