// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
println("Hello, world!")
var a=10
var implicitInt=100
let implicitDouble=100.50
// experiment #1
let explicitFloat :Float=4

let explicitInt :Double = 7
println(implicitInt)
let label="This is width"
let width=94
let widthLabel=label + String(width)

// Exp #2
// String is not convertible t int
//let widthLabel=label + width

// Exp #3
let stringA="apple";
let count=10
let stringAcount=" I have \(count) Apples "
let fruitSummary="i have \(count) \(stringA) "
println("\n \t \(fruitSummary)")

let myArray=["one","two","three","four"]
let myArray2D=[[1,2,3,4,7],[4,5,6,7,8]]
println(myArray[1])
myArray.count
println(myArray[0])
var sum=0
var bigNum=0
for a in myArray2D{
    for aSub in a{
        if(aSub>bigNum){
           bigNum=aSub
        }
        sum=sum+aSub
    }
    println(" \(a) count value is\(a.count) and total value \(sum) and the Biggest Number is \(bigNum)")
}


var i=10
