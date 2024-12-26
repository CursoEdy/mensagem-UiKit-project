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
    }
    
    override func changeColor(_ sender: UIButton) {
        let colorPicker = storyboard?.instantiateViewController(identifier: "ColorPickerViewController") as! ColorPickerViewController
        colorPicker.modalTransitionStyle = .crossDissolve // apresentacao do model em modo de scale
        present(colorPicker, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
