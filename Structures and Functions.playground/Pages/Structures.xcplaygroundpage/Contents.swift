/*:
 [Previous](@previous)
 
 The following statement is required to make the playground run.
 
 
 Please do not remove.
 */
import Foundation
/*:
 ## Structures
 A structure is a way of defining a custom data type.
 
 Say we want to represent a point on a Cartesian plane.
 
 We could define this using two separate variables:
 
    var x : Double = 3.0
    var y : Double = 4.0
 
 The downside is that both of these pieces of information define the point, but they are declared separately. Keeping track of information this way can lead to bugs and code that is not very readable.
 
 We can use a **structure** to connect the *ordinate* (x-value) and the *abscissa* (y-value) to together define a point:
 
 ![example](example2.png "example")
 
 Try typing the code above to define the structure.
 
*/

// Define the structure here
struct Point {
    var x : Double = 0.0
    var y : Double = 0.0
}




/*:
 
 Now, use the newly defined structure to create points at (0, 0) and (3, 4):

 ![example](example3.png "example")
 
 What value is a point initialized with by default?
 
 */

// Create the points here
var start = Point()
var end = Point(x: 3.0, y: 4.0)

/*:
 
 You can query a structure to find the value of an individual variable stored within the structure.
 
 Try typing the following:
 
    start.x
    start.y
    end.x
    end.y
 
 What does the playground tell you?
 
*/

// Query the points here to find the x and y values separately
start.x
start.y
end.x
end.y

/*:
 ### Refactoring code
 
 The *distance* function defined earlier was not as clean as it could be.
 
 Refactor the function so the header is defined as follows:
 
 ![example](example5.png "example")
 
 You can copy and paste the function from the earlier page and then make modifications so that the function body uses the points.
 
 The function would now be invoked as follows:
 
 ![example](example6.png "example")
 
 Test your new function to verify that it works correctly and returns accurate values.
 
 Now consider the new code: which version of the *distance* function is cleaner? More readable?
 
 */

// Re-define the distance function here
func distance(from: Point, to: Point) -> Double {
    return sqrt(pow(start.x - end.x, 2) + pow(start.y - end.y, 2))
}

// Invoke the new function here
distance(from: start, to: end)

/*:
 [Next](@next)
 */


