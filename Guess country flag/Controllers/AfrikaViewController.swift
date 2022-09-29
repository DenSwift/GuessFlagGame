//
//  AfrikaViewController.swift
//  Guess country flag
//
//  Created by Денис  on 29.09.2022.
//

import UIKit

class AfrikaViewController: UIViewController {

    // MARK: - Outlets
    // Images
    @IBOutlet weak var firstFlagImage: UIImageView!
    @IBOutlet weak var secondFlagImage: UIImageView!
    @IBOutlet weak var thirdFlagImage: UIImageView!
    @IBOutlet weak var fourthFlagImage: UIImageView!
    // Label
    @IBOutlet weak var questionLabel: UILabel!
    // Buttons
    @IBOutlet weak var firstButtonOutlet: UIButton!
    @IBOutlet weak var secondButtonOutlet: UIButton!
    @IBOutlet weak var thirdButtonOutlet: UIButton!
    @IBOutlet weak var fourthButtonOutlet: UIButton!
    
    // Score label
    @IBOutlet weak var scoreLabel: UILabel!
    
    var score = 0
    var rounds = 10

    // Storage
    var countryStorage1: [String: UIImage] = [:]
    var countryStorage2: [String: UIImage] = [:]
    var countryStorage3: [String: UIImage] = [:]
    var countryStorage4: [String: UIImage] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        countryStorage1 = ["Алжир": UIImage(named: "algeria")!, "Чад": UIImage(named: "chad")!, "Египет": UIImage(named: "egypt")!]
        countryStorage2 = ["Кения": UIImage(named: "kenya")!, "Ливия": UIImage(named: "libya")!, "Марокко": UIImage(named: "morroco")!]
        countryStorage3 = ["Нигер": UIImage(named: "niger")!, "Тунис": UIImage(named: "tunisia")!, "Уганда": UIImage(named: "uganda")!]
        countryStorage4 = ["Нигерия": UIImage(named: "nigeria")!, "Сомали": UIImage(named: "somalia")!, "ЮАР": UIImage(named: "southAfrica")!]
        
        settingsForUIImage()
        
        // Image
        downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
        
        // Label
        downloadName(sender: questionLabel)

        // Question label settings
        questionLabel.layer.cornerRadius = 40
        questionLabel.layer.borderWidth = 3
        questionLabel.layer.borderColor = UIColor.red.cgColor
        
        // Score label settings
        scoreLabel.layer.cornerRadius = 27
        scoreLabel.layer.borderWidth = 2
        scoreLabel.layer.borderColor = UIColor.red.cgColor

    }
    // MARK: - Action
    @IBAction func firstButton(_ sender: UIButton) {
         checkAnswer(sender: firstFlagImage)
         countRound(sender: firstButtonOutlet)
    }
    
    @IBAction func secondButton(_ sender: UIButton) {
        checkAnswer(sender: secondFlagImage)
        countRound(sender: secondButtonOutlet)
    }
    
    @IBAction func thirdButton(_ sender: UIButton) {
        checkAnswer(sender: thirdFlagImage)
        countRound(sender: thirdButtonOutlet)
    }
    
    @IBAction func fourthButton(_ sender: UIButton) {
        checkAnswer(sender: fourthFlagImage)
        countRound(sender: fourthButtonOutlet)
    }
    
    private func checkAnswer(sender: UIImageView) {
        
        if questionLabel.text == "Алжир" {
            let franceImage = UIImage(named: "algeria")
            if sender.image == franceImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Чад" {
            let moldovaImage = UIImage(named: "chad")
            if sender.image == moldovaImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Египет" {
            let ukraineImage = UIImage(named: "egypt")
            if sender.image == ukraineImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Кения" {
            let albaniaImage = UIImage(named: "kenya")
            if sender.image == albaniaImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if  questionLabel.text == "Ливия" {
            let bulgaryImage = UIImage(named: "libya")
            if sender.image == bulgaryImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Марокко" {
            let germanyImage = UIImage(named: "morroco")
            if sender.image == germanyImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Нигер" {
            let liechtensteinImage = UIImage(named: "niger")
            if sender.image == liechtensteinImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Тунис" {
            let polandImage = UIImage(named: "tunisia")
            if sender.image == polandImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Уганда" {
            let romaniaImage = UIImage(named: "uganda")
            if sender.image == romaniaImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Нигерия" {
            let spainImage = UIImage(named: "nigeria")
            if sender.image == spainImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Сомали" {
            let swedenImage = UIImage(named: "somalia")
            if sender.image == swedenImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if  questionLabel.text == "ЮАР" {
            let switzerlandImage = UIImage(named: "southAfrica")
            if sender.image == switzerlandImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        }
    }
   
    private func correctAnswer() {
        score += 1
        scoreLabel.text = String(score)
    }
    
    private func wrongAnswer() {
        score -= 1
        scoreLabel.text = String(score)
    }
    
    private func settingsForUIImage() {
        firstFlagImage.layer.cornerRadius = 55
        firstFlagImage.layer.borderWidth = 5
        firstFlagImage.layer.borderColor = UIColor.white.cgColor
        
        secondFlagImage.layer.cornerRadius = 55
        secondFlagImage.layer.borderWidth = 5
        secondFlagImage.layer.borderColor = UIColor.white.cgColor
        
        thirdFlagImage.layer.cornerRadius = 55
        thirdFlagImage.layer.borderWidth = 5
        thirdFlagImage.layer.borderColor = UIColor.white.cgColor
        
        fourthFlagImage.layer.cornerRadius = 55
        fourthFlagImage.layer.borderWidth = 5
        fourthFlagImage.layer.borderColor = UIColor.white.cgColor
    }
    
    // Download image
    private func downloadImage(sender1: UIImageView, sender2: UIImageView,sender3: UIImageView,sender4: UIImageView) {
        sender1.image = countryStorage1.values.randomElement()
        sender2.image = countryStorage2.values.randomElement()
        sender3.image = countryStorage3.values.randomElement()
        sender4.image = countryStorage4.values.randomElement()
        
    }
    
    // Download country name
    private func downloadName(sender: UILabel) {
    
        var firstStorage: [String] = []
        var secondStorage: [String] = []
        var thirdStorage: [String] = []
        var fourthStorage: [String] = []
        
        // firstFlagImage
        let franceImage = UIImage(named: "algeria")
        let moldovaImage = UIImage(named: "chad")
        let ukraineImage = UIImage(named: "egypt")
        
        if firstFlagImage.image == franceImage {
            firstStorage.append("Алжир")
        } else if firstFlagImage.image == moldovaImage {
            firstStorage.append("Чад")
        }  else if firstFlagImage.image == ukraineImage {
            firstStorage.append("Египет")
        }
        // secondFlagImage
        let albaniaImage = UIImage(named: "kenya")
        let bulgaryImage = UIImage(named: "libya")
        let germanyImage = UIImage(named: "morroco")
        
        if secondFlagImage.image == albaniaImage {
            secondStorage.append("Кения")
        } else if secondFlagImage.image == bulgaryImage {
            secondStorage.append("Ливия")
        }  else if secondFlagImage.image == germanyImage {
            secondStorage.append("Марокко")
        }
        // thirdFlagImage flags
        let liechtensteinImage = UIImage(named: "niger")
        let polandImage = UIImage(named: "tunisia")
        let romaniaImage = UIImage(named: "uganda")
        
        if thirdFlagImage.image == liechtensteinImage {
            thirdStorage.append("Нигер")
        } else if thirdFlagImage.image == polandImage {
            thirdStorage.append("Тунис")
        } else if thirdFlagImage.image == romaniaImage {
            thirdStorage.append("Уганда")
        }
        // fourthFlagImage flags
        let spainImage = UIImage(named: "nigeria")
        let swedenImage = UIImage(named: "somalia")
        let switzerlandImage = UIImage(named: "southAfrica")
        
        if fourthFlagImage.image == spainImage {
            fourthStorage.append("Нигерия")
        } else if fourthFlagImage.image == swedenImage {
            fourthStorage.append("Сомали")
        } else if fourthFlagImage.image == switzerlandImage {
            fourthStorage.append("ЮАР")
        }
        
        let array = [firstStorage.randomElement(), secondStorage.randomElement(), thirdStorage.randomElement(), fourthStorage.randomElement()]
        
        if let a = array.randomElement() {
            sender.text = a
        }
    }
    // Count round in game
    private func countRound(sender: UIButton) {
        
        if rounds != 1 {
            if sender.isTouchInside {
                rounds -= 1
            }
        } else {
            let alert = UIAlertController(title: "Поздравляем!", message: "Ваш результат - \(scoreLabel.text!)", preferredStyle: .alert)
            let action = UIAlertAction(title: "Играть снова?", style: .default) { _ in
                self.rounds = 10
                self.scoreLabel.text = "0"
                self.score = 0
                self.downloadImage(sender1: self.firstFlagImage, sender2: self.secondFlagImage, sender3: self.thirdFlagImage, sender4: self.fourthFlagImage)
                self.downloadName(sender: self.questionLabel)
            }
            alert.addAction(action)
            self.present(alert, animated: true)
        }
    }
}
