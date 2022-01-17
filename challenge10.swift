import Swift

class Pets {
    var name:String = ""
    var age:Int = 0

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

    override func feed(){
        super.feed()

        hunger = 0
        dirt += 20
        boredom += 20
        drowsiness += 10
    }

    override func clean(){
        super.clean()

        hunger += 20
        dirt = 0
        boredom += 20 
        drowsiness += 10
    }

    override func play(){
        super.play()

        hunger += 20
        dirt += 20
        boredom = 0
        drowsiness += 10
    }

    override func sleep(){
        super.sleep()

        hunger += 20
        dirt += 10
        boredom += 20
        drowsiness = 0
    }

    func check(){
        print("\(name)'s hunger: \(hunger)")
        print("\(name)'s dirt: \(dirt)")
        print("\(name)'s boredom: \(boredom)")
        print("\(name)'s drowsiness: \(drowsiness)")
    }
}

var game:Tamagotchi = Tamagotchi()
game.name = "Blacky"
game.hunger = 10
game.dirt = 10
game.boredom = 10
game.drowsiness = 10
game.feed()
game.clean()
game.play()
game.sleep()
game.check()