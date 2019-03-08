import UIKit

class ViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let todayViewController = UIViewController()
//        todayViewController.view.backgroundColor = .red
//        todayViewController.navigationItem.title = "Today"
//        let todayNavController = UINavigationController(rootViewController: todayViewController)
//        todayNavController.tabBarItem.title = "Today"
//        todayNavController.tabBarItem.image = UIImage(named: "today")
//        todayNavController.navigationBar.prefersLargeTitles = true
        
        let todayNavController = makeNavController(viewController: UIViewController(), title: "Today", image: "today")
        
        let appsNavController = makeNavController(viewController: UIViewController(), title: "Apps", image: "apps")
        
        let searchNavController = makeNavController(viewController: UIViewController(), title: "Search", image: "search")
        
        viewControllers = [todayNavController, appsNavController, searchNavController]
    }
    
    private func makeNavController(viewController: UIViewController, title: String, image: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: image)
        navController.navigationBar.prefersLargeTitles = true
        viewController.view.backgroundColor = .white
        viewController.navigationItem.title = title
        return navController
    }
}
