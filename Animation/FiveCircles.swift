//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class FiveCircles: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Position of circle
    var offset: Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        offset = 250
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change position
            offset -= 1
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(at: Point(x: 500 - offset, y: 450), width: 50, height: 50)
        canvas.drawEllipse(at: Point(x: offset, y: 350), width: 50, height: 50)
        canvas.drawEllipse(at: Point(x: 500 - offset, y: 250), width: 50, height: 50)
        canvas.drawEllipse(at: Point(x: offset, y: 150), width: 50, height: 50)
        canvas.drawEllipse(at: Point(x: 500 - offset, y: 50), width: 50, height: 50)
    }
    
}

