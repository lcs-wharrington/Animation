import Foundation
import CanvasGraphics

class Sketch: NSObject {
    
    // NOTE: This class must contain an object named 'currentDrawing'.
    //       The object must be an instance of a type that conforms to
    //       the Sketchable protocol.
    //
    //       Therefore, the line immediately below, or one like it, must always be present.
//    var currentDrawing = BasicSketch()

    // To try out other included sketches:
    // 1. Comment out the code on line 11.
    // 2. Uncomment one of the lines below.
//    var currentDrawing = TurtleSketch()
//    var currentDrawing = AudioInputSketch()
//    var currentDrawing = StaticSketch()
//    var currentDrawing = MovingSquare()
//    var currentDrawing = FiveCircles()
//    var currentDrawing = FourCorners()
//    var currentDrawing = BouncingCircle()
//    var currentDrawing = FreePage()
//        var currentDrawing = Spiral()
    var currentDrawing = IndividualSprial()
    var currentDrawing = Spiral()

}
