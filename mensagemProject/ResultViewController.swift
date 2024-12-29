//
//  ResultViewController.swift
//  mensagemProject
//
//  Created by ednardo alves on 21/12/24.
//

import UIKit

// Herdando metodos da class BaseViewController
class ResultViewController: BaseViewController {

    @IBOutlet weak var viBorder: UIView!
    
    // confirmar se a borda esta ativa
    var useWhiteBorder: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbMessage.text = message.text
        lbMessage.textColor = message.textColor
        lbMessage.backgroundColor = message.backgroundColor
        view.backgroundColor = message.screenColor
        viBorder.backgroundColor = useWhiteBorder ? .white : .clear

        navigationController?.setNavigationBarHidden(true, animated: true)
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        navigationController?.popViewController(animated: true)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
