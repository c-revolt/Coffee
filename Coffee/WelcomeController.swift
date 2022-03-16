//
//  ViewController.swift
//  Coffee
//
//  Created by Александр Прайд on 16.03.2022.
//

import UIKit

class WelcomeController: UIViewController {
    
    
    // properties
    let registerButton = UIButton(title: "Регистрация",
                                  titleColor: .titleButtonColor(),
                                  font: .sfProDisplay18(),
                                  backgroundColor: .buttonCoffeeColor())
    
    let loginButton = UIButton(title: "Вход",
                               titleColor: .titleButtonColor(),
                               font: .sfProDisplay18(),
                               backgroundColor: .buttonCoffeeColor())
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .mainBackgroundColor()
        setupConstraints()
    }
    
    private func setupConstraints() {
        
        let homeButtons = PairOfButtonsView(firstButton: registerButton,
                                          secondButton: loginButton)
        
        let stackView = UIStackView(arrangedSubviews: [homeButtons])
        
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 100
        
        NSLayoutConstraint.activate([
        
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 600),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
            
        ])
        
    }


}


// MARK: - SwiftUI

import SwiftUI

struct ViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let welcomeVC = WelcomeController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) -> WelcomeController {
            return welcomeVC
        }
        
        func updateUIViewController(_ uiViewController: ViewControllerProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) {
            
        }
    }
}

