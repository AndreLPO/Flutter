import 'package:flutter/material.dart';
import 'package:udemyclone/pages/home/widgets/appbar/web_appbar_responsive.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Align(
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1400),
          child: Row(
            children: [
              Text('Flutter'),
              const SizedBox(width: 32),
             WebAppBarResponsive(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart),
              ),
              const SizedBox(width: 24),
              SizedBox(
                height: 38,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Fazer Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 2, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(width: 8),
              SizedBox(
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Cadastrar',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
