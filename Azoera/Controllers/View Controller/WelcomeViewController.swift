//
//  WelcomeViewController.swift
//  Azoera
//
//  Created by Leonardo Diaz on 5/16/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var loginToggleButton: UIButton!
    @IBOutlet weak var signUpToggleButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmTextField: UITextField!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var faqButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    private func setUpUI(){
        loginToggleButton.rotate()
        signUpToggleButton.rotate()
        loginToggleButton.tintColor = UIColor.subltleTextColor
        signUpToggleButton.tintColor = UIColor.mainTextColor
        faqButton.setTitleColor(.greenAccent, for: .normal)
        helpButton.setTitleColor(.mainTextColor, for: .normal)
        self.view.backgroundColor = .spaceGray
    }
    
    
    private func toggleToLogin(){
        UIView.animate(withDuration: 0.2) {
            self.confirmTextField.isHidden = true
            self.loginToggleButton.tintColor = .mainTextColor
            self.signUpToggleButton.tintColor = .subltleTextColor
            self.signUpButton.setTitle("Log me in", for: .normal)
            self.helpButton.setTitle("Forgot?", for: .normal)
            self.faqButton.setTitle("Remind", for: .normal)
        }
    }
    
    private func toggleToSignUp(){
        UIView.animate(withDuration: 0.2) {
            self.confirmTextField.isHidden = false
            self.loginToggleButton.tintColor = .subltleTextColor
            self.signUpToggleButton.tintColor = .mainTextColor
            self.signUpButton.setTitle("Sign me up", for: .normal)
            self.helpButton.setTitle("Help?", for: .normal)
            self.faqButton.setTitle("FAQ", for: .normal)
        }
    }
    
    //MARK: - Actions
    @IBAction func toggleLoginTapped(_ sender: Any) {
        toggleToLogin()
    }
    
    @IBAction func toggleSignUpTapped(_ sender: Any) {
        toggleToSignUp()
    }
    
}
