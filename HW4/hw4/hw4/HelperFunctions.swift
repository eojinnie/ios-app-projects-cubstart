//
//  helper_funcs.swift
//  hw4
//
//  Created by Andy Huang on 3/2/23.
//

import Foundation

/*
     Returns an array of random directions as strings.
     The "size" parameter passed in will determine the size of the returned array
     
     Ex: generate_turns(5) -> ["Up", "Down", "Down", "Left", "Up"]
 */
func generate_turns(size: Int) -> [String] {
    var random_directions: [String] = []
    
    for _ in 1...size {
        // Random number 1-4
        let rand_int = Int.random(in: 1..<5)
        
        if (rand_int == 1) {
            random_directions.append("Up")
        } else if (rand_int == 2) {
            random_directions.append("Down")
        } else if (rand_int == 3) {
            random_directions.append("Left")
        } else {
            random_directions.append("Right")
        }
    }
    
    return random_directions
}
