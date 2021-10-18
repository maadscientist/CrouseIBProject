class BruteForce extends Solution {
  //uses an intlist because of the shuffle function
  BruteForce(int length) {
    super(length);
  }
  int[] generateSolution() {
    /**
     Find the largest x such that P[x]<P[x+1].
     (If there is no such x, P is the last permutation.)
     Find the largest y such that P[x]<P[y].
     Swap P[x] and P[y].
     Reverse P[x+1 .. n].
     https://www.quora.com/How-would-you-explain-an-algorithm-that-generates-permutations-using-lexicographic-ordering
     */
    int largest1 = 0;
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
    count++;
    return order.array();
  }
}
