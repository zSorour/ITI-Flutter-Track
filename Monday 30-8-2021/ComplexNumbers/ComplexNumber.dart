class ComplexNumber {
  double _real;
  double _i;
  String _operator;

  ComplexNumber({double real = 1, double i = 1, String operator = '+'}) {
    this._real = real;
    this._i = i;
    this._operator = operator;
  }

  double getReal() {
    return this._real;
  }

  double getImaginary() {
    return this._i;
  }

  String getOperator() {
    return this._operator;
  }

  void setReal(double real) {
    this._real = real;
  }

  void setImaginary(double i) {
    this._i = i;
  }

  void setOperator(String op) {
    this._operator = op;
  }

  //Display complex number
  void showComplexNumber() {
    //based on the sign of the imaginary, we print the result
    if (_i > 0) {
      print('Complex number = $_real + ${_i}i');
    } else if (_i < 0) {
      //print absolute value of imaginary number for formatting purposes since we are printing the '-' as seen below:
      print('Complex number = $_real - ${_i.abs()}i');
    } else {
      print('Complex number = $_real');
    }
  }

  ComplexNumber addComplexNumber(ComplexNumber num2) {
    double realResult = this._real + num2._real;
    double imaginaryResult = this._i + num2._i;
    return new ComplexNumber(real: realResult, i: imaginaryResult);
  }

  ComplexNumber subtractComplexNumber(ComplexNumber num2) {
    double realResult = this._real - num2._real;
    double imaginaryResult = this._i - num2._i;
    return new ComplexNumber(real: realResult, i: imaginaryResult);
  }

  ComplexNumber multiplyComplexNumber(ComplexNumber num2) {
    //Assuming that multiplication is the same as addition and subtraction logic as assumed in the question
    double realResult = this._real * num2._real;
    double imaginaryResult = this._i * num2._i;
    return new ComplexNumber(real: realResult, i: imaginaryResult);
  }

  ComplexNumber divideComplexNumber(ComplexNumber num2) {
    //Assuming that division is the same as addition and subtraction logic as assumed in the question
    double realResult = this._real / num2._real;
    double imaginaryResult = this._i / num2._i;
    return new ComplexNumber(real: realResult, i: imaginaryResult);
  }

  ComplexNumber performOperation(ComplexNumber num2) {
    if (this._operator == '+') {
      return this.addComplexNumber(num2);
    } else if (this._operator == '-') {
      return this.subtractComplexNumber(num2);
    } else if (this._operator == '*') {
      return this.multiplyComplexNumber(num2);
    } else if (this._operator == '/') {
      return this.divideComplexNumber(num2);
    }
  }
}
