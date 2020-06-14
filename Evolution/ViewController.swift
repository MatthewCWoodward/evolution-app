//
//  ViewController.swift
//  Evolution
//
//  Created by Matthew Woodward on 4/15/20.
//  Copyright © 2020 Matthew Woodward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var popUpPicture: UIButton!
    
    @IBOutlet weak var forwardButton: UIButton!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var behindQ: UILabel!
    @IBOutlet weak var qTitle: UILabel!
    @IBOutlet weak var answer1: UILabel!
    @IBOutlet weak var answer2: UILabel!
    @IBOutlet weak var answer3: UILabel!
    @IBOutlet weak var answer4: UILabel!
    
    
    var profileImage:String = ""
    var label1Text:String = ""
    var label2Text:String = ""
    var descriptionText:String = ""
    var answer = ""
    var counter = 0
    var sectionCounterMain = 0
    var answerArray = [String]()
    var determinedAnswer:String = ""
    
    @IBAction func bringPopUp(_ sender: Any) {
        showPopUp()
    }
    
    func showPopUp() {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "PopUpId") as! PopUpViewController
        popOverVC.imageName = profileImage
        popOverVC.label1Text = label1Text
        popOverVC.descriptionText = descriptionText
        self.addChild(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParent: self)
        
    }
    
    @IBAction func firstAnswer(_ sender: Any) {
               
        if (counter == 0) {
            answer = "teeth"
        }
        
        if (counter == 1) {
            answer = "sexualDimorphism"
        }
        
        if (counter == 2) {
            answer = "toothInfo"
        }
        
        if (counter == 3) {
            answer = "afarensis"
        }
        
        if (counter == 4) {
            answer = "toolUsage"
        }
        
        if (counter == 5) {
            answer = "toolProduction"
        }
        
        if (counter == 6) {
            answer = "aethiopicus"
        }
        
        if (counter == 7) {
            answer = "robustus"
        }
        
        if (counter == 8) {
            answer = "socialLife"
        }
        
        if (counter == 9) {
            answer = "language"
        }
        
        if (counter == 10) {
            answer = "erectus"
        }
        
        if (counter == 11) {
            answer = "sapiens"
        }
        
        chooseSpecies(species: answer)
        
        answer1.isHighlighted = true
        answer2.isEnabled = false
        answer3.isEnabled = false
        answer4.isEnabled = false
        forwardButton.isEnabled = true
    }
    
    @IBAction func secondAnswer(_ sender: Any) {
        if (counter == 0) {
            answer = "teeth"
        }
        
        if (counter == 1) {
            answer = "sexualDimorphism"
        }
        
        if (counter == 2) {
            answer = "afarensis"
        }
        
        if (counter == 3) {
            answer = "anamensis"
        }
        
        if (counter == 4) {
            answer = "toolUsage"
        }
        
        if (counter == 5) {
            answer = "toolProduction"
        }
        
        if (counter == 6) {
            answer = "africanus"
        }
        
        if (counter == 7) {
            answer = "boisei"
        }
        
        if (counter == 8) {
            answer = "socialLife"
        }
        
        if (counter == 9) {
            answer = "language"
        }
        
        if (counter == 10) {
            answer = "erectus"
        }
        
        if (counter == 11) {
            answer = "erectus"
        }
        
        chooseSpecies(species: answer)
        
        answer1.isEnabled = false
        answer2.isHighlighted = true
        answer3.isEnabled = false
        answer4.isEnabled = false
        forwardButton.isEnabled = true
    }
    
    @IBAction func thirdAnswer(_ sender: Any) {
        if (counter == 0) {
            answer = "teeth"
        }
        
        if (counter == 1) {
            answer = "sexualDimorphism"
        }
        
        if (counter == 2) {
            answer = "ardipithecus"
        }
        
        if (counter == 3) {
            answer = "ardipithecus"
        }
        
        if (counter == 4) {
            answer = "toolUsage"
        }
        
        if (counter == 5) {
            answer = "toolProduction"
        }
        
        if (counter == 6) {
            answer = "garhi"
        }
        
        if (counter == 7) {
            answer = "habilis"
        }
        
        if (counter == 8) {
            answer = "socialLife"
        }
        
        if (counter == 9) {
            answer = "language"
        }
        
        if (counter == 10) {
            answer = "neanderthalensis"
        }
        
        if (counter == 11) {
            answer = "neanderthalensis"
        }
        
        chooseSpecies(species: answer)
        
        answer1.isEnabled = false
        answer2.isEnabled = false
        answer3.isHighlighted = true
        answer4.isEnabled = false
        forwardButton.isEnabled = true
    }
    
    @IBAction func fourthAnswer(_ sender: Any) {
        if (counter == 0) {
            answer = "teeth"
        }
        
        if (counter == 1) {
            answer = "sexualDimorphism"
        }
        
        if (counter == 2) {
            answer = "anamensis"
        }
        
        if (counter == 3) {
            answer = "ardipithecus"
        }
        
        if (counter == 4) {
            answer = "toolUsage"
        }
        
        if (counter == 5) {
            answer = "toolProduction"
        }
        
        if (counter == 6) {
            answer = "aethiopicus"
        }
        
        if (counter == 7) {
            answer = "habilis"
        }
        
        if (counter == 8) {
            answer = "socialLife"
        }
        
        if (counter == 9) {
            answer = "language"
        }
        
        if (counter == 10) {
            answer = "sapiens"
        }
        
        if (counter == 11) {
            answer = "sapiens"
        }
        
        chooseSpecies(species: answer)
        
        answer1.isEnabled = false
        answer2.isEnabled = false
        answer3.isEnabled = false
        answer4.isHighlighted = true
        forwardButton.isEnabled = true
    }
    
    @IBAction func goNextQuestion(_ sender: Any) {
        counter += 1
        answer1.isEnabled = true
        answer2.isEnabled = true
        answer3.isEnabled = true
        answer4.isEnabled = true
        forwardButton.isEnabled = false
        popUpPicture.isHidden = true
        
        answerArray.append(answer)
        print(answerArray)
        
        if(counter == 1) {
            UIView.transition(with: popUpPicture, duration: 0.5, options: .transitionCrossDissolve, animations: {self.qTitle.text = ""
                self.qTitle.text = Questions.q2
                self.answer1.text = Questions.a21
                self.answer2.text = Questions.a22
                self.answer3.text = Questions.a23
                self.answer4.text = Questions.a24
            })
        }
        
        if (counter == 2) {
            UIView.transition(with: popUpPicture, duration: 0.5, options: .transitionCrossDissolve, animations: {self.qTitle.text = ""
                self.qTitle.text = Questions.q3
                self.answer1.text = Questions.a31
                self.answer2.text = Questions.a32
                self.answer3.text = Questions.a33
                self.answer4.text = Questions.a34
            })
        }
        
        if (counter == 3) {
            UIView.transition(with: popUpPicture, duration: 0.5, options: .transitionCrossDissolve, animations: {self.qTitle.text = ""
                self.qTitle.text = Questions.q4
                self.answer1.text = Questions.a41
                self.answer2.text = Questions.a42
                self.answer3.text = Questions.a43
                self.answer4.text = Questions.a44
            })
        }
        
        if (counter == 4) {
            sectionCounterMain += 1
            performSegue(withIdentifier: "goToLoading", sender: self)
        }
        
        if (counter == 5) {
            UIView.transition(with: popUpPicture, duration: 0.5, options: .transitionCrossDissolve, animations: {self.qTitle.text = ""
                self.qTitle.text = Questions.q6
                self.answer1.text = Questions.a61
                self.answer2.text = Questions.a62
                self.answer3.text = Questions.a63
                self.answer4.text = Questions.a64
            })
        }
        
        if (counter == 6) {
            UIView.transition(with: popUpPicture, duration: 0.5, options: .transitionCrossDissolve, animations: {self.qTitle.text = ""
                self.qTitle.text = Questions.q7
                self.answer1.text = Questions.a71
                self.answer2.text = Questions.a72
                self.answer3.text = Questions.a73
                self.answer4.text = Questions.a74
            })
        }
        
        if (counter == 7) {
            UIView.transition(with: popUpPicture, duration: 0.5, options: .transitionCrossDissolve, animations: {self.qTitle.text = ""
                self.qTitle.text = Questions.q8
                self.answer1.text = Questions.a81
                self.answer2.text = Questions.a82
                self.answer3.text = Questions.a83
                self.answer4.text = Questions.a84
            })
        }
        
        if (counter == 8) {
            sectionCounterMain += 1
            performSegue(withIdentifier: "goToLoading", sender: self)
        }
        
        if (counter == 9) {
            UIView.transition(with: popUpPicture, duration: 0.5, options: .transitionCrossDissolve, animations: {self.qTitle.text = ""
                self.qTitle.text = Questions.q10
                self.answer1.text = Questions.a101
                self.answer2.text = Questions.a102
                self.answer3.text = Questions.a103
                self.answer4.text = Questions.a104
            })
        }
        
        if (counter == 10) {
            UIView.transition(with: popUpPicture, duration: 0.5, options: .transitionCrossDissolve, animations: {self.qTitle.text = ""
                self.qTitle.text = Questions.q11
                self.answer1.text = Questions.a111
                self.answer2.text = Questions.a112
                self.answer3.text = Questions.a113
                self.answer4.text = Questions.a114
            })
        }
        
        if (counter == 11) {
            UIView.transition(with: popUpPicture, duration: 0.5, options: .transitionCrossDissolve, animations: {self.qTitle.text = ""
                self.qTitle.text = Questions.q12
                self.answer1.text = Questions.a121
                self.answer2.text = Questions.a122
                self.answer3.text = Questions.a123
                self.answer4.text = Questions.a124
            })
        }
        
        if (counter == 12) {
            sectionCounterMain += 1
            determineAnswer()
            performSegue(withIdentifier: "goToLoading", sender: self)
        }
    }
    
    func chooseSpecies(species: String) {
        
        if (species == "teeth") {
            let image = UIImage(named: "TeethPopUp.jpg")
            profileImage = "TeethProfile.jpg"
            label1Text = "Evolution of Teeth"
            descriptionText = Species.teethTypes
            
            popUpPicture.isHidden = false
            
            UIView.transition(with: popUpPicture, duration: 0.15, options: .transitionCrossDissolve, animations: {self.popUpPicture.setImage(image, for: UIControl.State.normal)})
        }
        
        if (species == "sexualDimorphism") {
            let image = UIImage(named: "SexualDimorphismPopUp.jpg")
            profileImage = "SexualDimorphismProfile.jpg"
            label1Text = "Sexual Dimorphism"
            descriptionText = Species.sexualDimorphism
            
            popUpPicture.isHidden = false
            
            UIView.transition(with: popUpPicture, duration: 0.15, options: .transitionCrossDissolve, animations: {self.popUpPicture.setImage(image, for: UIControl.State.normal)})
        }
        
        if (species == "toothInfo") {
            let image = UIImage(named: "SharpTeethPopUp.jpg")
            profileImage = "SharpTeethProfile.jpg"
            label1Text = "Sharp Teeth"
            descriptionText = Species.toothInfo
            
            popUpPicture.isHidden = false
            
            UIView.transition(with: popUpPicture, duration: 0.15, options: .transitionCrossDissolve, animations: {self.popUpPicture.setImage(image, for: UIControl.State.normal)})
        }
        
        if (species == "toolUsage") {
            let image = UIImage(named: "ToolUsagePopUp.jpg")
            profileImage = "ToolUsageProfile.jpg"
            label1Text = "Usage of Tools"
            descriptionText = Species.toolsUsage
            
            popUpPicture.isHidden = false
            
            UIView.transition(with: popUpPicture, duration: 0.15, options: .transitionCrossDissolve, animations: {self.popUpPicture.setImage(image, for: UIControl.State.normal)})
        }
        
        if (species == "toolProduction") {
            let image = UIImage(named: "ToolProductionPopUp.jpg")
            profileImage = "ToolProductionProfile.jpg"
            label1Text = "Production of Tools"
            descriptionText = Species.toolsProduction
            
            popUpPicture.isHidden = false
            
            UIView.transition(with: popUpPicture, duration: 0.15, options: .transitionCrossDissolve, animations: {self.popUpPicture.setImage(image, for: UIControl.State.normal)})
        }
        
        if (species == "socialLife") {
            let image = UIImage(named: "SocialLifePopUp.jpg")
            profileImage = "SocialLifeProfile.jpg"
            label1Text = "Social Life"
            descriptionText = Species.socialLife
            
            popUpPicture.isHidden = false
            
            UIView.transition(with: popUpPicture, duration: 0.15, options: .transitionCrossDissolve, animations: {self.popUpPicture.setImage(image, for: UIControl.State.normal)})
        }
        
        if (species == "language") {
            let image = UIImage(named: "LanguagePopUp.jpg")
            profileImage = "LanguageProfile.jpg"
            label1Text = "Spoken Language"
            descriptionText = Species.language
            
            popUpPicture.isHidden = false
            
            UIView.transition(with: popUpPicture, duration: 0.15, options: .transitionCrossDissolve, animations: {self.popUpPicture.setImage(image, for: UIControl.State.normal)})
        }
        
        if (species == "afarensis") {
            let image = UIImage(named: "AfarensisPopUp.jpg")
            profileImage = "AfarensisProfile.jpg"
            label1Text = "Australopithecus afarensis"
            descriptionText = Species.afarensis
            
            popUpPicture.isHidden = false
            
            UIView.transition(with: popUpPicture, duration: 0.15, options: .transitionCrossDissolve, animations: {self.popUpPicture.setImage(image, for: UIControl.State.normal)})
        }
        
       if (species == "ardipithecus") {
           let image = UIImage(named: "ArdipithecusPopUp.jpg")
           profileImage = "ArdipithecusProfile.jpg"
           label1Text = "Ardipithecus ramidus"
           descriptionText = Species.ardipithecus
           
           popUpPicture.isHidden = false
           
           UIView.transition(with: popUpPicture, duration: 0.15, options: .transitionCrossDissolve, animations: {self.popUpPicture.setImage(image, for: UIControl.State.normal)})
       }
        
        if (species == "anamensis") {
            let image = UIImage(named: "AnamensisPopUp.jpg")
            profileImage = "AnamensisProfile.jpg"
            label1Text = "Australopithecus anamensis"
            descriptionText = Species.anamensis
            
            popUpPicture.isHidden = false
            
            UIView.transition(with: popUpPicture, duration: 0.15, options: .transitionCrossDissolve, animations: {self.popUpPicture.setImage(image, for: UIControl.State.normal)})
        }
        
        if (species == "aethiopicus") {
            let image = UIImage(named: "AethiopicusPopUp.jpg")
            profileImage = "AethiopicusProfile.jpg"
            label1Text = "Paranthropus aethiopicus"
            descriptionText = Species.aethiopicus
            
            popUpPicture.isHidden = false
            
            UIView.transition(with: popUpPicture, duration: 0.15, options: .transitionCrossDissolve, animations: {self.popUpPicture.setImage(image, for: UIControl.State.normal)})
        }
        
        if (species == "africanus") {
            let image = UIImage(named: "AfricanusPopUp.jpg")
            profileImage = "AfricanusProfile.jpg"
            label1Text = "Australopithecus africanus"
            descriptionText = Species.africanus
            
            popUpPicture.isHidden = false
            
            UIView.transition(with: popUpPicture, duration: 0.15, options: .transitionCrossDissolve, animations: {self.popUpPicture.setImage(image, for: UIControl.State.normal)})
        }
        
        if (species == "garhi") {
            let image = UIImage(named: "GarhiPopUp.jpg")
            profileImage = "GarhiProfile.jpg"
            label1Text = "Australopithecus garhi"
            descriptionText = Species.garhi
            
            popUpPicture.isHidden = false
            
            UIView.transition(with: popUpPicture, duration: 0.15, options: .transitionCrossDissolve, animations: {self.popUpPicture.setImage(image, for: UIControl.State.normal)})
        }
        
        if (species == "robustus") {
            let image = UIImage(named: "RobustusPopUp.jpg")
            profileImage = "RobustusProfile.jpg"
            label1Text = "Paranthropus robustus"
            descriptionText = Species.robustus
            
            popUpPicture.isHidden = false
            
            UIView.transition(with: popUpPicture, duration: 0.15, options: .transitionCrossDissolve, animations: {self.popUpPicture.setImage(image, for: UIControl.State.normal)})
        }
        
        if (species == "boisei") {
            let image = UIImage(named: "BoiseiPopUp.jpg")
            profileImage = "BoiseiProfile.jpg"
            label1Text = "Paranthropus boisei"
            descriptionText = Species.boisei
            
            popUpPicture.isHidden = false
            
            UIView.transition(with: popUpPicture, duration: 0.15, options: .transitionCrossDissolve, animations: {self.popUpPicture.setImage(image, for: UIControl.State.normal)})
        }
        
        if (species == "habilis") {
            let image = UIImage(named: "HabilisPopUp.jpg")
            profileImage = "HabilisProfile.jpg"
            label1Text = "Homo habilis"
            descriptionText = Species.habilis
            
            popUpPicture.isHidden = false
            
            UIView.transition(with: popUpPicture, duration: 0.15, options: .transitionCrossDissolve, animations: {self.popUpPicture.setImage(image, for: UIControl.State.normal)})
        }
        
        if (species == "erectus") {
            let image = UIImage(named: "ErectusPopUp.jpg")
            profileImage = "ErectusProfile.jpg"
            label1Text = "Homo erectus"
            descriptionText = Species.erectus
            
            popUpPicture.isHidden = false
            
            UIView.transition(with: popUpPicture, duration: 0.15, options: .transitionCrossDissolve, animations: {self.popUpPicture.setImage(image, for: UIControl.State.normal)})
        }
        
        if (species == "neanderthalensis") {
            let image = UIImage(named: "NeanderthalensisPopUp.jpg")
            profileImage = "NeanderthalensisProfile.jpg"
            label1Text = "Homo neanderthalensis"
            descriptionText = Species.neanderthalensis
            
            popUpPicture.isHidden = false
            
            UIView.transition(with: popUpPicture, duration: 0.15, options: .transitionCrossDissolve, animations: {self.popUpPicture.setImage(image, for: UIControl.State.normal)})
        }
        
        if (species == "sapiens") {
            let image = UIImage(named: "SapiensPopUp.jpg")
            profileImage = "SapiensProfile.jpg"
            label1Text = "Homo sapiens"
            descriptionText = Species.sapiens
            
            popUpPicture.isHidden = false
            
            UIView.transition(with: popUpPicture, duration: 0.15, options: .transitionCrossDissolve, animations: {self.popUpPicture.setImage(image, for: UIControl.State.normal)})
        }
    }
    
    func determineAnswer() {
        var afarensisCount = 0
        var ardipithecusCount = 0
        var anamensisCount = 0
        var aethiopicusCount = 0
        var africanusCount = 0
        var garhiCount = 0
        var robustusCount = 0
        var boiseiCount = 0
        var habilisCount = 0
        var erectusCount = 0
        var neanderthalensisCount = 0
        var sapiensCount = 0
        
        for x in 0...answerArray.count-1 {
            if (answerArray[x] == "afarensis"){
                afarensisCount += 1
            }
            
            if (answerArray[x] == "ardipithecus"){
                ardipithecusCount += 1
            }
            
            if (answerArray[x] == "anamensis"){
                anamensisCount += 1
            }
            
            if (answerArray[x] == "aethiopicus"){
                aethiopicusCount += 1
            }
            
            if (answerArray[x] == "africanus"){
                africanusCount += 1
            }
            
            if (answerArray[x] == "garhi"){
                garhiCount += 1
            }
            
            if (answerArray[x] == "robustus"){
                robustusCount += 1
            }
            
            if (answerArray[x] == "boisei"){
                boiseiCount += 1
            }
            
            if (answerArray[x] == "habilis"){
                habilisCount += 1
            }
            
            if (answerArray[x] == "erectus"){
                erectusCount += 1
            }
            
            if (answerArray[x] == "neanderthalensis"){
                neanderthalensisCount += 1
            }
            
            if (answerArray[x] == "sapiens"){
                sapiensCount += 1
            }
        }
        
        struct Species {
            let name: String
            let count: Int
        }
        
        let species = [Species(name: "Afarensis", count: afarensisCount), Species(name: "Ardipithecus", count: ardipithecusCount), Species(name: "Anamensis", count: anamensisCount), Species(name: "Aethiopicus", count: aethiopicusCount), Species(name: "Africanus", count: africanusCount), Species(name: "Garhi", count: garhiCount), Species(name: "Robustus", count: robustusCount), Species(name: "Boisei", count: boiseiCount), Species(name: "Habilis", count: habilisCount), Species(name: "Erectus", count: erectusCount), Species(name: "Neanderthalensis", count: neanderthalensisCount), Species(name: "Sapiens", count: sapiensCount)]

        let maxCount = species.lazy.map{ $0.count }.max()
        
        _ = species.filter { $0.count == maxCount }
        
        let indexForSpeciesWithMaxCount = species.indices.filter { species[$0].count == maxCount }
        
        print(species[indexForSpeciesWithMaxCount[0]].name + "PopUp.jpg")
        determinedAnswer = species[indexForSpeciesWithMaxCount[0]].name
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        forwardButton.layer.cornerRadius = 8
        
        behindQ.layer.borderWidth = 4.0
        behindQ.layer.cornerRadius = 8
        button1.layer.borderWidth = 1.0
        button1.layer.cornerRadius = 9
        button2.layer.borderWidth = 1.0
        button2.layer.cornerRadius = 9
        button3.layer.borderWidth = 1.0
        button3.layer.cornerRadius = 9
        button4.layer.borderWidth = 1.0
        button4.layer.cornerRadius = 9
        
        if (sectionCounterMain == 1) {
            UIView.transition(with: popUpPicture, duration: 0.5, options: .transitionCrossDissolve, animations: {self.qTitle.text = ""
                self.qTitle.text = Questions.q5
                self.answer1.text = Questions.a51
                self.answer2.text = Questions.a52
                self.answer3.text = Questions.a53
                self.answer4.text = Questions.a54
            })
        }
        
        if (sectionCounterMain == 2) {
            UIView.transition(with: popUpPicture, duration: 0.5, options: .transitionCrossDissolve, animations: {self.qTitle.text = ""
                self.qTitle.text = Questions.q9
                self.answer1.text = Questions.a91
                self.answer2.text = Questions.a92
                self.answer3.text = Questions.a93
                self.answer4.text = Questions.a94
            })
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is LoadingViewController
        {
            let vc = segue.destination as? LoadingViewController
            vc?.sectionCounter = sectionCounterMain
            vc?.loadingCounter = counter
            vc?.loadingArray = answerArray
            vc?.finalSpecies = determinedAnswer
        }
    }
}
