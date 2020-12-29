void main(List<String> args) {
  // n + 4
  var sucesion1 = [5, 6, 7, 8, 9];
  // 2n +2
  var sucesion2 = [4, 6, 8];
  // var b = obtenerDiferencia(sucesion1);
  // var b = [1, 1, 1, 1, 1];
  // var c = comprobarIgualdad(b);
  // comprobarListaL(c, sucesion1);
  obtenerFuncionL(sucesion2);
}

void obtenerFuncionL(List<int> l) {
  // int largo = l.length;
  List<int> d = new List();
  int n;
  for (var i = 0; i < l.length; i++) {
    var r = l[i] - (i + 1);
    d.add(r);
    // print(r);
  }
  print(d);
  // print(d[0]);
  // print(d[1]);

  if (d[0] == d[1]) {
    // n = d[0];
    // print("bien");
    // es una funcion que solo suma
    print("an = n + ${d[0]}");
  }
  if (d[0] != d[1]) {
    print("funcion dificil");
  }
}

void comprobarListaL(bool b, List<int> l) {
  if (b) {
    print("Es lineal :) => $l");
  }
  if (!b) {
    print("No es lineal :( => $l ");
  }
}

bool comprobarIgualdad(List<int> a) {
  bool r;
  loop:
  for (var i = 1; i < a.length; i++) {
    if (a[i] == a[i - 1]) {
      // print("bien");
      if (i == a.length - 1) {
        // print("termine");
        r = true;
        break loop;
      }
      continue loop;
    }
    if (a[i] != a[i - 1]) {
      // print("mal");
      r = false;
      break loop;
    }
  }
  return r;
}

List<int> obtenerDiferencia(List<int> a) {
  List<int> b = new List();
  for (var i = 1; i < a.length; i++) {
    var c = a[i] - a[i - 1];
    b.add(c);
  }
  return b;
}

void imprimirDiferencia(List<int> a) {
  for (var i = 1; i < a.length; i++) {
    var b = a[i];
    var c = a[i - 1];
    var d = a[i] - a[i - 1];
    print(
      "$b - $c: $d",
    );
  }
}
