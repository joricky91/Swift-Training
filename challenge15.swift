import Swift 

class Pets {
    var name:String = ""
    
    init() {
        self.name = "Blacky"
    }

    
    init(_ name:String) {
        self.name = name
    }
    
    func feed(){
        print("\(name) has been fed")
    }

    func clean(){
        print("\(name) has taken a bath")
    }

    func play(){
        print("\(name) enjoyed playing with you")
    }

    func sleep(){
        print("\(name) went to sleep")
    }
}

class Tamagotchi: Pets{
    var properties = [String:Int]()
    var ageInDays:Double = 0
    var age:Double? {
        return ageInDays / 30
    }

    override init(){
        super.init()
        properties["hunger"] = 0
        properties["dirt"] = 0
        properties["boredom"] = 60
        properties["drowsiness"] = 0
        ageInDays = 0
    }

    convenience override init(_ name:String){
        self.init()
        self.name = name
    }
    
    override func feed(){
        if (properties["hunger"] == 0){
            print("\(name) is already full")
        }
        else{
            super.feed()

            properties["hunger"] = 0
            properties["dirt"]! += 20
            properties["boredom"]! += 20
            properties["drowsiness"]! += 10
        }
    }

    override func clean(){
        if (properties["dirt"] == 0){
            print("\(name) is already clean")
        }
        else{
            super.clean()

            properties["dirt"] += 20
            properties["boredom"]! = 0
            properties["hunger"]! += 20 
            properties["drowsiness"]! += 10
        }
    }

    override func play(){
        if (properties["boredom"] == 0){
            print("\(name) is already done playing")
        }
        else{
            super.play()

            properties["dirt"]! += 20
            properties["hunger"]! += 20
            properties["boredom"] = 0
            properties["drowsiness"]! += 10
        }
    }

    override func sleep(){
        if (properties["drowsiness"] == 0){
            print("\(name) has already slept")
        }
        else{
            super.sleep()

            properties["hunger"]! += 20
            properties["boredom"]! += 10
            properties["dirt"]! += 20
            properties["drowsiness"] = 0
            ageInDays += 1
        }
    }

    func check(){
        print("\(name)'s hunger: \(properties["hunger"]!)")
        print("\(name)'s dirt: \(properties["dirt"]!)")
        print("\(name)'s boredom: \(properties["boredom"]!)")
        print("\(name)'s drowsiness: \(properties["drowsiness"]!)")

        if (properties["hunger"]! >= 60){
            print("\(name) is hungry")
        }
        if (properties["dirt"]! >= 60){
            print("\(name) is dirty")
        }
        if (properties["boredom"]! >= 60){
            print("\(name) is bored")
        }
        if (properties["drowsiness"]! >= 60){
            print("\(name) is sleepy")
        }
    }

    func getAge() {
        print("\(name) is \(age!) months old")
    }
}

var tama = Tamagotchi()
tama.name = "tamago"

for _ in 1...5 {
    tama.play()
    tama.feed()
    tama.clean()
    tama.sleep()
    tama.check()
}

tama.getAge()