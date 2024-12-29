//
//  ColorPickerViewController.swift
//  mensagemProject
//
//  Created by ednardo alves on 23/12/24.
//

import UIKit

protocol colorPickerDelegate: AnyObject {
    func applyColor(color: UIColor)
}

class ColorPickerViewController: UIViewController {

    @IBOutlet weak var viColor: UIView!
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    // Criar refencia da view
    weak var delegate: colorPickerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnConfirmar(_ sender: UIButton) {
        delegate?.applyColor(color: viColor.backgroundColor!)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func changeColor(_ sender: Any) {
        viColor.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1.0
        )
    }
    
}
