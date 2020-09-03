import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
const _backgroundColor = Color(0XFFF6F5F2);
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
        _AppBarGrocery(
          Expanded(
            child:   Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                top: 0
                height: size.height - kToolbarHeight,
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          )
        ),    
        ),
        ],
      ),
    );
  }
}

class _AppBarGrocery extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      Container(
            height: kToolbarHeight,
            color: _backgroundColor,
            child: Row(
              children: [
                BackButton(
                  color: Colors.black,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Fruits andvegetable',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                   ),
                  ),
                  const IconButton(
                    icon: Icon(
                      Icons.settings
                      ), onPressed: () => null,
                      )
                ],
            ),
          ),
    );
  }
}