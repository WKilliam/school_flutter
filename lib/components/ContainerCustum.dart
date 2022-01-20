import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerCustum extends StatelessWidget {
  final Widget _child;

  ContainerCustum(this._child ,{Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _child,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: const AssetImage("assets/images/tool.jpg"),
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop),
          )
        )
    );
  }
}
