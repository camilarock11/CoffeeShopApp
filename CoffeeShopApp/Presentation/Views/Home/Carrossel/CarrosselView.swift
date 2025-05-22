import SwiftUI

struct CarrosselView: View {
    // Categorias de exemplo
    let categorias: [(nome: String, icone: String)] = [
        ("Espresso", "cup.and.saucer.fill"),
        ("Cappuccino", "mug.fill"),
        ("Latte", "takeoutbag.and.cup.and.straw.fill"),
        ("Mocha", "leaf.fill"),
        ("Americano", "drop.fill")
    ]

    // Imagens de exemplo para cada categoria
    let cafesPorCategoria: [String: [String]] = [
        "Espresso": ["Espresso1", "Espresso2", "Espresso3"],
        "Cappuccino": ["Cappuccino1", "Cappuccino2"],
        "Latte": ["Latte1", "Latte2"],
        "Mocha": ["Mocha1", "Mocha2"],
        "Americano": ["Americano1", "Americano2"]
    ]

    @State private var categoriaSelecionada = "Espresso"

    var body: some View {
        // Carrossel de categorias
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(categorias, id: \.nome) { categoria in
                    Button(action: {
                        categoriaSelecionada = categoria.nome
                    }) {
                        HStack {
                            Image(systemName: categoria.icone)
                            Text(categoria.nome)
                        }
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .background(categoriaSelecionada == categoria.nome ? Color.brown : Color(.systemGray5))
                        .foregroundColor(categoriaSelecionada == categoria.nome ? .white : .primary)
                        .cornerRadius(20)
                    }
                }
            }
            .padding(.horizontal)
        }
        
        // Carrossel de imagens de cafés
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(cafesPorCategoria[categoriaSelecionada] ?? [], id: \.self) { cafe in
                    VStack(alignment: .leading, spacing: 8) {
                        Image(cafe)
                            .resizable()
                            .frame(width: 350, height: 350)
                            .padding(.top, 16)
                        
                        // Estrelas e nota
                        HStack(spacing: 4) {
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                            Text(String(format: " 4 . 3"))
                                .font(.title2)
                                .foregroundColor(.secondary)
                        }
                        .padding(.top, 10)
                        
                        // Volume
                        Text("Volume 160ml")
                            .font(.title2)
                            .foregroundColor(.secondary)
                        
                        HStack {
                            Text("R$ 7.40")
                                .font(.title2)
                                .foregroundColor(.brown)
                            
                            Spacer()
                            
                            Button(action: {
                                // Adicionar a lógica para adicionar ao pagamento
                            }) {
                                Image(systemName: "plus.circle.fill")
                                    .foregroundColor(.brown)
                                    .font(.title2)
                            }
                        }
                        .padding(.bottom, 24)

                        NavigationLink("Details", destination:
                                        CustomizeOrderView(item: MenuItem(name: "Cappuccino", description: "Cappuccino1", price: 7.4, image: "Cappuccino1")))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.brown)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .foregroundColor(.brown)
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    CarrosselView()
}
