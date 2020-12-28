void main(List<String> args) {
  // n + 4
  // var sucesion1 = [5, 6, 7, 8, 9];
  // obtenerDiferencia(sucesion1);
  var b = [1, 1, 1, 1, 1, 1, 1];
  var c = comprobarIgualdad(b);
  comprobarListaL(c);
}

void comprobarListaL(bool b) {
  if (b) {
    print("Es lineal :)");
  }
  if (!b) {
    print("No es lineal :(");
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
