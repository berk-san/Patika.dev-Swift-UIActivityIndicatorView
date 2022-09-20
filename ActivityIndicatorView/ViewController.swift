//
//  ViewController.swift
//  ActivityIndicatorView
//
//  Created by Berk on 20.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var warningLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didLoginButtonTapped(_ sender: UIButton) {
        if userNameTextField.text == "berk" {
            passwordTextField.isHidden = false
            if passwordTextField.text == "123456" {
                warningLabel.text = ""
                activityIndicatorView.startAnimating()
            } else {
                warningLabel.text = "Please enter a valid password"
            }
        } else if userNameTextField.text != "berk" {
            warningLabel.text = "Please enter a valid username"
        } else {
            warningLabel.text = "Please enter your username and password"
        }
    }


}

