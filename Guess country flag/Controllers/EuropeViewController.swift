//
//  EuropeViewController.swift
//  Guess country flag
//
//  Created by Денис  on 29.09.2022.
//

import UIKit

class EuropeViewController: UIViewController {

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

        countryStorage1 = ["Франция": UIImage(named: "france")!, "Молдавия": UIImage(named: "moldova")!, "Украина": UIImage(named: "ukraine")!]
        countryStorage2 = ["Албания": UIImage(named: "albania")!, "Болгария": UIImage(named: "bulgary")!, "Германия": UIImage(named: "germany")!]
        countryStorage3 = ["Лихтенштейн": UIImage(named: "liechtenstein")!, "Польша": UIImage(named: "poland")!, "Румыния": UIImage(named: "romania")!]
        countryStorage4 = ["Испания": UIImage(named: "spain")!, "Швеция": UIImage(named: "sweden")!, "Швейцария": UIImage(named: "switzerland")!]
        
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
        
        if questionLabel.text == "Франция" {
            let franceImage = UIImage(named: "france")
            if sender.image == franceImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Молдавия" {
            let moldovaImage = UIImage(named: "moldova")
            if sender.image == moldovaImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Украина" {
            let ukraineImage = UIImage(named: "ukraine")
            if sender.image == ukraineImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Албания" {
            let albaniaImage = UIImage(named: "albania")
            if sender.image == albaniaImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if  questionLabel.text == "Болгария" {
            let bulgaryImage = UIImage(named: "bulgary")
            if sender.image == bulgaryImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Германия" {
            let germanyImage = UIImage(named: "germany")
            if sender.image == germanyImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Лихтенштейн" {
            let liechtensteinImage = UIImage(named: "liechtenstein")
            if sender.image == liechtensteinImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Польша" {
            let polandImage = UIImage(named: "poland")
            if sender.image == polandImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Румыния" {
            let romaniaImage = UIImage(named: "romania")
            if sender.image == romaniaImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Испания" {
            let spainImage = UIImage(named: "spain")
            if sender.image == spainImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if questionLabel.text == "Швеция" {
            let swedenImage = UIImage(named: "sweden")
            if sender.image == swedenImage {
                correctAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            } else {
                wrongAnswer()
                downloadImage(sender1: firstFlagImage, sender2: secondFlagImage, sender3: thirdFlagImage, sender4: fourthFlagImage)
                downloadName(sender: questionLabel)
            
            }
        } else if  questionLabel.text == "Швейцария" {
            let switzerlandImage = UIImage(named: "switzerland")
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
        let franceImage = UIImage(named: "france")
        let moldovaImage = UIImage(named: "moldova")
        let ukraineImage = UIImage(named: "ukraine")
        
        if firstFlagImage.image == franceImage {
            firstStorage.append("Франция")
        } else if firstFlagImage.image == moldovaImage {
            firstStorage.append("Молдавия")
        }  else if firstFlagImage.image == ukraineImage {
            firstStorage.append("Украина")
        }
        // secondFlagImage
        let albaniaImage = UIImage(named: "albania")
        let bulgaryImage = UIImage(named: "bulgary")
        let germanyImage = UIImage(named: "germany")
        
        if secondFlagImage.image == albaniaImage {
            secondStorage.append("Албания")
        } else if secondFlagImage.image == bulgaryImage {
            secondStorage.append("Болгария")
        }  else if secondFlagImage.image == germanyImage {
            secondStorage.append("Германия")
        }
        // thirdFlagImage flags
        let liechtensteinImage = UIImage(named: "liechtenstein")
        let polandImage = UIImage(named: "poland")
        let romaniaImage = UIImage(named: "romania")
        
        if thirdFlagImage.image == liechtensteinImage {
            thirdStorage.append("Лихтенштейн")
        } else if thirdFlagImage.image == polandImage {
            thirdStorage.append("Польша")
        } else if thirdFlagImage.image == romaniaImage {
            thirdStorage.append("Румыния")
        }
        // fourthFlagImage flags
        let spainImage = UIImage(named: "spain")
        let swedenImage = UIImage(named: "sweden")
        let switzerlandImage = UIImage(named: "switzerland")
        
        if fourthFlagImage.image == spainImage {
            fourthStorage.append("Испания")
        } else if fourthFlagImage.image == swedenImage {
            fourthStorage.append("Швеция")
        } else if fourthFlagImage.image == switzerlandImage {
            fourthStorage.append("Швейцария")
        }
        
        let array = [firstStorage.randomElement(), secondStorage.randomElement(), thirdStorage.randomElement(), fourthStorage.randomElement()]
        
        if let a = array.randomElement() {
            sender.text = a
        }
    }
    // Count round in game
    private func countRound(sender: UIButton) {
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
