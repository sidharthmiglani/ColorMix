//
//  ViewController.swift
//  ColorMix
//
//  Created by Sidharth Miglani on 2019-01-14.
//  Copyright © 2019 Sidharth Miglani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        updateColor()
        // Do any additional setup after loading the view, typically from a nib.
    }
  
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
    }
    
    @IBAction func redSwitch(_ sender: UISwitch) {
        updateColor()
    }
    @IBAction func greenSwitch(_ sender: UISwitch) {
        updateColor()
    }
    @IBAction func blueSwitch(_ sender: UISwitch) {
        updateColor()
    }
    
    func updateColor(){
        var red: CGFloat=0
        var blue: CGFloat=0
        var green: CGFloat=0
        if redSwitch.isOn{
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn{
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn{
            blue = CGFloat(blueSlider.value)
        }
        let color=UIColor(red:red,green:green,blue:blue,alpha:1)
        colorView.backgroundColor=color
    }
    @IBAction func blueSlider(_ sender: UISlider) {
    }
    @IBAction func redSlider(_ sender: UISlider) {
    }
    @IBAction func greenSlider(_ sender: UISlider) {
    }
    @IBAction func sliderChanged(_ sender: Any) {
        updateColor()
    }
    @IBAction func reset(_ sender: Any) {
    }
}

