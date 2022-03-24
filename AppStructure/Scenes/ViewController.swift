//
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
        view.backgroundColor = UIColor(hexCode: "0xff7f50")
        testLabel()
        testIndicator()
        indicator?.startAnimating()
        setToast(message: "hello", messageFont: .systemFont(ofSize: 20))
        print(ViewController.getName)
    }
    
    func testLabel() {
        // label.text = NSLocalizedString(Localization.title, comment: "")
        label.text = Localization.title.localized
        label.font = UIFont(font: Fonts._29LTAzer.bold, size: 20)
        // label.setCorners(with: 30)
         label.setCorners(with: 30, corners: .layerMinXMinYCorner)
        // label.setRounded()
        // label.setCorners()
        label.setShadow()
        label.setBorders()
        label.setShake()
    }
    
    func testIndicator() {
        indicator = NVActivityIndicatorView(frame: view.frame, type: .ballClipRotate, color: .black, padding: 20)
        view.addSubview(indicator)
    }
}
