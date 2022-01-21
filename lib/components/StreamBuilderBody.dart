import 'package:flutter/cupertino.dart';
import 'package:school_flutter/components/CenterText.dart';

class StreamBuilderBodyCustum extends StatelessWidget{

  final dynamic bloc;
  Widget child;

  StreamBuilderBodyCustum(
  {
  required this.child,
  required this.bloc,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<dynamic>(
      stream: bloc.stream,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.data == null) {
          return CenterText("Snapshot est null");
        } else if (snapshot.hasData) {
          return child;
        } else {
          return CenterText("Snapshot n'a pas de données");
        }
      },
    );
  }

}
