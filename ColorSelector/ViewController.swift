//
//  ViewController.swift
//  ColorSelector
//
//  Created by admin2 on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {

    // view
    @IBOutlet var colorView: UIView!
    // slides
    @IBOutlet var redColorSlide: UISlider!
    @IBOutlet var greenColorSlide: UISlider!
    @IBOutlet var blueColorSlide: UISlider!
    // counters
    @IBOutlet var redCounter: UITextField!
    @IBOutlet var greenCounter: UITextField!
    @IBOutlet var blueCounter: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColorSlide.value = 0.0
        redColorSlide.minimumValue = 0.0
        redColorSlide.maximumValue = 1.0
        
        greenColorSlide.value = 0.0
        greenColorSlide.minimumValue = 0.0
        greenColorSlide.maximumValue = 1.0
       
        blueColorSlide.value = 0.0
        blueColorSlide.minimumValue = 0.0
        blueColorSlide.maximumValue = 1.0
         
        colorView.layer.cornerRadius = 20
        
        
        
        
        
    }

    
    @IBAction func redChanger() {
        redCounter.text = "\(redColorSlide.value)"
        
        colorView.backgroundColor = UIColor(red: CGFloat((redColorSlide.value)*100)/100, green: CGFloat((greenColorSlide.value)*100)/100, blue: CGFloat((blueColorSlide.value)*100)/100, alpha: 255.0/255.0)
        
        
        
    }
    
    @IBAction func greenChanger() {
        greenCounter.text = "\(greenColorSlide.value)"
        colorView.backgroundColor = UIColor(red: CGFloat((redColorSlide.value)*100)/100, green: CGFloat((greenColorSlide.value)*100)/100, blue: CGFloat((blueColorSlide.value)*100)/100, alpha: 255.0/255.0)
    }
    
    @IBAction func blueChanger() {
        blueCounter.text = "\(blueColorSlide.value)"
        colorView.backgroundColor = UIColor(red: CGFloat((redColorSlide.value)*100)/100, green: CGFloat((greenColorSlide.value)*100)/100, blue: CGFloat((blueColorSlide.value)*100)/100, alpha: 255.0/255.0)
    }
   
    
        
}

