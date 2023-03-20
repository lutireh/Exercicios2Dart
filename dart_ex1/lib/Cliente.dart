class Cliente {
  String _nome; // campo de instância que não pode ser nulo
  int _idade; // campo de instância que não pode ser nulo

  Cliente(this._nome,
      this._idade); // construtor que recebe e atribui os valores dos campos

  // getter e setter para o nome
  String get nome => _nome;
  set nome(String novoNome) => _nome = novoNome;

  // getter e setter para a idade
  int get idade => _idade;
  set idade(int novaIdade) => _idade = novaIdade;

  // sobrescreve o método toString da classe Object
  @override
  toString() {
    return "$_nome, idade = $_idade";
  }
}
