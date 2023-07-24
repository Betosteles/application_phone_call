


import 'package:application_phone_call/src/providers/lista_contactos.dart';
import 'package:flutter/material.dart';
import '../pages/detalle_contacto_page.dart';

enum MyRoutes {detalleContacto}

final routes = {
  MyRoutes.detalleContacto.name: (context, Contacto contacto)
  {
      return  MaterialPageRoute(builder: (context) => DetalleContactoPage(contacto: contacto));
  
  }

};