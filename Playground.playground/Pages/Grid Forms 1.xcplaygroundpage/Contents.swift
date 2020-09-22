

//Required Code
//Canvas Sizeing
let preferredWidth = 500
let preferredHeight = 500

import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
//Required Code end

//Free code


canvas.drawShapesWithFill = true
//Drawing a line of circles
for y in stride(from: 0, to: 500, by: 50) {
    y
    
    for x in stride(from: 0, to: 500, by: 50) {
x
        //createin a random size
        let point = Int.random(in: 0...500)
        let point2 = Int.random(in: 0...500)
        let size = Int.random(in: 0...50)
        let size2 = Int.random(in: 0...50)
        let Colour = Int.random(in: 0...360)
        let Place1 = Int.random(in:0...500)
        let Place2 = Int.random(in:0...500)
        let Place3 = Int.random(in:0...500)
        let Place4 = Int.random(in:0...500)
        let Border = Int.random(in:0...20)
        let Line1 = Int.random(in:0...20)
        canvas.fillColor = Color(hue: Colour, saturation: 100, brightness: 100, alpha: 100)
        canvas.drawEllipse(at: Point(x: point, y: point2), width: size, height: size2)
        canvas.drawLine(from: Point(x: Place1, y: Place2), to: Point(x: Place3, y: Place4))
        canvas.lineColor = Color(hue: Colour, saturation: 100, brightness: 100, alpha: 100)
        canvas.drawPageBorder
        canvas.borderColor = Color(hue: Colour, saturation: 100, brightness: 100, alpha: 100)
        canvas.defaultBorderWidth = Border
        canvas.defaultLineWidth = Line1
    }
    
}


