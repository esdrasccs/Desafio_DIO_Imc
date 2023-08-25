import 'package:imc_calculator/funcoes/calcularImc.dart';
import 'package:imc_calculator/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test("Teste de IMC", () {
    var pessoa1 = Pessoa("Carlos", 122.5, 1.75);
    expect(calcularImc(pessoa1), equals("40.0 Obesidade Grau III (mórbida)"));
  });
}
