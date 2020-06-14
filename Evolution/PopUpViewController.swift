//
//  PopUpViewController.swift
//  Evolution
//
//  Created by Matthew Woodward on 4/15/20.
//  Copyright © 2020 Matthew Woodward. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {
    
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var speciesDescription: UILabel!
    @IBOutlet weak var descriptionBox: UILabel!
    
    var imageName:String = ""
    var label1Text:String = ""
    var descriptionText:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showAnimation()
        
        profileImage.image = UIImage(named: imageName)
        label1.text = label1Text
        speciesDescription.text = descriptionText
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)

        popUpView.layer.cornerRadius = 8.0
        descriptionBox.layer.borderWidth = 4.0
        descriptionBox.layer.cornerRadius = 8.0
    }
    
    @IBAction func closePopUp(_ sender: Any) {
        removeAnimation()
    }
    
    func showAnimation() {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        })
    }
    
    func removeAnimation() {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0
        }, completion: {(finished: Bool) in
            if(finished) {
                self.view.removeFromSuperview()
                
            }
        })
    }
    
}
