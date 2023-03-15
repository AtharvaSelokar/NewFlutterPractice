import 'package:flutter/material.dart';

class FunctionA extends StatelessWidget {
  FunctionA({Key? key,this.color,this.onTap,this.selected}) : super(key: key);
final Color? color;
final VoidCallback? onTap;
final bool? selected;

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onTap,
      child: Container (
        color:color,
        child: Center(
          child: Row(
            children: [
              selected?? false?Icon(Icons.check_circle,color: Colors.white,):Container(),

            ],
          ),
        )
      ),
    );
  }
}
