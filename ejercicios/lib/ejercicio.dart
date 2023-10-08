abstract class Operacion {
  double suma(double num1, double num2);

  double resta(double num1, double num2);

  double multiplicacion(double num1, double num2);
}

// Clase derivada que implementa la operación
class Calculadora extends Operacion {
  @override
  double suma(double num1, double num2) {
    return num1 + num2;
  }

  @override
  double resta(double num1, double num2) {
    return num1 - num2;
  }

  @override
  double multiplicacion(double num1, double num2) {
    return num1 * num2;
  }
}

void main() {
  Calculadora calculadora = Calculadora();

  double resultadoSuma = calculadora.suma(5.0, 3.0);
  double resultadoResta = calculadora.resta(5.0, 3.0);
  double resultadoMultiplicacion = calculadora.multiplicacion(5.0, 3.0);

  print('Suma: $resultadoSuma');
  print('Resta: $resultadoResta');
  print('Multiplicación: $resultadoMultiplicacion');
}