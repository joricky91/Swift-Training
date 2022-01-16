import Swift

var str = "Hello, playground"

var strOperator:String = "+"
var num1:Int = 10
var num2:Int = 2
var result:Int = 0

switch strOperator {
case "+":
    result = num1 + num2
    print(result)
case "-":
    result = num1 - num2
    print(result)
case "*", "x":
    result = num1 * num2
    print(result)
case "/":
    result = num1 / num2
    print(result)
default:
    print("Operator does not exist")
}
