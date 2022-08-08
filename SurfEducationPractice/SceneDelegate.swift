//
//  SceneDelegate.swift
//  SurfEducationPractice
//
//  Created by Alexey Yarov on 02.08.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
//        let mainVC = UINavigationController (rootViewController: MainVC())
//        let favoritesNC = UINavigationController(rootViewController: FavoritesListVC())
//        let profileNC = UINavigationController(rootViewController: ProfileVC())
        
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = createTabBar()
        window?.makeKeyAndVisible()
    }
    
    
    
    func createMainNC() -> UINavigationController {
        let mainVC = MainVC()
        mainVC.title = "Main"
        mainVC.tabBarItem = UITabBarItem.init(title: "Main", image: UIImage(named: "mainTab"), tag: 0)
        return UINavigationController(rootViewController: mainVC)
        
    }
    
    func createFavoritesNC() -> UINavigationController{
        let favoritesListVC = FavoritesListVC()
        favoritesListVC.title = "Favorites"
        favoritesListVC.tabBarItem = UITabBarItem.init(title: "Favorites", image: UIImage(named: "favoriteTab"), tag: 1)
        
        return UINavigationController(rootViewController: favoritesListVC)
        
    }
    
    func createProfileNC() -> UINavigationController{
        let profileVC = ProfileVC()
        profileVC.title = "Profile"
        profileVC.tabBarItem = UITabBarItem.init(title: "Profile", image: UIImage(named: "profileTab"), tag: 2)
        
        return UINavigationController(rootViewController: profileVC)
        
    }
    

    func createTabBar() -> UITabBarController {
        let tabbar = UITabBarController()
        UITabBar.appearance().tintColor = .systemGray5
        tabbar.viewControllers = [createMainNC(), createFavoritesNC(), createProfileNC()]
        
        return tabbar
    }
    

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.

        // Save changes in the application's managed object context when the application transitions to the background.
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }


}

