import "dart:io";

void main() {
  print("Digite uma sequencia: ");
  String? valor = stdin.readLineSync();

  print(valor?.split('').reversed.join());
}