import 'dart:io';
import 'dart:math';

void main(List args) {
    int a = 3 ;
    int b = 7;
    double c = 3.14;
    String d = "ola string o valor da soma e :";

    //print(a + d);
    //print(b);
    //print(c);
    //print(e);
    print(d +( a + c + b ).toString()); // <--- toString declarar que e string !!! 

    var e = 2;
    var f = 2;
    var g = "o valor e ";

    print ("" "");
    print (g +(e+f).toString());

    const PI = 3.141516;
    print("INFORME O VALOR DO RAIO: ");
    var entradaUsuario = stdin.readLineSync()!;

    final raio = double.parse(entradaUsuario);
    var area = PI * (raio * raio); //<-- final e uma constante
    print("Area do criculo e: " + area.toString());

  dynamic x = ("estou aprendendo dart");
  print(x);


  dynamic y = ("estou teste dart");
  print(y);

  x = false;
  print(x);


}

