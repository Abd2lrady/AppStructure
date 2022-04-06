//
//  UIView+.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import UIKit

extension UIView {
    /**
        Creating corner radius for you view.
     
    - ex: view.setCorners(with: 5, corners [.layerMaxXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner])
     */
    func setCorners(with radius: CGFloat = 5,
                    corners: CACornerMask = [.layerMaxXMaxYCorner,
                                             .layerMaxXMinYCorner,
                                             .layerMinXMaxYCorner,
                                             .layerMinXMinYCorner]) {
        
        self.layer.cornerRadius = radius
        self.layer.maskedCorners = corners
        self.clipsToBounds = true
        
    }
    
    /**
        Creating Rounded view
     
    - ex: view.setRounded()
     */
    func setRounded() {
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
    
    /**
        Creating Borders for view.
     
      - ex: view.setBorders(with: 5, color:  .black)
     */
    func setBorders(with width: CGFloat = 5, color: UIColor = .black) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
    
    /**
        Creating Borders for view
     
     - ex: view.setShadow(radius: 5,color: .black, opacity: 0.5, offset: CGSize(width: 5, height: 5))
     */
    func setShadow(radius: CGFloat = 5,
                   color: UIColor = .black,
                   opacity: Float = 0.5,
                   offset: CGSize = CGSize(width: 5, height: 5)) {
        
        self.layer.shadowRadius = radius
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = offset
    }
    
    /**
        Creating view shaking effect
     
     - ex: view.setShake(duration: 0.5, repeatCount: 5, autoReverse: true, shakeOffset: 5)
     */
    func setShake(duration: CFTimeInterval = 0.5,
                  repeatCount: Float = 5,
                  autoReverse: Bool = true,
                  shakeOffset: CGFloat = 5) {
        let shakeLayer = CABasicAnimation(keyPath: "position")
        shakeLayer.duration = duration
        shakeLayer.repeatCount = repeatCount
        shakeLayer.autoreverses = autoReverse
        shakeLayer.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - shakeOffset,
                                                        y: self.center.y))
        shakeLayer.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + shakeOffset,
                                                      y: self.center.y))
        self.layer.add(shakeLayer, forKey: "position")
    }
    @discardableResult
    func loadNib() -> UIView? {
        let nib = UINib(nibName: Self.className, bundle: .main)
        let nibViews = nib.instantiate(withOwner: self)
        guard let view = nibViews[0] as? UIView
        else { fatalError("can`t load view from nib \(Self.className)") }
        
        self.addSubview(view)
        self.clipsToBounds = true
        
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.topAnchor),
                                     view.bottomAnchor.constraint(equalTo: self.bottomAnchor),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                                     view.trailingAnchor.constraint(equalTo: self.trailingAnchor)
                                    ])
        return view
    }
}
