protocol CanFly {
    func fly()
}

class Bird {
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("bird makes new bird in shell")
        }
    }
    
//    func fly() {
//        print("bird flaps wings lifts off into sky")
//    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("eagle flaps wings lifts off into sky")
    }
    
    func soar() {
        print("eagle glides in air currents")
    }
}

class Penguin: Bird {
    func swim() {
        print("penguin paddles through water")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
    func fly() {
        print("airplane lift off into air")
    }
}

let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myPlane)
