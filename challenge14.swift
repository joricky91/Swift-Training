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
    var properties:[Int] = [0, 0, 0, 0]
    var ageInDays:Double = 0
    var age:Double? {
        return ageInDays / 30
    }

    override init(){
        super.init()
        properties[2] = 60 //boredom
        ageInDays = 0
    }

    convenience override init(_ name:String){
        self.init()
        self.name = name
    }
    
    override func feed(){
        if (properties[0] == 0){
            print("\(name) is already full")
        }
        else{
            super.feed()

            properties[0] = 0
            properties[1] += 20
            properties[2] += 20
            properties[3] += 10
        }
    }

    override func clean(){
        if (properties[1] == 0){
            print("\(name) is already clean")
        }
        else{
            super.clean()

            properties[1] += 20
            properties[2] = 0
            properties[0] += 20 
            properties[3] += 10
        }
    }

    override func play(){
        if (properties[2] == 0){
            print("\(name) is already done playing")
        }
        else{
            super.play()

            properties[2] += 20
            properties[1] += 20
            properties[0] = 0
            properties[3] += 10
        }
    }

    override func sleep(){
        if (properties[3] == 0){
            print("\(name) has already slept")
        }
        else{
            super.sleep()

            properties[3] += 20
            properties[0] += 10
            properties[2] += 20
            properties[1] = 0
            ageInDays += 1
        }
    }

    func check(){
        print("\(name)'s hunger: \(properties[0])")
        print("\(name)'s dirt: \(properties[1])")
        print("\(name)'s boredom: \(properties[2])")
        print("\(name)'s drowsiness: \(properties[3])")

        if (properties[0] >= 60){
            print("\(name) is hungry")
        }
        if (properties[1] >= 60){
            print("\(name) is dirty")
        }
        if (properties[2] >= 60){
            print("\(name) is bored")
        }
        if (properties[3] >= 60){
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