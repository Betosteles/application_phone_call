import 'package:flutter/material.dart';
import '/src/providers/lista_contactos.dart';

class DetalleContactoPage extends StatelessWidget {
  final Contacto contacto;

  const DetalleContactoPage({super.key, required this.contacto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0
        



      ),
      body: Scrollbar(
        child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.pink, // Color del círculo
                radius: 60, // Tamaño del círculo
                child: Text(
                  contacto.nombre.substring(0, 1),
                  style: const TextStyle(color: Colors.white, fontSize: 90),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  contacto.nombre,
                  style: const TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.call),
                          onPressed: () {
                            // Lógica para realizar la llamada
                            print(
                                'Haciendo llamada a ${contacto.numeroTelefono}');
                          },
                        ),
                        const Text('Llamar'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.message),
                          onPressed: () {
                            // Lógica para enviar mensaje de texto
                            print(
                                'Enviando mensaje de texto a ${contacto.numeroTelefono}');
                          },
                        ),
                        const Text('Mensaje de texto'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.video_call),
                          onPressed: () {
                            // Lógica para realizar una video llamada
                            print(
                                'Iniciando video llamada con ${contacto.nombre}');
                          },
                        ),
                        const Text('Video'),
                      ],
                    ),
                  ),
                ],
              ),

              const Divider(),

              // Puedes mostrar más detalles del contacto aquí si lo deseas
              Container(
                  width: double.infinity,
                  
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // Color gris claro
                    borderRadius:
                        BorderRadius.circular(20), // Puntas redondeadas
                  ),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.call, size: 30),
                          onPressed: () {
                            // Lógica para realizar la llamada
                            print(
                                'Haciendo llamada a ${contacto.numeroTelefono}');
                          },
                        ),
                        GestureDetector(
                          onTap: () {
                            // Lógica a ejecutar cuando se hace clic en el botón de texto
                            print(
                                'Haciendo llamada a ${contacto.numeroTelefono}');
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${contacto.numeroTelefono}     ',
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  const Text(
                                    'Celular',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ]),
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.video_call, size: 35),
                              onPressed: () {
                                // Lógica para realizar una video llamada
                                print(
                                    'Iniciando video llamada con ${contacto.nombre}');
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.message, size: 30),
                              onPressed: () {
                                // Lógica para enviar mensaje de texto
                                print(
                                    'Enviando mensaje de texto a ${contacto.numeroTelefono}');
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                            // Lógica a ejecutar cuando se hace clic en el botón de texto
                            print(
                                'Whatsapp: Enviando mensaje de texto a ${contacto.numeroTelefono}');
                          },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'lib/src/images/wa.png',
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'Enviar mensaje a ${contacto.numeroTelefono}',
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                            // Lógica a ejecutar cuando se hace clic en el botón de texto
                            print(
                                'Whatsapp: Haciendo Llamada a ${contacto.numeroTelefono}');
                          },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'lib/src/images/wa.png',
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'Llamar a ${contacto.numeroTelefono}',
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                            // Lógica a ejecutar cuando se hace clic en el botón de texto
                            print(
                                'Whatsapp: Iniciando video llamada con ${contacto.nombre}');
                          },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'lib/src/images/wa.png',
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'Videollamar a ${contacto.numeroTelefono}',
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                            // Lógica a ejecutar cuando se hace clic en el botón de texto
                            print(
                                'Telegram: Enviando mensaje de texto a ${contacto.numeroTelefono}');
                          },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'lib/src/images/te.png',
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'Enviar mensaje a ${contacto.numeroTelefono}',
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                            // Lógica a ejecutar cuando se hace clic en el botón de texto
                            print(
                                'Telegram: Haciendo Llamada a ${contacto.numeroTelefono}');
                          },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'lib/src/images/te.png',
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'Llamar a ${contacto.numeroTelefono}',
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                            // Lógica a ejecutar cuando se hace clic en el botón de texto
                            print(
                                'Telegram: Iniciando video llamada con ${contacto.nombre}');
                          },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'lib/src/images/te.png',
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'Videollamar a ${contacto.numeroTelefono}',
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ]))
            ],
          ),
        ),
      ),
    ));
  }
}
