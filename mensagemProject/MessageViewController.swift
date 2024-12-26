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
    
    override func changeColor(_ sender: UIButton) {
        let colorPicker = storyboard?.instantiateViewController(identifier: "ColorPickerViewController") as! ColorPickerViewController
        colorPicker.modalTransitionStyle = .crossDissolve // apresentacao do model em modo de scale
//        colorPicker.modalTransitionStyle = .flipHorizontal// apresentacao do model em modo card
//        colorPicker.modalTransitionStyle = .coverVertical // apresentacao do model de baixo para cima
        present(colorPicker, animated: true, completion: nil)
    }
}

extension MessageViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        message.text = textField.text!
        lbMessage.text = message.text!
        
        return true
    }
}
