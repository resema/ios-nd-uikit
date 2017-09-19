//
//  ViewController.swift
//  ColorMakerSllider
//
//  Created by Renato Semadeni on 10.01.17.
//  Copyright © 2017 Renato Semadeni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var colorView: UIView!
  @IBOutlet weak var redSlider: UISlider!
  @IBOutlet weak var greenSlider: UISlider!
  @IBOutlet weak var blueSlider: UISlider!

  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }


  @IBAction func changeColorComponent(sender: AnyObject) {
    
    let r: Float = self.redSlider.value
    let g: Float = self.greenSlider.value
    let b: Float = self.blueSlider.value
    
    colorView.backgroundColor = UIColor(colorLiteralRed: r, green: g, blue: b, alpha: 1.0)
  }

}

