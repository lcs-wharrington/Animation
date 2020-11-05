//Required Code
//Canvas Sizeing
let preferredWidth = 400
let preferredHeight = 600

import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight, quality: .Ultra)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
//Required Code end
//Free code start
canvas.drawShapesWithBorders = false
let yellow = Color(hue: 58, saturation: 100, brightness: 100, alpha: 100)
let blue = Color(hue: 224, saturation: 64, brightness: 60, alpha: 50)
let OffWhite = Color(hue: 81, saturation: 5, brightness: 88, alpha: 100)
let LimeGreen = Color(hue: 106, saturation: 64, brightness: 69, alpha: 100)
let Grey = Color(hue: 0, saturation: 0, brightness: 75, alpha: 100)
canvas.fillColor = LimeGreen
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)
canvas.textColor = Grey
canvas.drawText(message: "$136.00/Thursday", at: Point(x: 0, y: 585), size: 10, kerning: 1)
canvas.drawText(message: "American Airlines Arena", at: Point(x: 125, y: 585), size: 10, kerning: 1)
canvas.drawText(message: "Miami", at: Point(x: 125, y: 575), size: 10, kerning: 1)
canvas.drawText(message: "fifth studio album,", at: Point(x: 280, y: 585), size: 10, kerning: 1)
canvas.drawText(message: "KOD (2018)", at: Point(x: 280, y: 575), size: 10, kerning: 1)
canvas.drawText(message: "August 9, 2018", at: Point(x: 0, y: 575), size: 10, kerning: 1)
canvas.drawText(message: "J.Cole", at: Point(x: 0, y: 405), size: 60, kerning: 1)
for y in stride(from: 0, through: 300, by: 100){
    for x in stride(from: 0, through: 300, by: 100){
        
        canvas.fillColor = OffWhite
        //canvas.drawRectangle(at: Point(x: x + 50, y: y + 50), width: 75, height: 75, anchoredBy: .centre)
        canvas.fillColor = yellow
        canvas.drawEllipse(at: Point(x: x + 50, y: y + 50), width: 50, height: 50)
       
        canvas.fillColor = blue
        var vertices1: [Point] = [ ] // empty list of vertices
        
        vertices1.append(Point (x: x, y: y + 100))
        vertices1.append(Point (x: x + 100, y: y))
        vertices1.append(Point (x: x + 100, y: y + 100))
        
        canvas.drawCustomShape(with: vertices1)
        canvas.textColor = Color.black
        
    }
}
canvas.copyToClipboard()
