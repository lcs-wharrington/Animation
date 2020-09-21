
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
canvas.fillColor = Color(hue: 100, saturation: 100, brightness: 100, alpha: 100)

canvas.drawShapesWithFill = true
//Drawing a line of circles
for y in stride(from: 0, to: 500, by: 50) {
    y
    
    for x in stride(from: 0, to: 500, by: 50) {

        //createin a random size
        let point = Int.random(in: 5...500)
        let point2 = Int.random(in: 5...500)
        let size = Int.random(in: 5...50)
        let size2 = Int.random(in: 5...50)
     
x
        
        canvas.drawEllipse(at: Point(x: point, y: point2), width: size, height: size2)
        
    }
    
}



// Canvas Axes
canvas.drawAxes(withScale: true, by: 50)
