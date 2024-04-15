//
//  ViewController.swift
//  SystemClock
//
//  Created by Alexey Dubovik on 11.04.24.
//


import UIKit
import SnapKit

class WorldClockViewController: UIViewController {
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "World Clock"
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
        item.title = "World Clock"
        item.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editItem))
        item.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"),style: .plain, target: self, action: #selector(addItem))
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
    
            
    @objc func addItem() {
        print("add")
    }
    @objc func editItem() {
        print("edited")
    }
}


