class Calculator {
    func calculate(oper: String, firstNumber: Int, secondNumber: Int) -> Int {
        var result: Int
        
        if oper == "+" {
            result = firstNumber + secondNumber
        } else if oper == "-" {
            result = firstNumber - secondNumber
        } else if oper == "*" {
            result = firstNumber * secondNumber
        } else if oper == "/"{
            result = firstNumber / secondNumber
        } else {
            result = firstNumber % secondNumber
        }
        
        return result
    }
}

let calculator = Calculator()
print(calculator.calculate(oper: "+", firstNumber: 10, secondNumber: 20))
print(calculator.calculate(oper: "-", firstNumber: 20, secondNumber: 50))
print(calculator.calculate(oper: "*", firstNumber: 20, secondNumber: 50))
print(calculator.calculate(oper: "/", firstNumber: 20, secondNumber: 50))
print(calculator.calculate(oper: "%", firstNumber: 70, secondNumber: 50))
