//
//  StopwatchViewController.swift
//  SystemClock
//
//  Created by Alexey Dubovik on 12.04.24.
//

import UIKit
import SnapKit

class StopwatchViewController: UIViewController {

    let label: UILabel = {
        let label = UILabel()
        label.text = "Stopwatch"
        label.textColor = .orange
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }

}
