import Foundation

struct MenuItem: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var price: Double
    var image: String
}
