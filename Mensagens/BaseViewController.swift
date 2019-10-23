//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Brian Diego De Souza on 16/10/19.
//  Copyright © 2019 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    @IBOutlet weak var lbMessage: UILabel!
    var message: Message!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeColor(_ sender: UIButton) {
        
        if let reference = self as? ColorPickerDelegate {
            
        let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
        colorPicker.modalPresentationStyle = .overCurrentContext
        colorPicker.delegate = reference
        present(colorPicker, animated: true, completion: nil)
            
        }
    }
}
