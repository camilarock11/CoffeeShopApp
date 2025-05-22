import Foundation

struct Cafe: Identifiable, Hashable {
    let id = UUID()
    let imagem: String
    let nota: Double
    let volume: Int
    let preco: Double
    let nome: String
}
