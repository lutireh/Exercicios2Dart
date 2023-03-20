import 'package:dart_ex1/Banco.dart';
import 'package:dart_ex1/Cliente.dart';
import 'package:dart_ex1/ContaComum.dart';
import 'package:dart_ex1/ContaEspecial.dart';

void main() {
  // cria alguns objetos das classes ContaComum e ContaEspecial para teste
  ContaComum c1 = ContaComum(1000.0, Cliente("João", 123456789));
  ContaEspecial c2 = ContaEspecial(2000.0, Cliente("Maria", 987654321));

  // cria um objeto da classe Banco com uma lista vazia de contas
  Banco banco = Banco([]);

  // adiciona as contas à lista do banco usando polimorfismo

  // adiciona as contas à lista do banco usando polimorfismo
  banco.adicionarConta(c1); // adiciona a conta comum c1
  banco.adicionarConta(c2); // adiciona a conta especial c2

  // mostra as contas do banco
  banco.mostrarContas();

  banco.transferencia(c2, c1, 5000);
}
