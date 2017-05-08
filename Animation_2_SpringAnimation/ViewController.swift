//
//  ViewController.swift
//  Animation_2_SpringAnimation
//
//  Created by PENG BAI on 16/1/21.
//  Copyright © 2016年 bp1010. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        // usingSpringWithDamping: This controls the amount of damping, or reduction, applied to the animation as it approaches its final state. This parameter accepts values between 0.0 and 1.0. Values closer to 0.0 create a bouncier animation, while values closer to 1.0 create a stiff-looking effect. You can think of this value as the “stiffness” of the spring.
        
        // initialSpringVelocity:  This controls the initial velocity of the animation. A value of 1.0 sets the velocity of the animation to cover the total distance of the animation in the span of one second. Bigger and smaller values will cause the animation to have more or less velocity.
        
        UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: UIViewAnimationOptions(), animations: { () -> Void in
            self.myView.center.y -= 30;
            }, completion: nil)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

