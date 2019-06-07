//
//  ContainerViewController.swift
//  PartyMap swift 5
//
//  Created by Biscuit on 5/9/19.
//  Copyright © 2019 the Biscuits. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController, MapViewControllerDelegate {
    
  
    // to check
    var EventInfoViewController: UIViewController!
    
    func configureBottomMenu() {
        if EventInfoViewController.self == nil {
        var bottomMenu = UIStoryboard.EventInfoViewController()
            
            
        view.insertSubview(bottomMenu!.view, at: 1)
        addChild(bottomMenu!)
            showMenuViewController1(shouldMove: true)
        }
    }
    
    func animateBottomMenu() {
        
        if let window = UIApplication.shared.keyWindow{
        
        let heigh: CGFloat = 200
        let y = window.frame.height - heigh
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
            self.EventInfoViewController.view.frame = CGRect(x: 0, y: y, width: window.frame.width, height: heigh)
            }, completion: nil)
        }
    }
    
    func showMenuViewController1(shouldMove: Bool) {
        if shouldMove {
            // показываем menu
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseInOut,
                           animations: {
                            self.controller.view.frame.origin.y = 35 - self.controller.view.frame.width
            }) { (finished) in }
        } else {
            // убираем menu
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseInOut,
                           animations: {
                            self.EventInfoViewController.view.frame.origin.y = 0
            }) { (finished) in
                
            }
        }
    }
    
    
    
    // here we launch mapView and put side menu(TableView) at 0 and make animation via delegate method of mapViewController
    
    var controller: UIViewController!
    var mapViewController: MapViewController!
    var SideMenuTableViewController: UIViewController!
    var isOpen = false
    
    func configureMapViewController() {
        mapViewController = UIStoryboard.MapViewController()
        mapViewController.delegate = self
        controller = mapViewController
        view.addSubview(controller.view)
        addChild(controller)
    }
    
    func configureSideMenuController() {
        if  SideMenuTableViewController.self == nil{
            let sideMenu = UIStoryboard.SideMenuController()
            view.insertSubview(sideMenu!.view, at: 0)
            addChild(sideMenu!)
        }
    }
    
    func showMenuViewController(shouldMove: Bool) {
        if shouldMove {
            // показываем menu
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseInOut,
                           animations: {
                            self.controller.view.frame.origin.x = 35 - self.controller.view.frame.width
            }) { (finished) in }
        } else {
            // убираем menu
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseInOut,
                           animations: {
                            self.controller.view.frame.origin.x = 0
            }) { (finished) in
                
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configureMapViewController()
        // Do any additional setup after loading the view.
    }
    

    func toggleMenu() {
        configureSideMenuController()
        isOpen = !isOpen
        showMenuViewController(shouldMove: isOpen)
    }
    
    func toggleEventInfo() {
        configureBottomMenu()
        isOpen = !isOpen
     
    }
    
}
private extension UIStoryboard {
    
    static func mainStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "MainView", bundle: Bundle.main)
    }
    
    static func MapViewController() -> MapViewController? {
        return mainStoryboard().instantiateViewController(withIdentifier: "MapViewController") as? MapViewController
    }
    
    static func SideMenuController() -> SideMenuTableViewController? {
        return mainStoryboard().instantiateViewController(withIdentifier: "SideMenuTableViewController") as? SideMenuTableViewController

    }
    static func EventInfoViewController() -> EventInfoViewController? {
        return mainStoryboard().instantiateViewController(withIdentifier: "EventInfoViewController") as? EventInfoViewController
    }
   
}/*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


