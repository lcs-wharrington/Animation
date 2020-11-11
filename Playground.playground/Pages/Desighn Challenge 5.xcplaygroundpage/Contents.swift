//Required Code
//Canvas Sizeing
let preferredWidth = 400
let preferredHeight = 600

import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
//Required Code end
//Free code start

// Colour Things
let offWhite = Color(hue: 208, saturation: 1, brightness: 88, alpha: 100)
let deepRed = Color(hue: 5, saturation: 85, brightness: 94, alpha: 100)
let blue = Color(hue: 240, saturation: 100, brightness: 35, alpha: 75)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 25)

// Borders off
canvas.drawShapesWithBorders = false

// Background red
canvas.fillColor = deepRed
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// Title
canvas.textColor = Color.black
canvas.drawText(message: "the clash", at: Point(x: 0, y: 405), size: 60, kerning: 1)


// Cricles
canvas.fillColor = offWhite
for y in stride(from: 0, through: 300, by: 100){
    for x in stride(from: 0, through: 300, by: 100){
        
        canvas.fillColor = offWhite
        var vertices1: [Point] = [ ] // empty list of vertices
        
        vertices1.append(Point (x: x, y: y + 50))
        vertices1.append(Point (x: x + 50, y: y))
        vertices1.append(Point (x: x + 100, y: y + 50))
        vertices1.append(Point(x: x + 50, y: y + 100))
        
        canvas.drawCustomShape(with: vertices1)
        
        canvas.fillColor = deepRed
        canvas.drawEllipse(at: Point(x: x + 50, y: y + 50), width: 65, height: 65)
        canvas.fillColor = blue
        canvas.drawEllipse(at: Point(x: x + 75, y: y + 25), width: 65, height: 65)
        canvas.fillColor = black
        canvas.drawEllipse(at: Point(x: x + 25, y: y + 75), width: 65, height: 65)
    }
}
