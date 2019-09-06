//: Playground - noun: a place where people can play

import UIKit

enum StudentYear: Int {
    case freshman, sophomore, junior, senior
}

struct Student {
    let firstName: String
    let lastName: String
    let id: Int
    let year: StudentYear
    let grade: Int
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.id  = Int(arc4random_uniform(1000))
        self.year = StudentYear(rawValue: Int(arc4random_uniform(4))) ?? .freshman
        self.grade = Int(arc4random_uniform(101))
    }
}

var students: [Student] = [
    Student(firstName: "Sterling", lastName: "Archer"),
    Student(firstName: "Lana", lastName: "Kane"),
    Student(firstName: "Cheryl", lastName: "Tunt"),
    Student(firstName: "Pam", lastName: "Poovey"),
    Student(firstName: "Cyril", lastName: "Figgis"),
    Student(firstName: "Ray", lastName: "Gillette"),
    Student(firstName: "Malory", lastName: "Archer"),
    Student(firstName: "Barry", lastName: "Dillon"),
    Student(firstName: "Ron", lastName: "Cadillac"),
    Student(firstName: "Ross", lastName: "Geller"),
    Student(firstName: "Chandler", lastName: "Bing"),
    Student(firstName: "Rachel", lastName: "Green"),
    Student(firstName: "Joey", lastName: "Tribbiani"),
    Student(firstName: "Monica", lastName: "Geller"),
    Student(firstName: "Phoebe", lastName: "Buffay")
]


// TODO: - Create an array that contains only the freshmen from the student array using the filter function
var freshmanOnly = students.filter{
    (student) in
    return student.year == StudentYear.freshman
}

for student in freshmanOnly{

print("\(student.firstName) is a \(student.year)")
}

// TODO: - Create an array that contains only the full names (first name concatenated with the last name) from the student array using the map function

var fullNames = students.map({(students) -> String in
    return students.firstName + " " + students.lastName
})

for fullName in fullNames{
    print(fullName)
}

// TODO: - Return the average grade from all the students using the reduce function divided by the count

var grades = students.reduce(0){
    return $0 + $1.grade
}

var average = grades/students.count
print("The class average is \(average)%")
