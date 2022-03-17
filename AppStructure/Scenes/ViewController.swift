//
//  ViewController.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady 
//

import UIKit
import NVActivityIndicatorView

class ViewController: UIViewController {
    var indicator: NVActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .green
        testLabel()
        testIndicator()
        indicator?.startAnimating()
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
    
    func testIndicator() {
        indicator = NVActivityIndicatorView(frame: view.frame, type: .ballClipRotate, color: .black, padding: 20)
        view.addSubview(indicator)
    }
}
