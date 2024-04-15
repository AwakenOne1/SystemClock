//
//  ClockTabBarController.swift
//  SystemClock
//
//  Created by Alexey Dubovik on 12.04.24.
//

import UIKit

class ClockTabBarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        setupViewControllers()
        self.tabBar.backgroundColor = .clear
        self.tabBar.tintColor = .orange
        self.tabBar.isTranslucent = false
    }
    
    func setupViewControllers() {
        
        let worldClockViewController = WorldClockViewController()
        let worldClockControllerTab = UITabBarItem(title: "World Clock", image: UIImage(systemName: "globe"), tag: 0)
        worldClockViewController.tabBarItem = worldClockControllerTab
        
        let alarmViewController = AlarmViewController()
        let alarmViewControllerTab = UITabBarItem(title: "Alarm", image: UIImage(systemName: "alarm.fill"), tag: 1)
        alarmViewController.tabBarItem = alarmViewControllerTab
        
        let stopWatchViewController = StopwatchViewController()
        let stopWatchControllerTab = UITabBarItem(title: "Stopwatch", image: UIImage(systemName: "stopwatch.fill"), tag: 2)
        stopWatchViewController.tabBarItem = stopWatchControllerTab
        
        let timerViewController = TimerViewController()
        let timerControllerTab = UITabBarItem(title: "Timer", image: UIImage(systemName: "timer"), tag: 3)
        timerViewController.tabBarItem = timerControllerTab
        
        self.viewControllers = [
            worldClockViewController, alarmViewController,stopWatchViewController,stopWatchViewController, timerViewController
        ]
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
           print("Trancition")
       }
}
