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
        enum Films: String {
            case film1 = "Spider Man"
            case film2 = "Bat Man"
        }
        
        let alert = UIAlertController(title: nil, message: "Choose Film", preferredStyle: .actionSheet)
        
        let handler: (_ type: Films) -> (UIAlertAction) -> Void = { type in
            return { action  in
                print(type.rawValue)
            }
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
        
        let film1 = UIAlertAction(title: Films.film1.rawValue, style: .default, handler: handler(.film1))
        alert.addAction(film1)
        
        
        let film2 = UIAlertAction(title: Films.film2.rawValue, style: .default, handler: handler(.film2))
        alert.addAction(film2)
        
        present(alert, animated: true, completion: nil)
    }
}

