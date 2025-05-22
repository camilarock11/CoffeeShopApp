import Foundation

class FetchMenuUseCase {
    private let repository = MenuRepository()

    func execute() -> [MenuItem] {
        return repository.fetchMenuItems()
    }
}
