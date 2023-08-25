import 'package:imc_calculator/Pessoa.dart';
import 'package:imc_calculator/funcoes/calcularImc.dart';
import 'package:imc_calculator/funcoes/obterDados.dart';

void main(List<String> arguments) {
  while (true) {
    var dados = obterDados();

    while (dados == "null") {
      print('\x1B[2J\x1B[0;0H');
      print("Dados Preenchidos errado");
      dados = obterDados();
    }

    var nome = dados.split(",")[0].toString();
    double? peso = double.tryParse(dados.split(",")[1]);
    double? altura = double.tryParse(dados.split(",")[2]);

    var pessoa1 = Pessoa(nome.toString(), peso, altura);

    var imc = calcularImc(pessoa1);

    print("ola ${pessoa1.getNome()} seu imc é $imc");
    break;
  }
}
