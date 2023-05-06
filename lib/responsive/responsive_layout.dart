import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class ResponsiveLayout extends StatelessWidget {

  // buat property mobile dan desktop dengan tipe data Widget.
  final Widget mobile;
  final Widget desktop;

  // pada constructor, masukan property diatas dengan keyyword this, untuk merujuk ke property tersebut.
  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) {

    /* 
    DIsini return LayoutBUilder yang dimana terdapat sebuah kondisi, 
    apabila lebar layar kurang dari 500 maka akan menggunakan tampilan mobie
    selebihnya akan menggunakan tampilan desktop
    */

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth < 500) {
        return mobile;
      } else {
        return desktop;
      }
    });
  }
}
