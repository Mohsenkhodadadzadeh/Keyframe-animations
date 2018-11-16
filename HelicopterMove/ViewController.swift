//
//  ViewController.swift
//  HelicopterMove
//
//  Created by mohsen khodadadzadeh on 11/15/18.
//  Copyright © 2018 mohsen khodadadzadeh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cloud4Image: UIImageView!
    @IBOutlet weak var cloud3Image: UIImageView!
    @IBOutlet weak var cloud2Image: UIImageView!
    @IBOutlet weak var cloud1Image: UIImageView!
    @IBOutlet weak var helicopterImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

  
    @IBAction func ClickToFly() {
        flying()
    }
    
    func flying() {
        let originalCenter = helicopterImage.center
        
        UIView.animateKeyframes(withDuration: 2.5, delay: 0, animations: {
            
            // add first keyframe from 0% to 25% duration
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25, animations: {
                self.helicopterImage.center.x += 140.0
                self.helicopterImage.center.y -= 10.0
            })
            
            //second keyframe from 10% to 50% duration
            UIView.addKeyframe(withRelativeStartTime: 0.1, relativeDuration: 0.4, animations: {
                self.helicopterImage.transform = CGAffineTransform(rotationAngle: -.pi / 8)
            })
            
            //thired keyframe from 25% to 50% duration
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25, animations: {
                self.helicopterImage.center.x += 150
                self.helicopterImage.center.y -= 45
            })
            
            //fourth keyframe from 45% to 50% duration
            UIView.addKeyframe(withRelativeStartTime: 0.45, relativeDuration: 0.05, animations: {
                self.helicopterImage.center.x += 10
                self.helicopterImage.center.y -= 5
                self.helicopterImage.alpha = 0.0
                
            })
            
            //fifth keyframe from 51% to 52% duration
            UIView.addKeyframe(withRelativeStartTime: 0.51, relativeDuration: 0.01, animations: {
                self.helicopterImage.transform = .identity
                self.helicopterImage.center = CGPoint(x: -20.0, y: originalCenter.y)
                
            })
            
            //last keyframe from 55% to end (100%)
            UIView.addKeyframe(withRelativeStartTime: 0.55, relativeDuration: 0.45, animations: {
                self.helicopterImage.alpha = 1.0
                self.helicopterImage.center = originalCenter
            })
            
        }, completion: nil )
        
        
        
    }
}

