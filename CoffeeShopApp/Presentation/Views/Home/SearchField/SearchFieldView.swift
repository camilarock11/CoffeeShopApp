import SwiftUI

struct SearchFieldView: View {
    @State private var busca = ""

    var body: some View {
        VStack(spacing: 16) {
            // Campo de busca
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                TextField("Buscar cafés...", text: $busca)
                    .textFieldStyle(PlainTextFieldStyle())
            }
            .padding(10)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal)
        }
        .padding(.top, 12)
        .background(Color(.systemBackground).ignoresSafeArea())
        .navigationBarHidden(true)
    }
}

#Preview {
    SearchFieldView()
}
