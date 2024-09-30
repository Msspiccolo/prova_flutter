import 'package:flutter/material.dart';
import 'categoria_screen.dart';

class ProdutosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Aqui estão suas categorias:'),
            SizedBox(height: 20),
            ListTile(
              title: Text('Brinquedos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoriaScreen('Brinquedos'),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Rações'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoriaScreen('Rações'),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Produtos Higienicos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoriaScreen('Produtos Higienicos'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
