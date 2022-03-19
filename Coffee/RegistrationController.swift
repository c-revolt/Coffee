//
//  RegistrationController.swift
//  Coffee
//
//  Created by Александр Прайд on 17.03.2022.
//

import UIKit

class RegistrationController: UIViewController {
    
    // properties
    
    let emailLabel = UILabel(text: "e-mail")
    let passwordLabel = UILabel(text: "Пароль")
    let confirmPasswordLabel = UILabel(text: "Повторите пароль")
    
    let emailTextField = UITextField(placeholder: "example@example.ru", isSecureTextEntry: false)
    let passwordTextField = UITextField(placeholder: "******", isSecureTextEntry: true)
    let confirmPasswordTextField = UITextField(placeholder: "******", isSecureTextEntry: true)
    
    let registerButton = UIButton(title: "Регистрация")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        emailTextField.indent(size: 18.5)
        passwordTextField.indent(size: 18.5)
        confirmPasswordTextField.indent(size: 18.5)
        
        setupConstraints()
        settingsNavController()
        
    }
    
    private func settingsNavController() {
        navigationItem.title = "Регистрация"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.labelTextColor()]
        navigationController?.navigationBar.barTintColor = .navControllerColor()
                
    }
}

// MARK: - Setup Constraints
extension RegistrationController {
    private func setupConstraints() {
        
        let emailForm = LabelAndTextFieldFormView(label: emailLabel, textField: emailTextField)
        let passwordForm = LabelAndTextFieldFormView(label: passwordLabel, textField: passwordTextField)
        let confirmPasswordForm = LabelAndTextFieldFormView(label: confirmPasswordLabel, textField: confirmPasswordTextField)
        
        registerButton.heightAnchor.constraint(equalToConstant: 47).isActive = true

        
        
        let stackView = UIStackView(arrangedSubviews: [emailForm, passwordForm, confirmPasswordForm],
                                    axis: .vertical,
                                    spacing: 24.49)
        
        let buttonStackView = UIStackView(arrangedSubviews: [registerButton], axis: .vertical, spacing: 0)
        
        view.addSubview(stackView)
        view.addSubview(buttonStackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 278.49),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
            
        ])
        
        NSLayoutConstraint.activate([
            buttonStackView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 30.51),
            buttonStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            buttonStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18)
        
        ])
        
    }
}
