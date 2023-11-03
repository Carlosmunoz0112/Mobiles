import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Beauty Sales'),
          backgroundColor: Colors.pink,
        ),
        body: [
          const Image(
            image: AssetImage('assets/LogoBeautySales.png'),
            fit: BoxFit.cover,
            height: 475,
            width: 500,
          ),
          ListView(
            children: <Widget>[
              _buildRutinaExpansionTile(
                'Shampoo',
                '- Precio: 10000\n'
                    '- Cantidad en stock:80\n'
                    '- Marca: pantene\n',
                'assets/shampoo.png',
                200,
                100,
              ),
              _buildRutinaExpansionTile(
                'Gomina',
                '- Precio: 50000\n'
                    '- Cantidad en stock:14\n'
                    '- Marca: EGO\n',
                'assets/gomina.png',
                200,
                100,
              ),
              _buildRutinaExpansionTile(
                'Depilador',
                '- Precio: 50000\n'
                    '- Cantidad en stock:90\n'
                    '- Marca: pantene\n',
                'assets/depilador.png',
                200,
                100,
              ),
              _buildRutinaExpansionTile(
                'Acondicionador',
                '- Precio: 18000\n'
                    '- Cantidad en stock:8\n'
                    '- Marca: pantene\n',
                'assets/acondicionador.png',
                200,
                100,
              ),
              _buildRutinaExpansionTile(
                'Tinte para el cabello',
                '- Precio: 24000\n'
                    '- Cantidad en stock:50\n'
                    '- Marca: Loreal\n',
                'assets/tinte.png',
                200,
                100,
              ),
            ],
          ),
        ][currentPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPageIndex,
          onTap: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits),
              label: 'productos',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRutinaExpansionTile(
    String title,
    String content,
    String imagePath,
    double height,
    double width,
  ) {
    return ExpansionTile(
      title: Text(title),
      children: <Widget>[
        ListTile(
          title: Text(content),
        ),
        Image.asset(
          imagePath,
          height: height,
          width: width,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
