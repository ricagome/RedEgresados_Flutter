import 'package:flutter/material.dart';
import 'package:red_egresados/ui/widgets/card.dart';

class StateCard extends StatelessWidget {
  final String title, content, picUrl;
  final VoidCallback onChat;

  // StateCard constructor
  const StateCard(
      {Key? key,
      required this.title,
      required this.content,
      required this.picUrl,
      required this.onChat})
      : super(key: key);

  // Creamos un widget Stateless que contiene una AppCard,
  // Pasando todas las vistas personalizables como parámetros
  @override
  Widget build(BuildContext context) {
    //Implementa el widget con ayuda del instructor
    Color primaryColor = Theme.of(context).colorScheme.primary;
    return AppCard(
      title: title,
      content: Text(content, style: Theme.of(context).textTheme.bodyText1),
      topLeftWidget: SizedBox(
        height: 48.0,
        width: 48.0,
        child: Center(
          child: CircleAvatar(
            minRadius: 14.0,
            maxRadius: 14.0,
            backgroundImage: NetworkImage(picUrl)
          )
        )
      ),
      topRightWidget: IconButton(icon: Icon(Icons.chat_outlined, color: primaryColor),
      onPressed: onChat ,),
    );
  }
}
