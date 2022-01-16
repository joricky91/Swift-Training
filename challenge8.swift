import Swift

func walk(_ direction:String, _ steps:Int) -> String {
    return "You have walked " + String(steps) + " steps to the " + direction
}

var resultStr:String = walk("North", 5)
print(resultStr)