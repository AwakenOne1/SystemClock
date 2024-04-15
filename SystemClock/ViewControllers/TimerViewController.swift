//
//  TimerViewController.swift
//  SystemClock
//
//  Created by Alexey Dubovik on 12.04.24.
//

import UIKit
import SnapKit

class TimerViewController: UIViewController {
    
    let label = {
        let label = UILabel()
        label.text = "Timer"
        label.textColor = .orange
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let navigationBar = UINavigationBar()
        navigationBar.isTranslucent = false
        navigationBar.tintColor = .orange
        navigationBar.prefersLargeTitles = true
        let item = UINavigationItem()
        item.title = "Timers"
        item.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editItem))
        navigationBar.items = [item]
        view.addSubview(navigationBar)
        navigationBar.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
        view.backgroundColor = .black
        view.addSubview(label)
        
        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
            
    @objc func editItem() {
        print("edited")
    }
}
