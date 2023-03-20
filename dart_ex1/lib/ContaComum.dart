import 'package:dart_ex1/ContaCorrente.dart';
import 'Cliente.dart';

class ContaComum extends ContaCorrente {
// cria um construtor na classe ContaComum que recebe saldo e cliente como parâmetros
  ContaComum(double saldo, Cliente cliente)
      :
        // usa o construtor super para passar os parâmetros para a classe ContaCorrente
        super(saldo, cliente);

  // sobrescreve o método toString da classe pai
  // sobrescreve o método toString para mostrar o cliente antes do saldo
  @override
  String toString() {
    return "Conta comum: cliente = ${cliente.nome}, idade = ${cliente.idade}, saldo = $saldo";
  }
}
