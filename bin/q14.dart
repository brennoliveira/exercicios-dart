import "dart:io";

void main() {

  var vetor1 = [];
  var vetor2 = [];

  for (int i = 0; i < 5; i++) {
    print("digite o ${i+1} valor do primeiro vetor: ");
    int valor1 = int.parse(stdin.readLineSync()!);

    vetor1.add(valor1);
  }

  print("========================================");

  for (int i = 0; i < 5; i++) {
    print("digite o ${i+1} valor do segundo vetor: ");
    int valor2 = int.parse(stdin.readLineSync()!);

    vetor2.add(valor2);
  }

  var vetor3 = new List.from(vetor1)..addAll(vetor2);

  print("========================================");

  vetor1.sort();
  vetor2.sort();
  vetor3.sort();
  print("primeiro vetor ordenado ${vetor1}");
  print("segundo vetor ordenado ${vetor2}");
  print("terceiro vetor ordenado ${vetor3}");
}