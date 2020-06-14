//
//  LoadingViewController.swift
//  Evolution
//
//  Created by Matthew Woodward on 4/17/20.
//  Copyright © 2020 Matthew Woodward. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {
    
    @IBOutlet weak var finalImage: UIImageView!
    
    var finalSpecies:String = ""
    
    var sectionCounter:Int = 0
    var loadingCounter:Int = 0
    var loadingArray = [String]()
    
    let shapeLayer = CAShapeLayer()
    let trackLayer = CAShapeLayer()
    
    var pulsatingLayer: CAShapeLayer!
    
    let percentageLabel: UILabel = {
        let label = UILabel()
        label.text = "Tap!"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.numberOfLines = 3
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    func determineProgress(x: Int) -> CGFloat {
        if(x != 0){
            let percentage = CGFloat(x)/CGFloat(3.0)
            return percentage
        }
        return CGFloat(0)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.backgroundColor

        // Do any additional setup after loading the view.
        
        let center = view.center
        let circularPath = UIBezierPath(arcCenter: .zero, radius: 100, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        
        //Create pulsating layer
        pulsatingLayer = CAShapeLayer()
        pulsatingLayer.path = circularPath.cgPath
        pulsatingLayer.strokeColor = UIColor.clear.cgColor
        pulsatingLayer.lineCap = CAShapeLayerLineCap.round
        pulsatingLayer.fillColor = UIColor.pulsatingFillColor.cgColor
        pulsatingLayer.position = center
        view.layer.addSublayer(pulsatingLayer)
        
        animatePulsatingLayer()
        
        //create track layer
        trackLayer.path = circularPath.cgPath
        trackLayer.strokeColor = UIColor.trackStrokeColor.cgColor
        trackLayer.lineWidth = 20
        trackLayer.lineCap = CAShapeLayerLineCap.round
        trackLayer.fillColor = UIColor.backgroundColor.cgColor
        trackLayer.position = center
        view.layer.addSublayer(trackLayer)
        
        //Create shape layer
        
        shapeLayer.path = circularPath.cgPath
        
        shapeLayer.strokeColor = UIColor.outlineStrokeColor.cgColor
        shapeLayer.lineWidth = 20
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeEnd = 0
        shapeLayer.position = center
        
        shapeLayer.transform = CATransform3DMakeRotation(-CGFloat.pi / 2, 0, 0, 1)
        
        view.layer.addSublayer(shapeLayer)
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
        
        view.addSubview(percentageLabel)
        percentageLabel.frame = CGRect(x: 0, y: 0, width: 155, height: 100)
        percentageLabel.center = view.center
    }
    
    func animatePulsatingLayer() {
        print("animating...")
        let animation = CABasicAnimation(keyPath: "transform.scale")
        
        animation.toValue = 1.3
        animation.duration = 0.8
        animation.timingFunction = CAMediaTimingFunction(name: .easeOut)
        animation.autoreverses = true
        animation.repeatCount = Float.infinity
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        
        pulsatingLayer.add(animation, forKey: "pulsing")
    }
    
    func countToProgress(y: Int) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.045) {
            
            let currentProgress = self.determineProgress(x: y)
            
            if(self.shapeLayer.strokeEnd != currentProgress && self.shapeLayer.strokeEnd <= currentProgress && y != 0) {
                print(self.shapeLayer.strokeEnd)
                self.shapeLayer.strokeEnd += 0.01
                self.percentageLabel.text = "\(Int(self.shapeLayer.strokeEnd * 100))%"
                self.countToProgress(y: y)
            } else {
                self.shapeLayer.strokeEnd = currentProgress
                if(y == 3) {
                    UIView.animate(withDuration: 1.0, delay: 0.5, options: .transitionCrossDissolve, animations: {self.percentageLabel.text = ""}, completion: {(finished:Bool) in self.moveCircle()})
                }
                else if(y==0){
                    UIView.transition(with: self.percentageLabel, duration: 1.5, options: .transitionCrossDissolve, animations: {self.percentageLabel.text = "General Characteristics of Early Humans"}, completion: {(finished:Bool) in self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.segueToNext)))
                    })
                } else if(y==1){
                    UIView.transition(with: self.percentageLabel, duration: 1.5, options: .transitionCrossDissolve, animations: {self.percentageLabel.text = "Usage and Production of Tools"}, completion: {(finished:Bool) in self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.segueToNext)))
                    })
                } else if(y==2){
                    UIView.transition(with: self.percentageLabel, duration: 1.5, options: .transitionCrossDissolve, animations: {self.percentageLabel.text = "First Evidence of Human Traits"}, completion: {(finished:Bool) in self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.segueToNext)))
                    })
                }
            }
        }
    }
    
    func moveCircle() {
        CATransaction.begin()
        let ani = CABasicAnimation(keyPath: "transform")
        ani.toValue = NSValue(caTransform3D: CATransform3DMakeTranslation(0, -200, 1))
        ani.duration = 2.5
        ani.isRemovedOnCompletion = false
        ani.fillMode = CAMediaTimingFillMode.forwards
        
        CATransaction.setCompletionBlock {
            self.pulsatingLayer.fillColor = UIColor.clear.cgColor
            self.trackLayer.fillColor = UIColor.clear.cgColor
            self.percentageLabel.transform = CGAffineTransform(translationX: 0, y: -200)
            self.finalAnswer(species: self.finalSpecies)
        }
        
        pulsatingLayer.add(ani, forKey: "alsfis")
        trackLayer.add(ani, forKey: "alsfs")
        shapeLayer.add(ani, forKey: "alsias")
        CATransaction.commit()
    }
    
    
    func finalAnswer(species: String) {
        if(true){
            UIView.animate(withDuration: 1.0, delay: 0.0, options: .transitionCrossDissolve, animations: {
                self.percentageLabel.textColor = .white
                
                if (species == "Afarensis") {
                    self.percentageLabel.text = "You are an Australopithecus afarensis!"
                }
                
                if (species == "Ardipithecus") {
                    self.percentageLabel.text = "You are an Ardipithecus ramidus!"
                }
                
                if (species == "Anamensis") {
                    self.percentageLabel.text = "You are an Australopithecus anamensis!"
                }
                
                if (species == "Aethiopicus") {
                    self.percentageLabel.text = "You are a Paranthropus aethiopicus!"
                }
                
                if (species == "Africanus") {
                    self.percentageLabel.text = "You are an Australopithecus africanus!"
                }
                
                if (species == "Garhi") {
                    self.percentageLabel.text = "You are an Australopithecus garhi!"
                }
                
                if (species == "Robustus") {
                    self.percentageLabel.text = "You are a Paranthropus robustus!"
                }
                
                if (species == "Boisei") {
                    self.percentageLabel.text = "You are a Paranthropus boisei!"
                }
                
                if (species == "Habilis") {
                    self.percentageLabel.text = "You are a Homo habilis!"
                }
                
                if (species == "Erectus") {
                    self.percentageLabel.text = "You are a Homo erectus!"
                }
                
                if (species == "Neanderthalensis") {
                    self.percentageLabel.text = "You are a Homo neanderthalensis!"
                }
                
                if (species == "Sapiens") {
                    self.percentageLabel.text = "You are a Homo sapien!"
                }
                
                print("Animating...")
            }, completion: {(finished:Bool) in
                let image = UIImage(named: self.finalSpecies + "PopUp.jpg")
                
                self.finalImage.isHidden = false
                
                UIView.transition(with: self.finalImage, duration: 0.15, options: .transitionCrossDissolve, animations: {self.finalImage.image = image})
            })
        }
    }
    
    @objc func segueToNext() {
        performSegue(withIdentifier: "segueToNext", sender: self)
    }
    
    @objc func handleTap() {
        countToProgress(y: sectionCounter)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is ViewController
        {
            let vc = segue.destination as? ViewController
            vc?.sectionCounterMain = sectionCounter
            vc?.counter = loadingCounter
            vc?.answerArray = loadingArray
        }
    }
}
