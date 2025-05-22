import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("coffee-cups")
                    .resizable()
                    .padding(.bottom, 40)
                    .colorInvert()

                Text("Coffee Shop")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 40)

                Text("More than a coffee... an experience")
                    .font(.headline)
                    .padding(.bottom, 40)

                NavigationLink(destination: LoginView()) {
                    Text("Login")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.brown)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
        }
    }
}

#Preview {
    HomeView()
}
