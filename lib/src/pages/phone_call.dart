import 'package:flutter/material.dart';
import '../constantes/routes.dart';
import '/src/providers/lista_contactos.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Contactos',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Contactos'),
        ),
        body: ListView.builder(
        itemCount: listaContactos.length,
        itemBuilder: (context, index) {
          final contacto = listaContactos[index];
          return ListTile(
            title: Text(contacto.nombre),
            subtitle: Text(contacto.numeroTelefono),
            onTap: () {
              
              Navigator.pushNamed(context, MyRoutes.detalleContacto.name, arguments: {'contacto': contacto});
            },
          );
        }        
        ),
      ),
    );
  }
}