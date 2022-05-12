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
    
    var indicator: NVActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        view.backgroundColor = UIColor(hexCode: "0xff7f50")
        view.backgroundColor = Colors.background.color
        testLabel()
        testMessage()
        testIndicator()
        indicator?.startAnimating()
        
        print(ViewController.className)
    }
    func testMessage() {
        let view = MessageView.viewFromNib(layout: .cardView)
        view.configureTheme(.success)
        view.configureContent(title: "Hello",
                              body: "This is Test Message",
                              iconImage: nil,
                              iconText: nil,
                              buttonImage: .checkmark,
                              buttonTitle: "Ok") { _ in
            // print("Msg Button Tapped")
            SwiftMessages.hide()
        }
        
        var config = SwiftMessages.Config()
        config.duration = .forever
        SwiftMessages.show(config: config, view: view)
    }
    func testLabel() {
        // label.font = UIFont(font: Fonts._29LTAzer.bold, size: 50)
        // label.setCorners(with: 30)
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
        indicator = NVActivityIndicatorView(frame: CGRect(x: view.center.x - 100,
                                                          y: view.center.y - 100,
                                                          width: 200,
                                                          height: 200),
                                            type: .ballClipRotate,
                                            color: .black,
                                            padding: 0)
        view.addSubview(indicator)
    }
}
