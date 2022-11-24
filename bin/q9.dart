void main() {
  var c = [];

  for (int i = 1000; i < 10000; i++){
    var n = i.toString();

    var dpNum = n[0] + n[1];
    var duNum = n[2] + n[3];

    var doisInteiros = int.parse(dpNum);

    var doisUltimosInteiros = int.parse(duNum);

    var valorSoma = doisInteiros + doisUltimosInteiros;
    var valorMult = valorSoma * valorSoma;

    if (i == valorMult) {
      c.add(i);
    } 
  }

  print(c);
}