//
//  BaseViewController.swift
//  mensagemProject
//
//  Created by ednardo alves on 21/12/24.
//

import UIKit

class BaseViewController: UIViewController {
    
    @IBOutlet weak var lbMessage: UILabel!
    var message: Message!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func changeColor(_ sender: UIButton){
        if let reference = self as? colorPickerDelegate {
            let colorPicker = storyboard?.instantiateViewController(identifier: "ColorPickerViewController") as! ColorPickerViewController
            colorPicker.modalTransitionStyle = .crossDissolve // apresentacao do model em modo de scale
    //        colorPicker.modalTransitionStyle = .flipHorizontal// apresentacao do model em modo card
    //        colorPicker.modalTransitionStyle = .coverVertical // apresentacao do model de baixo para cima
            colorPicker.delegate = reference
            present(colorPicker, animated: true, completion: nil)
        }
    }
}
