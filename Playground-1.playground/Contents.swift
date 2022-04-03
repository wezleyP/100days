import Cocoa

        //Day 1
var greeting = "Hello"
greeting = "hey"
var name = "ground"

func str() {
    print(greeting.count)
    print(greeting.uppercased())
    print(greeting.hasPrefix("e"))
}
str()


//numbers

let score = 10
let biggerScore = 10_000_000

let oper = score * score
print(score.isMultiple(of: 1))


//decimals
//Doubles are double the data

let number = 0.1 * 0.2
print(number)

let a = 1
let b = 2.0
let c = Double(a) + b


        //DAY 2

//Booleans

var me = true
let notMe = false
me = !me

//concatenation

let first = "yes, "
let second = "sir"
print(first + second)

let message = "hey \(second)"
print(message)
let serre = "hey \(5 % 5) "


//Checkpoint

let celsius = 10
let fahrenheit = ((((celsius * 9) / 5) + 32))
print("The temperature is \(fahrenheit) degrees fahrenheit and \(celsius) degrees celsius")


        //DAY 3
//Arrays
var beatles = ["john","paul", "george", "ringo"]

beatles.append("adrian")

beatles.remove(at: 2)

print(beatles)
print(beatles.contains("john"))
print(beatles.sorted())
print(beatles.reversed())
var scores = Array<Int>()

// Dictionaries
var employees = [
    "name" : "Taylor",
    "occupation" : "singer"
]
print(employees["name", default: "unknown"])
print(employees["blkeh", default: "unknown"])

var places = [String: Int]()
places["first"] = 2

 Sets

let actors = Set([
"Denzel Washington",
"Tom Cruise",
"Nicolas Cage",
"Samuel L Jackson"
])
 print(actors)

//or

var actors2 = Set<String>()
actors2.insert("The man")
print(actors2)

//Enums

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
var day = Weekday.monday
day = .tuesday
print(day)

        //Day 4

type anotations

let surname: String = "bri"
var albums: [String] = ["red", "blue"]
var teams: [String] = []
var albumsDict: [String: String] = ["red" : "redder", "blue": "bluer"]


enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light

//use case for type inference is usually  for consts that dont have a value

let username: String
//logic
username = "burh"
print(username)

    Checkpoint 2

var arr: [String] = ["red", "blue","red", "blue"]

var arrSet = Set(arr)

print(arr.count)
print(arrSet.count)


         //Day 5

 //If

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("greater than or equal")
}
let friendName = "Arnold man is the man"
let ourName = "Dave"


if ourName < friendName {
    print("yes")
}

var numskis = [1,2,3]
numskis.append(4)

if numskis.count > 3 {
    numskis.remove(at : 0)
}

print(numskis)

var userName = "tyty"

if userName.isEmpty {
    userName = "anonymous"
}
print("welcoms \(userName)")

// Else

var checker = 2
var checker2 = 4

if checker > 3 {
    print("number is bigger than 3")
} else if checker2 > 3 {
    print("number is less than 3")
}

let temp = 25

if temp > 20 && temp < 30 {
    print("its a nice day")
}

let ages = 14
let parental = true

if age >= 18 || parental {
    print("you can buy the game")
}

enum Transport {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = Transport.airplane

if transport == .airplane || transport == .helicopter {
    print("lets fly")
}

 Switch

enum forecast {
    case sun
    case rain
    case snow
}

switch forecast {
case .sun:
    print("it should be a good day")
case .snow:
    print("it should be a good day")
case .rain:
    print("it should be a good day")
}

let place = "metropolis"

switch place {
case "Gotham":
    print("batman")
case "megacity":
    print(" not batman")
case "Wakanda":
    print("batman")
default:
    print("default")
}

//Ternary

let ager = 18

let canVote = age >= 18 ? "yes" : "no"
//                W         T       F
//              what   ?   true    false

enum Theme {
case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)

         //Day 6
var arrs = ["a", "b", "c", "d", "e"]

for arr in arrs {
    print(arr)
}


for i in 1...12 {
print("\(i) table")

    for j in 1...10 {
        print("    \(j) times table")
    }

    print()
}

var lyric = "haters gonna"

for _ in 1...5 {
    lyric += " hate"
}
print(lyric)


var countdown = 10

while countdown > 0{
     print("\(countdown) ...")
    countdown -= 1
}


var id = 0
while id != 10 {
    id = Int.random(in: 1...10)
    print(id)
}

let number = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number) && i.isMultiple(of: number2) {
        multiples.append(i)
        if multiples.count == 10 {
            break
        }
    }
}
print(multiples)

        CheckPoint 3

for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
      print("FizzBuzz")
    }
    else if i.isMultiple(of: 3) {
      print("Fizz")
    }
    else if i.isMultiple(of: 5) {
      print("Buzz")
    }
    else {
        print(i)
    }
}

// Day 7

func printer(a: String) {
print(a)
}

printer(a: "Hello there")

let roll = Int.random(in: 1...20)

func printTimesTable(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTable(number: 5, end: 20)

let root = sqrt(169)
print(root)

func rollDice() -> Int {
    return Int.random(in: 1...7)
}

let result = rollDice()
print(result)


var first = "hello"
var second = "hey there"

func reader(a: String, b: String) -> Bool {
    let first = a.sorted()
    let second = b.sorted()
    return first == second
}

reader(a: "hello", b: "hey there")


func getUser() -> [String] {
    ["taylor", "Swift"]
}
//Tuples

func getUserTuples() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}
//Or
func getUserTuplesNumbers() -> (String, String) {
    ("Taylor","Swift")
}

let (firstName, lastName) = getUserTuples()

print(firstName, lastName)

func isUpperCase(_ string: String) -> Bool {
    string == string.uppercased()
}
let string = "HELLO, WORLD"
let result = isUpperCase(string)

func printTimesTable(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTable(for: 5)


// Day 8

// function parameters

func yessir(dessert : String = "brownies") {
print(dessert)
}

yessir()

enum PasswordError: Error {
case short, obvious
}

func checkPassword(_ password: String) throws -> String {

if password.count < 5 {
throw PasswordError.short

}
if password == "12345" {
throw PasswordError.short

}

if password.count < 8 {
return "Ok"
} else if password.count < 10 {
return "Good"
} else {
return "Excellent"
}
}
let string = "12345"

do {
let result = try checkPassword(string)
print(result)
} catch PasswordError.short {
print("error... Too short")
} catch PasswordError.obvious {
print("error... Too obvious")
} catch {
print("error...")
}

//CheckPoint 4

enum SquareRootErrors : Error {
case outOfBounds, noRoot
}

func square(for number: Int) throws -> Int {
guard number >= 1 && number <= 10000 else {
throw SquareRootErrors.outOfBounds
}

for i in 1...number {
if number == i * i {
    return i
}
}

throw SquareRootErrors.noRoot
}


let number = 100
do {
let result =  try square( for : number )
print("the square root of your number is \(result)")
} catch {
print("out of bounds")
}


// day 9


func greetUser() {
    print("hi there")
}
 greetUser()
var greetCopy = greetUser

let sayHello = {
    print("Hi there")
}
sayHello()

let team = ["gloria", "Sue", "Piper", "Tiffany", "tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Sue" {
        return true
    } else if name2 == "Sue" {
        return false
    }

    return name1 < name2
}
//let captainFirstTeam = team.sorted(by:  captainFirstSorted)
//print(captainFirstTeam)

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Sue" {
        return true
    } else if name2 == "Sue" {
        return false
    }

    return name1 < name2
})

print(captainFirstTeam)

let team = ["Gloria", "Sue", "Piper", "Tiffany", "Tasha"]

let captainFirstTeam = team.sorted {
    if $0 == "Sue" {
        return true
    } else if $1 == "Sue" {
        return false
    }

    return $0 < $1
}

print(captainFirstTeam)


let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

func animate( duration: Int = 3 ) {
    print("Fade out")
}

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("before first")
    first()
    print("before second")
    second()
    print("before third")
    third()
}

doImportantWork{
    print("first")
} second: {
    print("second")
} third: {
    print("third")
}

func knitting(knit: () -> Void) {
    print("getting ready to knit")
    knit()
}
knitting {
    print("knitting")
}

func repeatAction(count: Int, action: () -> Void) {
    for _ in 0..<count {
        action()
    }
}
repeatAction(count: 5) {
    print("Hello, world!")
}


    //CheckPoint 5
//first try
let luckyNumbers = [7,4,38,21,16,15,12,33,31,49]

func doImportantWork() {
    let newArr = luckyNumbers.filter{ $0 % 2 == 1 }
    let newerArray = newArr.sorted(by: { $1 > $0 } )
    var _ = newerArray.map { print("\($0) is the lucky number") }
}
doImportantWork()

//second

let _ = luckyNumbers
    .filter{ $0 % 2 == 1 }
    .sorted(by: { $1 > $0 } )
    .map { print("\($0) is the lucky number") }

    // way easier chaining functions like this!
    // had to google for a while to come up with a solution like this



        //Day 10
struct Album {
    let title: String
    let artist: String
    let year: Int

func printSummary() {
    print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "red", artist: "Taylor", year: 2012)

print(red.title)
red.printSummary()

struct Employee {
let name: String
var vacation: Int

mutating func takeVacation(days: Int) {
if vacation > days {
    vacation -= days
    print("vacation time!")
    print("Days remaining: \(vacation)")
} else {
    print("OOps there arent days left.")
}
}
}

var archer = Employee(name: "Sterling", vacation: 14)
archer.takeVacation(days: 5)
print(archer.vacation)

//computed

struct Employees {
let name: String
var vacationAllocated = 14
var vacationTaken = 0

var vacationRemaining: Int {
    get {
        vacationAllocated - vacationTaken
    }
    set {
        vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer2 = Employees(name: "Sterling", vacationAllocated: 14)

archer2.vacationTaken += 4
archer2.vacationRemaining = 5
print(archer2.vacationAllocated)

struct App {
var contacts = [String]() {
    willSet {
        print("current \(contacts)")
        print("New \(newValue)")
    }
    didSet {
        print("now \(contacts.count)")
        print("old was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian")
app.contacts.append("Allen")


struct Player {
let name: String
let number: Int

init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
}
