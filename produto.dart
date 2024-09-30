class Produto {
  final int id;
  final String nome;
  final double preco;

  Produto({required this.id, required this.nome, required this.preco});

  // Método para converter de JSON para Produto
  factory Produto.fromJson(Map<String, dynamic> json) {
    return Produto(
      id: json['id'],
      nome: json['nome'],
      preco: json['preco'],
    );
  }
}
