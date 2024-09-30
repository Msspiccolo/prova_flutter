import 'package:flutter/material.dart';
import 'categoria_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nathy Pet - E-commerce'),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  Text(
                    'Categorias',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Selecione uma categoria',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.toys, color: Colors.redAccent),
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
              leading: Icon(Icons.pets, color: Colors.greenAccent),
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
              leading: Icon(Icons.cleaning_services, color: Colors.orangeAccent),
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
      body: Center(
        child: Text(
          'Bem-vindo ao Nathy Pet!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
