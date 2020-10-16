//
//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class MovingSquare: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    //vertical position
    var y = 500
    var x = 500
    var size = Int.random(in: 50...100)
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 1000, height: 1000)
                
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        //change vertical position
        let y = Int.random(in:400...600)
        let x = Int.random(in:400...600)
        let colour = Int.random(in: 0...360)
        canvas.fillColor = Color(hue: colour, saturation: 100, brightness: 100, alpha: 25)
        
        // change size of square
        size = Int.random(in: 50...100)
        
        
        //draw square in middle of canvas
        canvas.drawRectangle(at: Point(x: x, y: y), width: size, height: size)
    }
    
}

