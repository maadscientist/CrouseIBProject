class Solution {
  //uses an intlist because of the shuffle function
  IntList order;
  Solution(int length) {
    order = new IntList();
    for (int i = 0; i < length; i++) {
      order.append(i);
    }
  }

  void updateLength(int length){
   order.clear();
   for (int i = 0; i < length; i++) {
      order.append(i);
    } 
  }
  void swap (int index1,  int index2){
    int temp = order.get(index1);
    order.set(index1, order.get(index2));
    order.set(index2, temp);

  }
}
