//
//  BaseViewController.swift
//  SideTownDemoProject
//
//  Created by fmss on 14.11.2022.
//

import UIKit
import SideTown

class BaseViewController: UIViewController {
    
    private var sideMenu: SideMenu!

    override func viewDidLoad() {
        super.viewDidLoad()

        let menuView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: UIScreen.main.bounds.height))
        
        menuView.backgroundColor = .purple
        
        let menuConfig: MenuConfig = .init(vc: self, customView: menuView)
        
        sideMenu = .init(menuConfig)
    }
    
    func openMenu() {
        sideMenu.openMenu()
    }
    
    func closeMenu() {
        sideMenu.closeMenu()
    }
    
    func toggleMenu() {
        sideMenu.toggleMenu()
    }

}
