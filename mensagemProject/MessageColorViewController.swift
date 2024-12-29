//
//  MessageColorViewController.swift
//  mensagemProject
//
//  Created by ednardo alves on 21/12/24.
//

import UIKit

// Herdando metodos da class BaseViewController
class MessageColorViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        lbMessage.text = message.text
        lbMessage.textColor = message.textColor
        lbMessage.backgroundColor = message.backgroundColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ScreenColorViewController
        vc.message = message
    }
}

extension MessageColorViewController: colorPickerDelegate {
    func applyColor(color: UIColor) {
        lbMessage.backgroundColor = color
        message.backgroundColor = color
    }
}
