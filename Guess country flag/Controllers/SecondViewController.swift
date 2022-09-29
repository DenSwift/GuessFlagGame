//
//  SecondViewController.swift
//  Guess country flag
//
//  Created by Денис  on 24.09.2022.
//

import UIKit

class SecondViewController: UIViewController {

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

        countryStorage1 = ["Аргетина": UIImage(named: "argetina")!, "Канада": UIImage(named: "kanada")!, "США": UIImage(named: "usa")!]
        countryStorage2 = ["Бразилия": UIImage(named: "brazil")!, "Мексика": UIImage(named: "mexico")!, "Куба": UIImage(named: "cuba")!]
        countryStorage3 = ["Чили": UIImage(named: "chile")!, "Эквадор": UIImage(named: "ecuador")!, "Гондурас": UIImage(named: "honduras")!]
        countryStorage4 = ["Колумбия": UIImage(named: "colombia")!, "Уругвай": UIImage(named: "uruguay")!, "Сальвадор": UIImage(named: "salvador")!]
        
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
        
        if questionLabel.text == "Бразилия" {
            let brazilImage = UIImage(named: "brazil")
            if sender.image == brazilImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Чили" {
            let chileImage = UIImage(named: "chile")
            if sender.image == chileImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Куба" {
            let cubaImage = UIImage(named: "cuba")
            if sender.image == cubaImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Колумбия" {
            let colombiaImage = UIImage(named: "colombia")
            if sender.image == colombiaImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if  questionLabel.text == "Эквадор" {
            let ecuadorImage = UIImage(named: "ecuador")
            if sender.image == ecuadorImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Гондурас" {
            let hondurasImage = UIImage(named: "honduras")
            if sender.image == hondurasImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Мексика" {
            let mexicoImage = UIImage(named: "mexico")
            if sender.image == mexicoImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Сальвадор" {
            let salvadorImage = UIImage(named: "salvador")
            if sender.image == salvadorImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Уругвай" {
            let uruguayImage = UIImage(named: "uruguay")
            if sender.image == uruguayImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "США" {
            let usaImage = UIImage(named: "usa")
            if sender.image == usaImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Канада" {
            let canadaImage = UIImage(named: "kanada")
            if sender.image == canadaImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if  questionLabel.text == "Аргетина" {
            let argetinaImage = UIImage(named: "argetina")
            if sender.image == argetinaImage {
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
        let argetinaImage = UIImage(named: "argetina")
        let usaImage = UIImage(named: "usa")
        let canadaImage = UIImage(named: "kanada")
        
        if firstFlagImage.image == argetinaImage {
            firstStorage.append("Аргетина")
        } else if firstFlagImage.image == usaImage {
            firstStorage.append("США")
        }  else if firstFlagImage.image == canadaImage {
            firstStorage.append("Канада")
        }
        // secondFlagImage
        let brazilImage = UIImage(named: "brazil")
        let mexicoImage = UIImage(named: "mexico")
        let cubaImage = UIImage(named: "cuba")
        
        if secondFlagImage.image == brazilImage {
            secondStorage.append("Бразилия")
        } else if secondFlagImage.image == mexicoImage {
            secondStorage.append("Мексика")
        }  else if secondFlagImage.image == cubaImage {
            secondStorage.append("Куба")
        }
        // thirdFlagImage flags
        let chileImage = UIImage(named: "chile")
        let ecuadorImage = UIImage(named: "ecuador")
        let hondurasImage = UIImage(named: "honduras")
        
        if thirdFlagImage.image == chileImage {
            thirdStorage.append("Чили")
        } else if thirdFlagImage.image == ecuadorImage {
            thirdStorage.append("Эквадор")
        } else if thirdFlagImage.image == hondurasImage {
            thirdStorage.append("Гондурас")
        }
        // fourthFlagImage flags
        let dRImage = UIImage(named: "colombia")
        let uruguayImage = UIImage(named: "uruguay")
        let salvadorImage = UIImage(named: "salvador")
        
        if fourthFlagImage.image == dRImage {
            fourthStorage.append("Колумбия")
        } else if fourthFlagImage.image == uruguayImage {
            fourthStorage.append("Уругвай")
        } else if fourthFlagImage.image == salvadorImage {
            fourthStorage.append("Сальвадор")
        }
        
        let array = [firstStorage.randomElement(), secondStorage.randomElement(), thirdStorage.randomElement(), fourthStorage.randomElement()]
        
        if let a = array.randomElement() {
            sender.text = a
        }
    }
    // Count round in game
    private  func countRound(sender: UIButton) {
        var text: String = ""
        
        if rounds != 1 {
            if sender.isTouchInside {
                rounds -= 1
            }
        } else {
            
            switch score {
            case -10...0:
                text = "Иди учись, неуч!"
            case 1...3:
                text = "Очень плохо!"
            case 4...5:
                text = "Плохо!"
            case 6...8:
                text = "Неплохо!"
            case 9...10:
                text = "Вы гений!"
            default:
                break
            }
            
            let alert = UIAlertController(title: text, message: "Ваш результат - \(scoreLabel.text!)", preferredStyle: .alert)
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
