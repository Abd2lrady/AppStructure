//  ViewController.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady 
//

import UIKit
import NVActivityIndicatorView

class ViewController: UIViewController {
    @IBOutlet private weak var label: UILabel!
    
    var indicator: NVActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        view.backgroundColor = UIColor(hexCode: "0xff7f50")
        view.backgroundColor = Colors.background.color
        testLabel()
        testIndicator()
        indicator?.startAnimating()
        
        print(ViewController.className)
    }
    
    func testLabel() {
        label.font = UIFont(font: Fonts._29LTAzer.bold, size: 20)
        // label.setCorners(with: 30)
         label.setCorners(with: 30, corners: .layerMinXMinYCorner)
        // label.setRounded()
        // label.setCorners()
        label.setShadow(radius: 5,
                        color: .black,
                        opacity: 0.6,
                        offset: CGSize(width: 5, height: 5))
        label.setBorders(with: 5,
                         color: .red)
    }
    
    func testIndicator() {
        indicator = NVActivityIndicatorView(frame: view.frame, type: .ballClipRotate, color: .black, padding: 20)
        view.addSubview(indicator)
    }
}
