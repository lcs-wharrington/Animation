
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
//Free Code Start

canvas.defaultLineWidth = 5


for y in stride(from: 0, to: 500, by: 50) {

    
    for x in stride(from: 0, to: 500, by: 50) {
        
        let Colour = Int.random(in: 0...360)
        canvas.lineColor = Color(hue: Colour, saturation: 100, brightness: 100, alpha: 100)
        let decisionMaker = Int.random(in:1...2)


        if decisionMaker == 1 {
            canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x + 50, y: y + 50))

        } else {
            
            canvas.drawLine(from: Point(x: x, y: y + 50), to: Point(x: x + 50, y: y))
            
        }

        
        
    }
}
