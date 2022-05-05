//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let t = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */


// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)
let scale = 20

func drawDiamond(){
    t.forward(steps: 2 * scale + 16)
    t.left(by: 90)
    t.forward(steps: 2 * scale + 16)
    t.left(by: 90)
    t.forward(steps: 2 * scale + 16)
    t.left(by: 90)
    t.forward(steps: 2 * scale + 16)
    t.left(by: 90)
    
}

func drawSquare(){
    t.forward(steps: 4 * scale)
    t.left(by: 90)
    t.forward(steps: 4 * scale)
    t.left(by: 90)
    t.forward(steps: 4 * scale)
    t.left(by: 90)
    t.forward(steps: 4 * scale)
    t.left(by: 90)
    
}

func positionForSquares(){
    //Get to start of row of squares
    t.penUp()
    t.left(by: 135)
    t.forward(steps: 46 * scale)
    t.right(by: 90)
    t.forward(steps: 4 * scale)
    t.right(by: 90)
    t.forward(steps: 2 * scale)
    t.penDown()
    
}

func drawRowOfSquares(){
    for _ in 1...8{
        //Draw Square
        drawSquare()

        //Get to Next Position
        t.penUp()
        t.forward(steps: 4 * scale)
        t.penDown()

        
    }
    
}

func positionForDiamonds(){
    t.penUp()
    t.left(by: 180)
    t.forward(steps: 28 * scale)
    t.right(by: 90)
    t.forward(steps: 4 * scale)
    t.right(by: 45)
    t.penDown()
    
}

func drawRowOfDiamonds(){
   
    for _ in 1...10{
        //Draw Diamond
        drawDiamond()

        //Move to Next Position

        t.penUp()
        t.right(by: 45)
        t.forward(steps: 4 * scale)
        t.left(by: 45)
        t.penDown()
        
    }
    
}

//Get Turtle in Position for First Row
t.penUp()
t.forward(steps: 2 * scale)
t.penDown()
t.left(by: 45)

//Row of Diamonds

drawRowOfDiamonds()

//Position for Squares

positionForSquares()

//Row of Squares

drawRowOfSquares()

//Position for Diamonds

positionForDiamonds()

//Row of Diamonds

drawRowOfDiamonds()

//Positon for 4 Row

positionForSquares()

//Row of Squares

drawRowOfSquares()

//Position for Row 5

positionForDiamonds()

//Row of Diamonds

drawRowOfDiamonds()

//Position for Row 6

positionForSquares()

//Row of Squares

drawRowOfSquares()

//Position for Row 7

positionForDiamonds()

//Row of Diamonds

drawRowOfDiamonds()

//Position for Row 8

positionForSquares()

//Row of Squares

drawRowOfSquares()

//Position for Row 9

positionForDiamonds()

//Row of Diamonds

drawRowOfDiamonds()

//Position for Row 10

positionForSquares()

//Row of Squares

drawRowOfSquares()

//Position for Row 11

positionForDiamonds()




/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
