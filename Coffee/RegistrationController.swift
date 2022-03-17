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
    
    let emailTextField = UITextField(placeholder: "example@example.ru")
    let passwordTextField = UITextField(placeholder: "******")
    let confirmPasswordTextField = UITextField(placeholder: "******")
    
    let registerButton = UIButton(title: "Регистрация")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
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
        
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        registerButton.heightAnchor.constraint(equalToConstant: 47).isActive = true
        
        
        let stackView = UIStackView(arrangedSubviews: [emailForm, passwordForm, confirmPasswordForm, registerButton],
                                    axis: .vertical,
                                    spacing: 24.49)
        
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 278.49),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
            
        ])
        
    }
}

// MARK: - SwiftUI

import SwiftUI

struct RegControllerProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let registrVC = RegistrationController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<RegControllerProvider.ContainerView>) -> RegistrationController {
            return registrVC
        }
        
        func updateUIViewController(_ uiViewController: RegControllerProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<RegControllerProvider.ContainerView>) {
            
        }
    }
}

