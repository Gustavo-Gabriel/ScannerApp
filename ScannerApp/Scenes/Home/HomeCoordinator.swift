import UIKit

protocol HomeCoordinatorDelegate: AnyObject { }

class HomeCoordinator: Coordinator {
    weak var delegate: HomeCoordinatorDelegate?
    var currentViewController: UIViewController?
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start(with naviagtionType: NavigationType = .push) {
        let controller = HomeViewController()
        show(controller, with: naviagtionType)
    }

    private func createHomeViewController() -> HomeViewController {
        let viewController = HomeViewController()
        currentViewController = viewController
        return viewController
    }
}
