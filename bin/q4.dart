import 'dart:io';

void main()
{
  List alunos = [];
  while (1 == 1){
    print("Matricula: ");
    String? mat = stdin.readLineSync();
    if (mat == '00000') break;
    print("Nome: ");
    String? nome = stdin.readLineSync();
    print("Sexo: ");
    String? sexo = stdin.readLineSync();
    double notas = 0;
    for(int i = 1; i < 4; i++){
      print("$i nota: ");
      String? nota = stdin.readLineSync(); 
      notas += double.parse(nota!);
    }
    print("Faltas: ");
    String? faltas = stdin.readLineSync();
    alunos.add({
      'mat'    : mat,
      'nome'   : nome,
      'sexo'   : sexo,
      'media'  : (notas / 3),
      'faltas' : int.parse(faltas!)
    });

  }

  //a)
  var media = alunos.map((e) => e['media']).reduce((a, b) => a + b) / alunos.length;
  print("a média dos alunos é: $media");

  //b)
  int approved = 0;
  for (var aluno in alunos) {
    if(aluno["faltas"] <= 18 && aluno["media"] >= 7.0){
      approved += 1;
    };
  };
  num perc = (approved * 100) / alunos.length;

  print("o percentual de alunos aprovados é: $perc%");

  //c)
  var topM = alunos[0];
  var topF = alunos[0];
  for (var aluno in alunos) {
    if(aluno["faltas"] <= 18 && aluno["media"] >= 7.0 && aluno["sexo"] == "M" && aluno["media"] > topM["media"]){
      topM = aluno;
    }
    if(aluno["faltas"] <= 18 && aluno["media"] >= 7.0 && aluno["sexo"] == "F" && aluno["media"] > topF["media"]){
      topF = aluno;
    }
  }
  print("aluno do sexo M com maior média: $topM");
  print("aluno do sexo F com maior média: $topF");

  //d)
  List<double> alunas = [];
  for (var aluno in alunos) {
    if(aluno["sexo"] == "F"){
      alunas.add(aluno["media"]);
    }
  }
  num mediaAlunas = alunas.reduce((value, element) => value + element) / alunas.length;
  print("a média dos alunos do sexo F é: $mediaAlunas");
}
