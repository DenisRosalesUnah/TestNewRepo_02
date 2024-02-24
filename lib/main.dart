import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              indicatorColor: Colors.blue,
              tabs: [
                Tab(text: 'Pagina Principal'),
                Tab(text: 'Informacion Personal'),
                Tab(text: 'Datos y Privecidad'),
              ],
            ),
            leading: const Icon(Icons.close),
            title: const Text('Cuenta de Google'),
            titleSpacing: 0.3,
            backgroundColor: const Color.fromARGB(255, 238, 238, 238),
            actions: const [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.help_outline),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.search),
                  ),
                  Icon(Icons.supervised_user_circle_rounded)
                ],
              )
            ],
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _itemOptions(
                            'Tu cuenta esta protegida',
                            'La verificacion de seguridad reviso \ntu cuenta y no encontro acciones \nrecomendadas.',
                            Icons.gpp_good,
                            'Ver detalles',
                            Colors.green),
                        _itemOptions(
                            'Verificacion de seguridad',
                            'Elige la configuracion de privacidad\nindicada para ti con esta guia paso a paso.',
                            Icons.security,
                            'Realizar la Verificacion de privacidad',
                            Colors.blue),
                        _otherInformationwidget(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                                text: const TextSpan(
                              text:
                                  'Solo tu puedes ver la configuracion. \nTambien puedes revisar la configuracion\n de maps, la busqueda o cualquier\nservicio de Google que uses con \nfrecuencia. Google protege la \nprivacidad y la seguridad de tus datos. \nMas informacion',
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold),
                            )),
                            const Icon(Icons.security,
                                color: Colors.blue, size: 60),
                          ],
                        )
                      ]),
                ),
              ),
              const Icon(Icons.close),
              const Icon(Icons.close),
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemOptions(String title, String subTitle, IconData icon,
      String actionText, Color colorIcon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              subTitle,
              style: const TextStyle(fontSize: 15),
            ),
            Icon(icon, color: colorIcon, size: 60),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Text(
            actionText,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 17, 104, 234)),
          ),
        ),
        const Divider(
          height: 10,
        )
      ],
    );
  }

  Widget _otherInformationwidget() {
    return SizedBox(
      height: 190,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Buscar otra información',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 150,
            child: ListView(
              children: [
                ListTile(
                  title: const Text('Buscar en la cuenta de Google'),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  leading: const Icon(Icons.search),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Ver las opciones de ayuda'),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  leading: const Icon(Icons.help_outline),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Enviar Comentarios'),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  leading: const Icon(Icons.chat_bubble_outline),
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
