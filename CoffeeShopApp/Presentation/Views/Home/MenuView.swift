import SwiftUI

struct MenuView: View {
    @State private var busca = ""
    
    var body: some View {
        VStack(spacing: 16) {
            // Navbar
            HStack {
                Button(action: { MenuView() }) {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                        .foregroundColor(.primary)
                }

                Spacer()

                Text("Coffee Shop")
                    .font(.headline)
                    .fontWeight(.bold)
                Spacer()

                Button(action: { MenuView() }) {
                    Image(systemName: "bell.fill")
                        .font(.title2)
                        .foregroundColor(.primary)
                }
            }
            .padding(.horizontal)
            .padding(.top, 8)
            
            // Campo de busca
            SearchFieldView()

            // Carrossel
            CarrosselView()

            Spacer()
            
            // TabBar
            MainTabView()
        }
        .padding(.top, -12)
        .background(Color(.systemBackground).ignoresSafeArea())
        .navigationBarHidden(true)
    }
}

#Preview {
    MenuView()
}
