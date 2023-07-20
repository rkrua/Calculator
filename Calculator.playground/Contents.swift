import UIKit

class AbstractOperation {
    var result : Int = 0
    func operate(_ num1: Int, _ num2 : Int )->Int{
        return result
    }
}

class AddOperation : AbstractOperation{
    override func operate(_ num1 : Int, _ num2 : Int) -> Int {
        let result: Int = num1 + num2
        return result
    }
}

class SubstractOperation : AbstractOperation {
    override func operate(_ num1 : Int, _ num2 : Int) -> Int {
        let result: Int = num1 - num2
        return result}
}

class MultiplyOperation : AbstractOperation{
    override func operate(_ num1 : Int, _ num2 : Int) -> Int {
        let result: Int = num1 * num2
        return result}
}

class DivideOperation : AbstractOperation {
    override func operate(_ num1 : Int, _ num2 : Int) -> Int {
        let result: Int = num1 / num2
        return result
    }
}

class Calculator {
    let add = AddOperation()
    let substract = SubstractOperation()
    let multiply = MultiplyOperation()
    let divide = DivideOperation()
    
    func add(_ num1 : Int, _ num2 : Int) -> Int {
        let result = add.operate(num1,num2)
        print("\(num1) + \(num2) 는 \(result) 입니다.")
        return result
    }
    func substract(_ num1 : Int, _ num2 : Int) -> Int {
        let result  = substract.operate(num1, num2)
        print("\(num1) - \(Int(num2)) 는 \(result) 입니다.")
        return result
    }
    func multiply(_ num1 : Int, _ num2 : Int) -> Int {
        let result = multiply.operate(num1, num2)
        print("\(num1) X \(num2) 는 \(result) 입니다.")
        return result
    }
    func divide(_ num1 : Int, _ num2 : Int) -> Int? {
        let result  = divide.operate(num1, num2)
        guard num2 != 0 else {
            print("0으로 나눌 수 없습니다.")
            return nil
        }
        print("\(num1) % \(num2) 는 \(result) 입니다.")
        return result
    }
    func reminder(_ num1 : Int, _ num2 : Int) -> Int? {
        guard num2 != 0 else {
            print("0으로 나눌 수 없습니다.")
            return nil
        }
        let result :Int = (num1 % num2)
        print("\(num1) % \(num2) 의 나머지 값은 \(result) 입니다.")
        return result
    }
}

let calc = Calculator()

let addResult = calc.add(2,5)
let substractResult = calc.substract(5, 2)
let multiplyResult = calc.multiply(2, 5)
let divideResult = calc.divide(6, 2)
let reminderResult = calc.reminder(8, 3)

//calc.add(2, 5)
//calc.substract(5, 2)
//calc.multiply(2, 5)
//calc.divide(6, 2)
//calc.mod(8, 3)

