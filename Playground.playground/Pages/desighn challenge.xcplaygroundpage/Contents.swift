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
let OffWhite = Color(hue: 81, saturation: 5, brightness: 88, alpha: 100)
let LimeGreen = Color(hue: 106, saturation: 64, brightness: 73, alpha: 100)

// Borders off
canvas.drawShapesWithBorders = false

// Background green
canvas.fillColor = LimeGreen
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// Background black
canvas.fillColor = Color.black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 400)

// Cricles
canvas.fillColor = LimeGreen
for y in stride(from: 0, through: 400, by: 40){
    for x in stride(from: 0, through: 400, by: 40){
        //Color whitte Circles
        if x == 0 {
            canvas.fillColor = LimeGreen
        } else if x == 400 {
            canvas.fillColor = LimeGreen
        } else if y == 0 {
            canvas.fillColor = LimeGreen
        } else if y == 400 {
            canvas.fillColor = LimeGreen
        } else if x + y > 400 {
            canvas.fillColor = LimeGreen
        } else {
            canvas.fillColor = OffWhite
        }
        // Cricles Drawing
        canvas.drawEllipse(at: Point(x: x, y: y), width: 35, height: 35)
    }
}
canvas.drawAxes(withScale: true, by: 40)
