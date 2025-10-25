import 'dart:math';

int ejercicio1() {
  int cercleA = 78;
  int cercleB = 38;

  double radioA = sqrt(cercleA / pi);
  double radioB = sqrt(cercleB / pi);

  print('El radio del circulo A es de: $radioA');
  print('El radio del circulo B es de: $radioB');

  return radioA.compareTo(radioB);
}

int ejercicio2() {
  // a) Números impares desde 100 hasta 50
  print("Números impares de 100 a 50:");
  for (int i = 100; i >= 50; i--) {
    if (i % 2 != 0) {
      print(i);
    }
  }

  // b) Números entre 20 y 50 con while
  print("Números del 20 al 50 (avisando si son pares):");
  int num = 20;
  while (num <= 50) {
    if (num % 2 == 0) {
      print("El número $num es par");
    } else {
      print(num);
    }

    num++;
  }
  return 0;
}

int ejercicio3() {
  double num1 = 12;
  double num2 = 15;
  // a) Números pares desde 0 hasta num1
  print("Números pares de 0 a $num1:");
  for (int i = 0; i <= num1; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
  // b) Números desde num2 hasta 0 con while
  print("Números desde $num2 hasta 0:");
  int n = num2.toInt();
  while (n >= 0) {
    print(n);
    n--;
  }
  // c) Números desde num1 hasta num2 con do/while
  print("Números desde $num1 hasta $num2:");
  int x = num1.toInt();
  if (num1 < num2) {
    do {
      print(x);
      x++;
    } while (x <= num2);
  } else {
    print(num1);
  }

  return 0;
}

int ejercicio4() {
  List<int> numeros = [15, 223, 334, 154, 99, 656];
  print("Números pares:");
  for (int n in numeros) {
    if (n % 2 == 0) {
      print(n);
    }
  }

  print("Números impares:");
  for (int n in numeros) {
    if (n % 2 != 0) {
      print(n);
    }
  }

  return 0;
}

int ejercicio5() {
  int cercleA = 78;
  int cercleB = 38;

  double radioA = sqrt(cercleA / pi);
  double radioB = sqrt(cercleB / pi);
  // a) concatenación con +
  print("El radio del círculo A es: " + radioA.toString());

  // b) concatenación con $
  print("El radio del círculo B es: $radioB");
  return 0;
}

int ejercicio6() {
  List<int> lista = [10, 20, 30, 40, 50];

  // añadir elemento
  print("Lista después de add: $lista");
  lista.remove(30);
  // eliminar elemento
  print("Lista después de remove: $lista");
  print("Primer elemento: ${lista.first}");
  print("Último elemento: ${lista.last}");
  print("Longitud de la lista: ${lista.length}");
  lista.insert(2, 25);
  // insertar en posición
  print("Lista después de insert: $lista");
  lista.sort();
  // ordenar
  print("Lista ordenada: $lista");
  lista.shuffle();
  // desordenar
  print("Lista barajada: $lista");

  return 0;
}
