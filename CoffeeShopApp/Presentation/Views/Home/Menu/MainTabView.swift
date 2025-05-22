import SwiftUI

struct MainTabView: View {
    @State private var tabSelecionada = 0

    var body: some View {
        HStack {
            Spacer()
            VStack {
                Image(systemName: "menucard")
                Text("Menu").font(.caption)
            }
            .foregroundColor(tabSelecionada == 0 ? .brown : .gray)
            .onTapGesture { tabSelecionada = 0 }
            Spacer()
            VStack {
                Image(systemName: "heart.fill")
                Text("Favoritos").font(.caption)
            }
            .foregroundColor(tabSelecionada == 1 ? .brown : .gray)
            .onTapGesture { tabSelecionada = 1 }
            Spacer()

            VStack {
                Image(systemName: "creditcard.fill")
                Text("Pagamentos").font(.caption)
            }
            .foregroundColor(tabSelecionada == 2 ? .brown : .gray)
            .onTapGesture { tabSelecionada = 2 }
            Spacer()
            VStack {
                Image(systemName: "person.crop.circle")
                Text("Usuário").font(.caption)
            }
            .foregroundColor(tabSelecionada == 3 ? .brown : .gray)
            .onTapGesture { tabSelecionada = 3 }
            Spacer()
        }
        .padding(.vertical, 8)
        .background(Color(.systemGray6))
        .cornerRadius(20)
        .padding(.horizontal)
    }
}

#Preview {
    MainTabView()
}
