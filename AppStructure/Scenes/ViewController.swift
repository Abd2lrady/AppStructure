//  ViewController.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady 
//

import UIKit
import NVActivityIndicatorView
import SwiftMessages

class ViewController: BaseViewController {
    @IBOutlet private weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .background
        // testLabel()
        testMessage()
        testIndicator()
        print(ViewController.className)
        testAPI()
    }
    
    func testMessage() {
//        showMessage(title: "Hello",
//                    body: "welcome",
//                    msgType: .warning) {
//            self.hideMesssage()
//            self.hideIndicator()
//        }
        showMessage(msgType: .error,
                    body: "There is Error")
        
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
        label.showLoadingIndicator(frame: label.frame)
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.label.hideLoadingIndicator()
        }
    }
    
    func testBartyCrouchTranslation() {
        
        // uncomment the following then build
//        let _ = BartyCrouch.translate(key: "new-main.title-label",
//                                      translations: [.english : "Hello",
//                                                     .arabic : "مرحبا"])
        // the generated line
        _ = L10n.NewMain.titleLabel

    }
}

func testAPI() {
    guard let url = URL(string: "https://mocki.io/v1/3abd7722-a991-4d9e-8000-fb86e613a249")
    else { return }
    URLSession.shared.dataTask(with: url) { data, _, error in
        if let error = error {
            print("-------")
            print(error.localizedDescription)
        }
         if let data = data {
            do {
                let users = try JSONDecoder().decode([User].self, from: data)
                print(users)
            } catch {
                print("parsing error")
            }
        }
    }.resume()
}
