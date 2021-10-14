//
//  ViewController.swift
//  AlertPopper
//
//  Created by John Ireton on 10/14/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapBeginNowButton(_ sender: UIButton) {
        let vc = SecondViewController.initFromStoryboard(name: "numberTwo")
        self.navigateTo(vc)
    }

    private func navigateTo(_ vc: UIViewController) {
        self.navigationItem.hideBackButtonTitle()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension UINavigationItem {
    func hideBackButtonTitle() {
        // TODO
    }
}

extension UIViewController {
    static func initFromStoryboard(name: String) -> UIViewController {
        let vc: UIViewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: name) as UIViewController
        
        return vc
    }
}
