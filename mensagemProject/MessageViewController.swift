//
//  MessageViewController.swift
//  mensagemProject
//
//  Created by ednardo alves on 21/12/24.
//

import UIKit

// Herdando metodos da class BaseViewController
class MessageViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        message = Message()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MessageColorViewController
        vc.message = message
    }
}

extension MessageViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        message.text = textField.text!
        lbMessage.text = textField.text!
        textField.resignFirstResponder()
        return true
    }
}

extension MessageViewController: colorPickerDelegate {
    func applyColor(color: UIColor) {
        lbMessage.textColor = color
        message.textColor = color
    }
}
