//
//  ViewController.swift
//  Allert and Git
//
//  Created by admin on 04.02.2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func showAler(_ sender: Any) {
        let alert = UIAlertController(title: "Photo Access", message: "Do yo allow to use your phoos?", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
        
        
    }
    @IBAction func showActionSheet(_ sender: Any) {
    }
}

