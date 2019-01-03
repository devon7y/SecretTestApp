//
//  ViewController.swift
//  MillionDollarAppTest
//
//  Created by Devon Yanitski on 2018-12-31.
//  Copyright © 2018 Devon Yanitski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var keyboardView: UIView!
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet var letterKeys: [UIButton]!
    @IBOutlet var otherKeys: [UIButton]!
    
    var keyboardOutput = [String]()
    
    var capitalIsToggled = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeRight.direction = .right
        keyboardView.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeRight.direction = .left
        keyboardView.addGestureRecognizer(swipeLeft)
        
        for key in letterKeys {
            key.layer.cornerRadius = 5
            key.clipsToBounds = true
        }
        for key in otherKeys {
            key.layer.cornerRadius = 5
            key.clipsToBounds = true
        }
    }
    
    @objc func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizer.Direction.right:
                keyboardOutput.append("*SWIPED RIGHT*")
                outputLabel.text = "\(keyboardOutput.joined())"
            case UISwipeGestureRecognizer.Direction.left:
                keyboardOutput.append("*SWIPED LEFT*")
                outputLabel.text = "\(keyboardOutput.joined())"
            default:
                break
            }
        }
    }
    
    func capitalizeLettersIfNeeded() {
        for key in letterKeys {
            if capitalIsToggled == true {
                key.setTitle("\(key.titleLabel!.text!.uppercased())", for: .normal)
            } else {
                key.setTitle("\(key.titleLabel!.text!.lowercased())", for: .normal)
            }
        }
    }
    
    @IBAction func qKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("Q")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("q")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func wKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("W")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("w")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func eKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("E")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("e")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func rKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("R")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("r")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func tKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("T")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("t")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func yKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("Y")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("y")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func uKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("U")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("u")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func iKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("I")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("i")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func oKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("O")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("o")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func pKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("P")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("p")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func aKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("A")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("a")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func sKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("S")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("s")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func dKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("D")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("d")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func fKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("F")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("f")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func gKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("G")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("g")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func hKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("H")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("j")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func jKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("J")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("j")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func kKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("K")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("k")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func lKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("L")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("l")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func capitalizeKeyPressed(_ sender: Any) {
        capitalIsToggled.toggle()
        capitalizeLettersIfNeeded()
    }
    @IBAction func zKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("Z")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("z")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func xKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("X")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("x")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func cKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("C")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("c")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func vKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("V")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("v")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func bKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("B")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("b")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func nKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("N")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("n")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func mKeyPressed(_ sender: Any) {
        if capitalIsToggled == true {
            keyboardOutput.append("M")
            capitalIsToggled.toggle()
            capitalizeLettersIfNeeded()
        } else {
            keyboardOutput.append("m")
        }
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func backspaceKeyPressed(_ sender: Any) {
        if keyboardOutput.count > 0 {
            keyboardOutput.removeLast()
            outputLabel.text = "\(keyboardOutput.joined())"
        } else {
            print("Can't remove last item.")
        }
    }
    @IBAction func numbersKeyPressed(_ sender: Any) {
        keyboardOutput.append("*NUMBERS*")
        outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func emojisKeyPressed(_ sender: Any) {
        keyboardOutput.append("*EMOJI*")
            outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func microphoneKeyPressed(_ sender: Any) {
        keyboardOutput.append("*MICROPHONE*")
            outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func spaceKeyPressed(_ sender: Any) {
        keyboardOutput.append(" ")
            outputLabel.text = "\(keyboardOutput.joined())"
    }
    @IBAction func returnKeyPressed(_ sender: Any) {
        keyboardOutput.append("*RETURN*")
            outputLabel.text = "\(keyboardOutput.joined())"
    }
    
    
    
    
    
}

