//
//  SecondViewController.swift
//  AlertPopper
//
//  Created by John Ireton on 10/14/21.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let alert = UIAlertController(title: "Alert",
                                      message: "Message",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Click",
                                      style: .default,
                                      handler: {_ in
                                        self.navigationController?.popViewController(animated: true)
                                      }))
        self.present(alert,
                     animated: true,
                     completion: nil)
    }
}

