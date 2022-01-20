import UIKit

class AppCoordinator {
    private(set) var parentViewController: ParentViewController
    var navigationController: UINavigationController = UINavigationController()
    weak var window: UIWindow?
    var currentCoordinator: Coordinator?

    init(window: UIWindow) {
        self.window = window
        self.parentViewController = ParentViewController(child: navigationController)
        window.rootViewController = parentViewController
        window.makeKeyAndVisible()
    }

    func start() {
        let coordinator = createHomeCoordinator()
        currentCoordinator = coordinator
        coordinator.start(with: .root)
    }

    private func createHomeCoordinator() -> HomeCoordinator {
        let coordinator = HomeCoordinator(navigationController: navigationController)
        return coordinator
    }
}
