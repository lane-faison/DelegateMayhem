//
//  SendingVC.swift
//  DelegateMayhem
//
//  Created by Lane Faison on 7/29/17.
//  Copyright © 2017 Lane Faison. All rights reserved.
//

import UIKit

protocol DataSentDelegate {
    func userDidEnterData(data: String)
}

class SendingVC: UIViewController {

    @IBOutlet weak var dataEntryTextField: UITextField!
    
    var delegate: DataSentDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()


    
    
    }

    @IBAction func sendBtnPressed(_ sender: Any) {
        
        if delegate != nil {
            if dataEntryTextField.text != nil {
                let data = dataEntryTextField.text
                delegate?.userDidEnterData(data: data!)
                dismiss(animated: true, completion: nil)
            }
        }
        
    }

}
