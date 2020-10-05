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
let pink = Color(hue: 338, saturation: 83, brightness: 89, alpha: 100)
let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
let beige = Color(hue: 69, saturation: 6, brightness: 87, alpha: 100)
canvas.drawShapesWithFill = true
canvas.fillColor = pink
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)
canvas.defaultLineWidth = 15

//Bottom left
for step in stride(from: 25, through: 175, by: 25) {
    
    step
    
    if step % 50 == 0 {
    canvas.lineColor = beige
    }else{
        canvas.lineColor = black
    }
    
    // bottum left
    canvas.drawLine(from: Point(x: step, y: step), to: Point(x: 0, y: step))
    canvas.drawLine(from: Point(x: step, y: step), to: Point(x: step, y: 0))
    
    // Top left
    canvas.drawLine(from: Point(x: step, y: 400 - step), to: Point(x: 0, y: 400 - step))
    canvas.drawLine(from: Point(x: step, y: 400 - step), to: Point(x: step, y: 400))
    
    // Bottom right
    canvas.drawLine(from: Point(x: 400 - step, y: step), to: Point(x: 400, y: step))
    canvas.drawLine(from: Point(x: 400 - step, y: step), to: Point(x: 400 - step, y: 0))
    
    // Top right
    canvas.drawLine(from: Point(x: 400 - step, y: 400 - step), to: Point(x: 400 - step, y: 400))
    canvas.drawLine(from: Point(x: 400 - step, y: 400 - step), to: Point(x: 400, y: 400 - step))
}

//Axes
canvas.defaultLineWidth = 1
canvas.drawAxes(withScale: true, by: 50)
