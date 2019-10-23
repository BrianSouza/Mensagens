//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by Brian Diego De Souza on 17/10/19.
//  Copyright © 2019 Eric Brito. All rights reserved.
//

import UIKit

protocol ColorPickerDelegate{
    func applyColor(Color: UIColor)
}

class ColorPickerViewController: UIViewController {

    @IBOutlet weak var viColor: UIView!
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var slBlue: UISlider!
    
    var delegate: ColorPickerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func chooseColor(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        delegate?.applyColor(Color: viColor.backgroundColor!)
    }
    @IBAction func changeColor(_ sender: UISlider) {
        
        
        viColor.backgroundColor = UIColor(displayP3Red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha: 1.0)
    }
    
}
