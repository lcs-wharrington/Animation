//Required Code
//Canvas Sizeing
let preferredWidth = 400
let preferredHeight = 600
//Will Harrington
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
//Required Code end
//Free code start

// COLORS
let orange = Color(hue: 21, saturation: 76, brightness: 94, alpha: 100)
let blue = Color(hue: 201, saturation: 72, brightness: 85, alpha: 65)
let offWhite = Color(hue: 208, saturation: 1, brightness: 88, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)
let deepRed = Color(hue: 5, saturation: 85, brightness: 94, alpha: 100)
//Backgroud Colour
canvas.fillColor = orange
var vertices: [Point] = [ ] // empty list of vertices
vertices.append(Point (x: 0, y: 0)) // start
vertices.append(Point (x: 0, y: 600))
vertices.append(Point (x: 400, y: 600))
vertices.append(Point (x: 400, y: 0)) // end
canvas.drawCustomShape(with: vertices)
//The Shape
canvas.drawShapesWithFill = false
canvas.borderColor = offWhite
canvas.defaultBorderWidth = 12
for step in stride(from: 390, through: 0, by: -48) {
    canvas.drawRectangle(at: Point(x: 225, y: 375), width: step, height: step, anchoredBy: .centre)
}
canvas.drawShapesWithFill = false
canvas.borderColor = blue
canvas.defaultBorderWidth = 12
for step in stride(from: 390, through: 0, by: -48) {
    canvas.drawRectangle(at: Point(x: 175, y: 375), width: step, height: step, anchoredBy: .centre)
}
//End of shape 
canvas.defaultLineWidth = 1
canvas.drawAxes(withScale: true, by: 50)
