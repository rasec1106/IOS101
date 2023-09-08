//
//  FeedCell.swift
//  InstaCloneJue
//
//  Created by Suite on 7/09/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
            // Pic and name
            HStack {
                // Image(systemName: "") // this is to use an IOS system image
                Image("Batman") // this is to use an image from the ASSETS folder
                    .resizable() // this modifier let us change the size of an image
                    .scaledToFill() // this fills all the space the image is within and mantains the aspect ratio
                    .frame(width: 40, height: 40) // we set a frame with those values
                    .clipShape(Circle()) // this changes the shape to a circle
                Text("I am Batman")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Spacer() // this takes all the remain space
            }
            .padding(.leading, 8) // leading -> left ; trailing -> right
            
            // ImagePost
            Image("Batman")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .padding(.leading, 8)
            
        } // end of main VStack
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
