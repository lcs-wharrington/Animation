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
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)
let deepRed = Color(hue: 5, saturation: 85, brightness: 94, alpha: 100)

// Borders off
canvas.drawShapesWithBorders = true

// Background red
canvas.fillColor = deepRed
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// Cricles
canvas.fillColor = offWhite
for y in stride(from: 0, through: 300, by: 100){
    for x in stride(from: 0, through: 300, by: 100){
       
        var vertices1: [Point] = [ ] // empty list of vertices
        
        vertices1.append(Point (x: x, y: y + 50))
        vertices1.append(Point (x: x + 50, y: y))
        vertices1.append(Point (x: x + 100, y: y + 50))
        vertices1.append(Point(x: x + 50, y: y + 100))
        
        canvas.drawCustomShape(with: vertices1)
        
        canvas.fillColor = deepRed
        canvas.drawEllipse(at: Point(x: x + 50, y: y + 50), width: 50, height: 50)
}
}
canvas.drawAxes(withScale: true, by: 40)
