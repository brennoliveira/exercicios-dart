import 'dart:io';
import 'dart:math';

void main() {
  Random random = new Random();
  int r = random.nextInt(100) + 1;
  while(1 == 2/2){
    print("Digite um número");
    String? n = stdin.readLineSync();
    int n_ = int.parse(n!);
    if (n_ == r) {
      print("Parabéns, o número era: $r");
      break;
    } else if (n_ != r && n_ > r) {
      print("o número está entre 1 e $n, tente novamente");
    } else print("o número é mais alto");
  }
}