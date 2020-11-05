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
class Spiral: NSObject, Sketchable {
    

    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    

    // Keep track of the prior point
    var lastPoint: Point
    

    // This function runs once
    override init() {
        

        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
                

        // Set the starting position in the middle of the canvas
        lastPoint = Point(x: 0, y: 0)
                

    }
    

    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        

        // What frame are we on?
//        print(canvas.frameCount)
        
        canvas.defaultLineWidth = 5
        
        // Set the origin to be the middle of the canvas
        canvas.translate(to: Point(x: canvas.width / 2, y: canvas.height / 2))
        

        // Start drawing after the first frame
        if canvas.frameCount > 0 {

            // Set the radius
            let radius = CGFloat(canvas.frameCount) / 0.2

            // Set the angle equal to the frameCount
            let angle = CGFloat(canvas.frameCount + 90)

            // Determine the next x position
            let nextX = cos(angle.asRadians()) * radius

            // Determine the next y position
            let nextY = sin(angle.asRadians()) * radius
            

            // Set the next point
            let nextPoint = Point(x: nextX, y: nextY)
//            print(nextPoint)
            

            // Draw a line from the last point to the next point
            canvas.drawLine(from: lastPoint, to: nextPoint)
            

            // Set the "new" last point, now that the line is drawn
            lastPoint = nextPoint

        }
        


        

    }
    

}
