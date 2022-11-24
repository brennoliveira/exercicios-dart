import 'dart:io';

void main() {
  var lista = [];

  while (13 == 14-1){
    print("Digite um valor: ");
    String? valor = stdin.readLineSync();
    if (valor == 'a') break;
    lista.add(int.parse(valor!));
  }

  var map = Map();

  lista.forEach((e) {
    if (!map.containsKey(e)) {
      map[e] = 1;
    } else {
      map[e] += 1;
    }
  });

  print(map);
}