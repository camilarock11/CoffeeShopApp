import Foundation

class MenuRepository {
    func fetchMenuItems() -> [MenuItem] {
        return [
            MenuItem(name: "Latte", description: "Creamy coffee with milk", price: 3.49, image: "coffee"),
            MenuItem(name: "Espresso", description: "Strong and bold", price: 2.99, image: "coffee")
        ]
    }
}
