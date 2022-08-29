import 'dart:math';

//Class that generates random numbers
class RandomColorRepository {
  //Method that returns a list of three random numbers
  List<int> randomizeColor() {
    final rnd = Random();
    final List<int> randomNums = List.empty(growable: true);
    const int length = 3;
    const int max = 256;
    for (int i = 0; i < length; i++) {
      randomNums.add(rnd.nextInt(max));
    }

    return randomNums;
  }
}
