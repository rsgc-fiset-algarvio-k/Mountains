//: # Your goal
//: ![goal](scenario-three.png "Your goal")
/*:
 ## Notes:
 * the image is exactly 300 pixels wide by 300 pixels high
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![assistanteditor](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 300, height: 300)

// Draw some lines
canvas.defaultLineWidth = 1

// Makes a grid of dots.
for y in stride(from: 300, through: 150, by: -25) {
    for x in stride(from: 0, through: 300, by: 25) {
        canvas.drawEllipse(centreX: x, centreY: y, width: 1, height: 1)
    }
}

// Make the Mountains
canvas.drawLine(fromX: 26, fromY: 175, toX: -76, toY: 75, lineWidth: 71)
canvas.drawLine(fromX: 126, fromY: 175, toX: 26, toY: 75, lineWidth: 71)
canvas.drawLine(fromX: 226, fromY: 175, toX: 126, toY: 75, lineWidth: 71)
canvas.drawLine(fromX: 326, fromY: 175, toX: 226, toY: 75, lineWidth: 71)
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 300, height: 150)
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
