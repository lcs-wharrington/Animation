
//Canvas Sizeing
let preferredWidth = 1000
let preferredHeight = 1000


import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

//Initialize variables
var leftSideAlpha = 0
var rightSideAlpha = 100

//The Drawing

canvas.defaultLineWidth = 2

for y in stride(from: 950, through: 500, by: -150)

{
    
    canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 0, alpha: leftSideAlpha)
    
    var vertices1: [Point] = [ ] // empty list of vertices
    
    vertices1.append(Point (x: 300, y: y)) // start
    vertices1.append(Point (x: 500, y: y - 50))
    vertices1.append(Point (x: 500, y: y - 150 )) // end
    
    canvas.drawCustomShape(with: vertices1)
    
    
    canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 0, alpha: rightSideAlpha)
    
    var vertices2: [Point] = [] // empty list of vertice
    
    vertices2.append(Point (x: 700, y: y)) // start
    vertices2.append(Point (x: 500, y: y - 50))
    vertices2.append(Point (x: 500, y: y - 150)) // end
    
    canvas.drawCustomShape(with: vertices2)
    //Subtracting a third from Var
    //Loops 3 three times over causing inverted shading
    leftSideAlpha = leftSideAlpha + 33
    rightSideAlpha = rightSideAlpha - 33
}
