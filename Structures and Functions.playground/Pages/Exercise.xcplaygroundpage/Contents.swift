/*:
 [Previous](@previous)
 
 The following statement is required to make the playground run.
 
 
 Please do not remove.
 */
import Foundation
/*:
 ## Exercise
 
 Write a function that determines the shortest distance from a point on a Cartesian plane to a line on a Cartesian plane.
 
 You can re-use the **Point** structure and the *distance* function.
 
 You should declare a **Line** structure.
 
 Recall that the shortest distance from a point to a line is the perpendicular distance.

*/

// Begin here... once you teach the computer to do this, you will never need to do it by hand again! :)
// using the cabin example
// slope of road is -1/2x + 9.5

// defining a point stucture
struct Point {
    var x = 0.0
    var y = 0.0
}
// defining a slope stucture
struct Slope {
    var rise : Double = 1.0
    var run : Double = 1.0
}

// defining a line structure
struct Line {
    var slope : Slope = Slope(rise: 1.0, run: 1.0)
    var verticalIntercept : Double = 0.0
}









/// finds the shortest distance from a point to a line
///
/// - Parameters:
///   - from: the given point
///   - to: a line
/// - Returns: the shortest distance
func shortestDistance(fromProvided: Point, toProvided: Line) -> Double {
    
   
    
    
    // Finding the perpendicular line
    func slopeOfPerpendicularLine(givenLine: Line) -> Slope {
        return Slope(rise: givenLine.slope.run, run: givenLine.slope.rise * -1)
    }
    
    
    // vertical intercept of the new road is -10.5
    // finding the point of interception of the two lines (where line1 = line2)
    // intercept = (8, 5.5)
    func findThePointOfInterceptionOfTwoLines(line1: Line, line2: Line) -> Point {
        let totalX = (line1.slope.rise / line1.slope.run) - (line2.slope.rise / line2.slope.run)
        
        let xOfInt = (line2.verticalIntercept - line1.verticalIntercept) / totalX
        
        let yOFInt = (line1.slope.rise / line1.slope.run) * xOfInt + line1.verticalIntercept
        
        return Point(x: xOfInt, y: yOFInt)
    }

    // need to turn this in a function
    /// finds the distance between two points
    ///
    /// - Parameters:
    ///   - from: the first point
    ///   - to: the second point
    /// - Returns: the distance
    func distance(from: Point, to: Point) -> Double {
        return sqrt(pow(from.x - to.x, 2) + pow(from.y - to.y, 2))
    }
    
    
    let slopeOfNewRoad = slopeOfPerpendicularLine(givenLine: lineOfExistingRoad)
    let lineOfNewRoad : Line = Line(slope: slopeOfNewRoad, verticalIntercept: -10.5)
    
    // turn this into function
    let pointOfinterception = findThePointOfInterceptionOfTwoLines(line1: toProvided, line2: lineOfNewRoad)
    
    let shortestDistanceToSite = distance(from: fromProvided, to: pointOfinterception)
    
    return shortestDistanceToSite
}





// note to self add a vertical int finder function

// point of cabin site
let cabinSite = Point(x: 6, y: 1.5)

// putting in our values
let existingRoadSlope = Slope(rise: -1, run: 2)
let lineOfExistingRoad = Line(slope: existingRoadSlope, verticalIntercept : 9.5)


// fix it up

