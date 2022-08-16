//
//  ViewController.swift
//  Project2
//
//  Created by Gizem Coşkun on 14.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var scoreLabel: UILabel!
    
    var countries = [String]()
    var correctAnswer = 0
    var score = 0 {
        didSet{
            
            scoreLabel.text = "Score: \(score)"
            
        }
    }
      
    override func viewDidLoad() {
        
        super.viewDidLoad()

        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        button1.layer.borderWidth = 1
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button1.layer.cornerRadius = 16
        button1.clipsToBounds = true
        askQuestion()
        
        
       
    }
    
    func askQuestion(action: UIAlertAction! = nil){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        title = (countries[correctAnswer].uppercased())
        
        
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        var message: String
        if sender.tag == correctAnswer{
            title = "Correct"
            score  += 1
            message = "Your score is \(score)"
        }else{
            title = "Wrong"
            score -= 1
            message = "That is the flag of \(countries[sender.tag].uppercased())"
        }
        
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        present(ac, animated: true)
    }
    
    
}

