//
//  ReceivingVC.swift
//  DelegateMayhem
//
//  Created by Lane Faison on 7/29/17.
//  Copyright © 2017 Lane Faison. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController, DataSentDelegate {

    @IBOutlet weak var receivingTF: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    func userDidEnterData(data: String) {
        receivingTF.text = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSendingVC" {
            let sendingVC: SendingVC = segue.destination as! SendingVC
            sendingVC.delegate = self
        }
    }
}

