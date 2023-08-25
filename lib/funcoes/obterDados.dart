// ignore: file_names
import 'dart:io';

obterDados() {
  stdout.write("Qual seu nome:");
  var nome = stdin.readLineSync();

  stdout.write("Qual seu peso:");
  var peso = stdin.readLineSync();

  stdout.write("Qual sua altura:");
  var altura = stdin.readLineSync();

  double? newPeso = double.tryParse(peso.toString());
  double? newAltura = double.tryParse(altura.toString());

  if (newPeso is num && newAltura is num && nome != "") {
    return "$nome,$peso,$altura";
  } else {
    print('\x1B[2J\x1B[0;0H');
    print("Dados Invalidos");
    return "null";
  }
}
