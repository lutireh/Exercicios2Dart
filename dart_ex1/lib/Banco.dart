import 'ContaComum.dart';
import 'ContaEspecial.dart';
import 'ContaCorrente.dart';
import 'Cliente.dart';

class Banco {
  List<ContaCorrente>
      contas; // atributo que armazena uma lista de contas correntes

  // construtor da classe Banco que recebe uma lista de contas correntes
  Banco(this.contas);

  // método que adiciona uma conta corrente à lista de contas
  void adicionarConta(ContaCorrente conta) {
    contas.add(conta);
  }

  // método que remove uma conta corrente da lista de contas
  void removerConta(ContaCorrente conta) {
    contas.remove(conta);
  }

  // método que imprime as informações de todas as contas da lista
  void mostrarContas() {
    for (var conta in contas) {
      // usa print com a variável conta
      print(conta);
      print("--------------------");
    }
  }

  /* Exercício 3
  
  void transferencia(ContaCorrente conta1, ContaCorrente conta2, double valor) {
    // verifica se as contas estão na lista do banco
    if (contas.contains(conta1) && contas.contains(conta2)) {
      if (conta1.saldo <= valor) {
        print("A conta origem possuí um saldo insuficiente");
      } else {
        conta1.saldo -= valor;
        conta2.saldo += valor;
        print("transferência realizada!");
        print(conta1);
        print("--------------------");
        print(conta2);
      }
    }
  } */

  void transferencia(ContaCorrente conta1, ContaCorrente conta2, double valor) {
    //verificando se as contaas estão na lista do banco
    if (contas.contains(conta1) && contas.contains(conta2)) {
      //verificando se a conta1 é do tipo ContaEspecial ou não
      if ((conta1 is ContaEspecial &&
              conta1.saldo - valor <= conta1.limitecredito) ||
          (conta1 is! ContaEspecial && conta1.saldo <= valor)) {
        print("transação negada! Saldo e/ou crédito insuficiente");
      } else {
        conta1.saldo -= valor;
        conta2.saldo += valor;
        print("transferência realizada!");
        print(conta1);
        print("---------------------");
        print(conta2);
      }
    }
  }
}
