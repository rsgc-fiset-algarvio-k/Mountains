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
for y in stride(from: 300, through: 0, by: -25) {
    for x in stride(from: 0, through: 300, by: 25) {
        canvas.drawEllipse(centreX: x, centreY: y, width: 1, height: 1)
    }
}

// Make the Mountains
canvas.drawLine(fromX: -63, fromY: 188, toX: 38, toY: 88, lineWidth: 36)
canvas.drawLine(fromX: -13, fromY: 188, toX: 88, toY: 88, lineWidth: 36)
canvas.drawLine(fromX: 63, fromY: 163, toX: 138, toY: 88, lineWidth: 36)
canvas.drawLine(fromX: 88, fromY: 188, toX: 188, toY: 88, lineWidth: 36)
canvas.drawLine(fromX: 163, fromY: 163, toX: 238, toY: 88, lineWidth: 36)
canvas.drawLine(fromX: 188, fromY: 188, toX: 288, toY: 88, lineWidth: 36)
canvas.drawLine(fromX: 263, fromY: 163, toX: 338, toY: 88, lineWidth: 36)
canvas.drawLine(fromX: 288, fromY: 188, toX: 388, toY: 88, lineWidth: 36)
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
