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
let almostBlack = Color(hue: 282, saturation: 7, brightness: 16, alpha: 100)
let translucentPink = Color(hue: 328, saturation: 94, brightness: 80, alpha: 75)
let translucentYellow = Color(hue: 49, saturation: 96, brightness: 87, alpha: 75)
let translucentBlue = Color(hue: 194, saturation: 100, brightness: 78, alpha: 75)
let deepTan = Color(hue: 89, saturation: 6, brightness: 88, alpha: 50)

// Borders off
canvas.drawShapesWithBorders = false

// Background red
canvas.fillColor = translucentPink
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// Title
canvas.textColor = Color.black
canvas.drawText(message: "the Police", at: Point(x: 0, y: 405), size: 60, kerning: 1)


// Cricles
canvas.fillColor = translucentYellow
for y in stride(from: 0, through: 300, by: 100){
    for x in stride(from: 0, through: 300, by: 100){
        
        canvas.fillColor = translucentBlue
        var vertices1: [Point] = [ ] // empty list of vertices
        
        vertices1.append(Point (x: x, y: y + 50))
        vertices1.append(Point (x: x + 50, y: y))
        vertices1.append(Point (x: x + 100, y: y + 50))
        vertices1.append(Point(x: x + 50, y: y + 100))
        
        canvas.drawCustomShape(with: vertices1)
        
        canvas.fillColor = translucentBlue
        canvas.drawEllipse(at: Point(x: x + 50, y: y + 50), width: 65, height: 65)
        canvas.fillColor = translucentYellow
        canvas.drawEllipse(at: Point(x: x + 75, y: y + 25), width: 65, height: 65)
        canvas.fillColor = translucentPink
        canvas.drawEllipse(at: Point(x: x + 25, y: y + 75), width: 65, height: 65)
    }
}

