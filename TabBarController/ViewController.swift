import UIKit

class ViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let todayViewController = UIViewController()
        todayViewController.view.backgroundColor = .red
        todayViewController.navigationItem.title = "Today"
        let todayNavController = UINavigationController(rootViewController: todayViewController)
        todayNavController.tabBarItem.title = "Today"
        todayNavController.navigationBar.prefersLargeTitles = true
        
        let appsViewController = UIViewController()
        appsViewController.view.backgroundColor = .blue
        appsViewController.navigationItem.title = "Apps"
        let appsNavController = UINavigationController(rootViewController: appsViewController)
        appsNavController.tabBarItem.title = "Apps"
        appsNavController.navigationBar.prefersLargeTitles = true
        
        let searchViewController = UIViewController()
        searchViewController.view.backgroundColor = .green
        searchViewController.navigationItem.title = "Search"
        let searchNavController = UINavigationController(rootViewController: searchViewController)
        searchNavController.tabBarItem.title = "Search"
        searchNavController.navigationBar.prefersLargeTitles = true
        
        viewControllers = [todayNavController, appsNavController, searchNavController]
    }
}
