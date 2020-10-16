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
    var y = 250
    var x = 250
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
                
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        //change vertical position
        y -= 1
        x += 1
        
        //draw square in middle of canvas
        canvas.drawRectangle(at: Point(x: x, y: y), width: 50, height: 50, anchoredBy: .centre)
        canvas.drawRectangle(at: Point(x: y, y: x), width: 50, height: 50, anchoredBy: .centre)
        canvas.drawRectangle(at: Point(x: x, y: x), width: 50, height: 50, anchoredBy: .centre)
        canvas.drawRectangle(at: Point(x: y, y: y), width: 50, height: 50, anchoredBy: .centre)
    }
    
}

