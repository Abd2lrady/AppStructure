//
//  ViewController.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady 
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .green
        testLabel()
     
    }
    
    func testLabel() {
        let label = UILabel()
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     label.centerYAnchor.constraint(equalTo: view.centerYAnchor)])
        label.text = NSLocalizedString(Localization.title, comment: "")
        label.font = UIFont(font: Fonts._29LTAzer.bold, size: 20)
        
    }
}
