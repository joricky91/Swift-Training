import Swift

var str = "Hello, playground"
var drawPixel:String = "x"
var height:Int = 5
var tempRow:String = ""

for columnPixel in 1...height{
    tempRow = ""
    for _ in 1...columnPixel{
        tempRow += drawPixel
    }
    print(tempRow)
}