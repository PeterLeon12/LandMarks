import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        ZStack {
            // Background blurred image
            image
                .resizable()
                .blur(radius: 5) // Apply a blur effect
                .ignoresSafeArea()
                .frame(width: 400, height: 400)
            
            // Foreground circular image
            image
                .resizable()
                .scaledToFill() // Fill the circle with the image while preserving the aspect ratio
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
                .frame(width: 250, height: 250) // Set the size of the circular image
        }
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}




