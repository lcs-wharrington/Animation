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
//Free code start

let yellow = Color(hue: 333, saturation: 85, brightness: 89, alpha: 100)
let blue = Color(hue: 224, saturation: 64, brightness: 47, alpha: 100)

for y in stride(from: 0, through: 300, by: 100){
    for x in stride(from: 0, through: 300, by: 100){
        
        canvas.fillColor = blue
        canvas.draw
       
        canvas.drawEllipse(at: Point(x: x + 50, y: y + 50), width: 65, height: 65)
       
       
    }
}
