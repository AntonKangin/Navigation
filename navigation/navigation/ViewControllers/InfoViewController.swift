//
//  InfoViewController.swift
//  navigation
//
//  Created by Антон Кангин on 25.06.2021.
//

import UIKit

class InfoViewController: UIViewController {

  @IBAction func showAlertAction(_ sender: Any) {
    let alertController = UIAlertController(title: "Alert title", message: "Alert message", preferredStyle: .alert)
    
    let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in print("Cancel pressed")})
    let actionOK = UIAlertAction(title: "OK", style: .default, handler: { _ in print("OK pressed")})
    
    alertController.addAction(actionCancel)
    alertController.addAction(actionOK)
    
    present(alertController, animated: true, completion: nil)
  }
  
  override func viewDidLoad() {
        super.viewDidLoad()
    }
}
