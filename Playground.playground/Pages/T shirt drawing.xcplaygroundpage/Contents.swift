//: [Previous](@previous) / [Next](@next)
//: # Blank canvas to copy
//:
//: ## To duplicate this page
//:
//: Place your cursor on line 19 of this page, press `Command-A` to select all text, and then `Command-C` to copy.
//:
//: Two-finger tap on the playground, then choose **New Playground Page**:
//:
//: ![new-playground](new-playground.png "New Playground")
//:
//: Move to the new page and press `Command-A` to select all text there, then `Command-V` to paste.
//:
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 1000
let preferredHeight = 1000
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
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


/*:
 ## Show the Assistant Editor
 Don't see any results?
 
 Remember to show the Assistant Editor (1), and then switch to Live View (2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
