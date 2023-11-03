//
//  SwiftUIView.swift
//  hw4
//
//  Created by Andy Huang on 3/3/23.
//

import SwiftUI

/* View that is presented when the player reaches the maze exit. */
struct MazeExitView: View {
    @Binding var navPath: NavigationPath
    @Binding var currentPath: [String]
    @Binding var solutionPath: [String]
    @Binding var solutionPathString: String
    @Binding var currentPathString: String
    
    var body: some View {
        Text("Woohoo you made it out alive!")
        
        Button("Play again") {
            // Setup a new game.
            // TODO: Reset the current path and current path string to empty.
            
            // TODO: Generate a new solution path and create the corresponding string for it.
            
            // Remove all views on navigation stack. Return to root view.
            navPath = .init()
        }
        .padding()
    }
}

struct MazeExitView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
