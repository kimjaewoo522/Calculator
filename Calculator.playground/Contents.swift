class Calculator {
    var addOperation = AddOperation()
    var subtractOperation = SubtractOperation()
    var multiplyOperation = MultiplyOperation()
    var divideOperation = DivideOperation()
    
    func calculate(oper: String, firstNumber: Double, secondNumber: Double) -> String {
        var result: Double
        
        if oper == "+" {
            result = addOperation.add(firstNumber: firstNumber, secondNumber: secondNumber)
        } else if oper == "-" {
            result = subtractOperation.sub(firstNumber: firstNumber, secondNumber: secondNumber)
        } else if oper == "*" {
            result = multiplyOperation.multi(firstNumber: firstNumber, secondNumber: secondNumber)
        } else if oper == "/"{
            if secondNumber == 0 {
                return "0으로 나눌 수 없음!"
            }
            result = divideOperation.div(firstNumber: firstNumber, secondNumber: secondNumber)
        } else if oper == "%" {
            if secondNumber == 0 {
                return "0으로 나눌 수 없음!"
            }
            result = firstNumber.truncatingRemainder(dividingBy: secondNumber)
        } else {
            return "확인할 수 없는 연산자"
        }
        
        return "\(result)"
    }
}

class AddOperation {
    func add(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
}

class SubtractOperation {
    func sub(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
    
}

class MultiplyOperation {
    func multi(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber * secondNumber
    }
    
}

class DivideOperation {
    func div(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber / secondNumber
    }
}


let calculator = Calculator()
print(calculator.calculate(oper: "+", firstNumber: 10, secondNumber: 20))
print(calculator.calculate(oper: "-", firstNumber: 20, secondNumber: 50))
print(calculator.calculate(oper: "*", firstNumber: 20, secondNumber: 50))
print(calculator.calculate(oper: "/", firstNumber: 20, secondNumber: 0))
print(calculator.calculate(oper: "%", firstNumber: 2.1, secondNumber: 2.4))
print(calculator.calculate(oper: "ㅁㅇㄹ", firstNumber: 70, secondNumber: 50))
