//
//  LoaderView.swift
//  Animations
//
//  Created by Piñón Ayala Rodrigo  on 12/11/22.
//

import UIKit
import Lottie

class LoaderView: UIView {
    
    var animations=["error","ajolote","social"]

    override init(frame: CGRect){
        super.init(frame: frame)
        commonInit(number: 0)
    }
    
    required init?(coder aDecoder:NSCoder){
        super.init(coder:aDecoder)
        commonInit(number:0)
    }
    
    func commonInit(number:Int){
        self.subviews.forEach({ $0.removeFromSuperview() })
        let animationView = LottieAnimationView(name:animations[number])
        animationView.frame = CGRect(x:0,y: 0,width: 400,height: 400)
        animationView.center = self.center
        animationView.animationSpeed = 0.7
        animationView.contentMode = .scaleToFill
        self.addSubview(animationView)
        animationView.play()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        animationView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        animationView.widthAnchor.constraint(equalToConstant: 350).isActive = true
        animationView.heightAnchor.constraint(equalToConstant: 350).isActive = true
    }

}
