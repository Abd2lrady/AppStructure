//  ViewController.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady 
//

import UIKit
import NVActivityIndicatorView
import SwiftMessages

class ViewController: UIViewController {
    @IBOutlet private weak var label: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .background
        // testLabel()
        testMessage()
        testIndicator()
        print(ViewController.className)
    }
    func testMessage() {
        showMessage(title: "hello", body: "Test MSG") {
            SwiftMessages.hide()
            self.hideIndicator()
        }
    }
    func testLabel() {
        // label.font = UIFont(font: Fonts._29LTAzer.bold, size: 50)
        // label.setCorners(with: 30)
        label.textColor = .labelColor
        label.setCorners(with: 30, corners: .layerMinXMinYCorner)
        // label.setRounded()
        // label.setCorners()
        label.setShadow(radius: 5,
                        color: .black,
                        opacity: 0.6,
                        offset: CGSize(width: 5, height: 5))
        label.setBorders(with: 3,
                         color: .red)
    }
    
    func testIndicator() {
        showIndicator()
    }
}
