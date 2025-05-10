//
//  ViewController.swift
//  RGB
//
//  Created by Володя Рудик on 10.05.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var fieldRGB: UIView!
    
    @IBOutlet var blueValue: UILabel!
    @IBOutlet var blueColor: UISlider!
    
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var greenColor: UISlider!
    
    @IBOutlet var redValue: UILabel!
    @IBOutlet var redColor: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fieldRGB.layer.cornerRadius = 20
        fieldRGB.layer.backgroundColor = CGColor(
            red: CGFloat(redColor.value),
            green: CGFloat(greenColor.value),
            blue: CGFloat(blueColor.value),
            alpha: 1
        )
        
        blueValue.text = String(format: "%.2f", blueColor.value)
        greenValue.text = String(format: "%.2f", greenColor.value)
        redValue.text = String(format: "%.2f", redColor.value)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        fieldRGB.layer.cornerRadius = 20
        fieldRGB.layer.backgroundColor = CGColor(
            red: CGFloat(redColor.value),
            green: CGFloat(greenColor.value),
            blue: CGFloat(blueColor.value),
            alpha: 1
        )
        
    }
    
    @IBAction func redSlider() {
        redValue.text = String(format: "%.2f", redColor.value)
    }
    @IBAction func greenSlider() {
        greenValue.text = String(format: "%.2f", greenColor.value)
    }
    @IBAction func blueSlider() {
        blueValue.text = String(format: "%.2f", blueColor.value)
    }
}

