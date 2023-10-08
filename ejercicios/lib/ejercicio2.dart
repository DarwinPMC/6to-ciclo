class Operacion {
  double suma(double num1, double num2) {
    return num1 + num2;
  }

  double resta(double num1, double num2) {
    return num1 - num2;
  }

  double multiplicacion(double num1, double num2) {
    return num1 * num2;
  }
}

class Calculadora extends Operacion {
  double division(double num1, double num2) {
    if (num2 != 0) {
      return num1 / num2;
    } else {
      throw Exception("No se puede dividir por cero");
    }
  }
}

void main() {
  Calculadora calculadora = Calculadora();

  double resultadoSuma = calculadora.suma(5.0, 3.0);
  double resultadoResta = calculadora.resta(5.0, 3.0);
  double resultadoMultiplicacion = calculadora.multiplicacion(5.0, 3.0);

  try {
    double resultadoDivision = calculadora.division(5.0, 0.0); // Esto generará una excepción
    print('División: $resultadoDivision');
  } catch (e) {
    print('Error: $e');
  }

  print('Suma: $resultadoSuma');
  print('Resta: $resultadoResta');
  print('Multiplicación: $resultadoMultiplicacion');
}