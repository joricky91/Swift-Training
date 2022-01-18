import Swift

class Pets {
    var name:String = ""
    var age:Int = 0
    
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
    var hunger:Int = 0
    var dirt:Int = 0
    var boredom:Int = 0
    var drowsiness:Int = 0

    override init(){
        super.init()
        boredom = 60
    }

    override init(_ name:String) {
        super.init(name)
        boredom = 60
    }
    
    override func feed(){
        if (hunger == 0){
            print("\(name) is already full")
        }
        else{
            super.feed()

            hunger = 0
            dirt += 20
            boredom += 20
            drowsiness += 10
        }
    }

    override func clean(){
        if (dirt == 0){
            print("\(name) is already clean")
        }
        else{
            super.clean()

            hunger += 20
            dirt = 0
            boredom += 20 
            drowsiness += 10
        }
    }

    override func play(){
        if (boredom == 0){
            print("\(name) is already done playing")
        }
        else{
            super.play()

            hunger += 20
            dirt += 20
            boredom = 0
            drowsiness += 10
        }
    }

    override func sleep(){
        if (drowsiness == 0){
            print("\(name) has already slept")
        }
        else{
            super.sleep()

            hunger += 20
            dirt += 10
            boredom += 20
            drowsiness = 0
        }
    }

    func check(){
        print("\(name)'s hunger: \(hunger)")
        print("\(name)'s dirt: \(dirt)")
        print("\(name)'s boredom: \(boredom)")
        print("\(name)'s drowsiness: \(drowsiness)")

        if (hunger >= 60){
            print("\(name) is hungry")
        }
        if (dirt >= 60){
            print("\(name) is dirty")
        }
        if (boredom >= 60){
            print("\(name) is bored")
        }
        if (drowsiness >= 60){
            print("\(name) is sleepy")
        }
    }
}

var tama = Tamagotchi()
tama.name = "char"
tama.play()
tama.play()
tama.check()