
let preferredWidth = 500
let preferredHeight = 500
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

// Create a turtle that will draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Draw a square
turtle.penUp()
turtle.left(by: 90)
turtle.forward(steps: 250)
turtle.right(by: 90)
turtle.forward(steps: 100)
turtle.forward(steps: 100)
turtle.left(by: 90)
turtle.penDown()
turtle.forward(steps: 25)
turtle.right(by: 90)
turtle.forward(steps: 125)
turtle.left(by: 90)
turtle.forward(steps: 25)
turtle.right(by: 135)
turtle.forward(steps: 75)
turtle.right(by: 90)
turtle.forward(steps: 75)
turtle.right(by: 135)
turtle.forward(steps: 25)
turtle.left(by: 90)
turtle.forward(steps: 125)
turtle.right(by: 90)
turtle.forward(steps: 25)
turtle.right(by: 90)
