import 'package:application_phone_call/src/providers/lista_contactos.dart';
import '../pages/detalle_contacto_page.dart';

enum MyRoutes {detalleContacto}

final routes = {
  MyRoutes.detalleContacto.name: (context) => DetalleContactoPage(contacto: listaContactos[0]),
  

};