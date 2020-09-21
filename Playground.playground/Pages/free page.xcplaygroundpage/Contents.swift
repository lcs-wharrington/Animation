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

canvas.defaultLineWidth = 5
canvas.drawShapesWithFill = false
canvas.drawLine(from: Point(x: 100, y: 100), to: Point(x: 400, y: 400))
canvas.drawLine(from: Point(x: 400, y: 100), to: Point(x: 100, y: 400))
canvas.drawLine(from: Point(x: 250, y: 450), to: Point(x: 250, y: 50))
canvas.drawLine(from: Point(x: 50, y: 250), to: Point(x: 450, y: 250))
canvas.drawEllipse(at: Point(x: 250, y: 250), width: 400, height: 400, borderWidth: 30)
canvas.drawEllipse(at: Point(x: 250, y: 250), width: 10, height: 10, borderWidth: 10)
canvas.drawLine(from: Point(x: 500, y: 500), to: Point(x: 0, y: 500))
