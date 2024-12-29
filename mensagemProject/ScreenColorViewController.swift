//
//  ScreenColorViewController.swift
//  mensagemProject
//
//  Created by ednardo alves on 21/12/24.
//

import UIKit

// Herdando metodos da class BaseViewController
class ScreenColorViewController: BaseViewController {

    @IBOutlet weak var viBorder: UIView!
    @IBOutlet weak var swBoder: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbMessage.text = message.text
        lbMessage.textColor = message.textColor
        lbMessage.backgroundColor = message.backgroundColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ResultViewController
        vc.message = message
        vc.useWhiteBorder = swBoder.isOn
    }
    
    @IBAction func onBorder(_ sender: UISwitch) {
        viBorder.backgroundColor = sender.isOn ? .white : .clear
    }
}

extension ScreenColorViewController: colorPickerDelegate {
    func applyColor(color: UIColor) {
        view.backgroundColor = color
        message.screenColor = color
    }
}
