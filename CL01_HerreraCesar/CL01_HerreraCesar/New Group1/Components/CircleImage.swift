import SwiftUI

struct CircleImage: View {
    let image: String
    let width: CGFloat
    let height: CGFloat
    var body: some View {
        Image(image) // this is to use an image from the ASSETS folder
            .resizable() // this modifier let us change the size of an image
            .scaledToFill() // this fills all the space the image is within and mantains the aspect ratio
            .frame(width: width, height: height) // we set a frame with those values
            .clipShape(Circle()) // this changes the shape to a circle
    }
}
