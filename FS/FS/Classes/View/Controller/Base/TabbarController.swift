//
//  TabbarController.swift
//  FS
//
//  Created by at-thinhuv on 11/30/17.
//  Copyright © 2017 thinhxavi. All rights reserved.
//

import Foundation
import UIKit

class TabbarController: UITabBarController {
    init() {
        super.init(nibName: nil, bundle: nil)
        setupUI()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        let homeController = HomeViewController()
        let homeNavigation = UINavigationController(rootViewController: homeController)
        let searchController = SearchViewController()
        let searchNavigation = UINavigationController(rootViewController: searchController)
        let favoriteController = FavoriteViewController()
        let favoriteNavigation = UINavigationController(rootViewController: favoriteController)
        let profileController = ProfileViewController()
        profileController.title = "Profile"
        let profileNavigation = UINavigationController(rootViewController: profileController)
        profileNavigation.tabBarItem = UITabBarItem(title: "Profile", image: #imageLiteral(resourceName: "ic_profile"), selectedImage: #imageLiteral(resourceName: "ic_profile"))
        viewControllers = [homeNavigation, searchNavigation, favoriteNavigation, profileNavigation]
    }
}
