//
//  MenuCell.swift
//  Coffee
//
//  Created by Александр Прайд on 21.04.2022.
//

import UIKit

class MenuCell: UICollectionViewCell {

    
    let menuCellView = UIView()
    lazy var productImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "cup.and.saucer.fill")
        imageView.backgroundColor = .green
        imageView.layer.cornerRadius = 5
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var productNameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = .labelTextColor()
        label.font = UIFont.sfProDisplay18()
        return label
    }()
    
    lazy var pricelabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = .labelTextColor()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var minusButtonPressed: UIButton = {
        let button = UIButton()

        button.setTitle("-", for: .normal)
        button.setTitleColor(UIColor.labelTextColor(), for: .normal)
        button.backgroundColor = .clear
        return button
    }()
    
    lazy var plusButtonPressed: UIButton = {
        let button = UIButton()

        button.setTitle("+", for: .normal)
        button.setTitleColor(UIColor.labelTextColor(), for: .normal)
        button.backgroundColor = .clear
        return button
    }()
    
    lazy var countLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = .labelTextColor()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupMenuCellView()
        
    }
    
    
    // установка view
    private func setupMenuCellView() {

        addSubview(menuCellView)
        menuCellView.ancor(top: self.topAnchor,
                           leading: self.leadingAnchor,
                           bottom: self.bottomAnchor,
                           trailling: self.trailingAnchor)


        menuCellView.backgroundColor = .white
        menuCellView.layer.cornerRadius = 5
        menuCellView.clipsToBounds = true


        menuCellView.layer.masksToBounds = false
        menuCellView.layer.shadowColor = UIColor.black.cgColor
        menuCellView.layer.shadowRadius = 1
        menuCellView.layer.shadowOpacity = 0.2
        menuCellView.layer.shadowOffset = CGSize(width: 0, height: 4)
    }
    
    
    private func setupConstraints() {
        
        productImageView.translatesAutoresizingMaskIntoConstraints = false
        productNameLabel.translatesAutoresizingMaskIntoConstraints = false
        pricelabel.translatesAutoresizingMaskIntoConstraints = false
        minusButtonPressed.translatesAutoresizingMaskIntoConstraints = false
        plusButtonPressed.translatesAutoresizingMaskIntoConstraints = false
        countLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        menuCellView.addSubview(productImageView)
        menuCellView.addSubview(productNameLabel)
        menuCellView.addSubview(pricelabel)
        menuCellView.addSubview(minusButtonPressed)
        menuCellView.addSubview(countLabel)
        menuCellView.addSubview(plusButtonPressed)
        
        NSLayoutConstraint.activate([
            productImageView.topAnchor.constraint(equalTo: menuCellView.topAnchor),
            productImageView.leadingAnchor.constraint(equalTo: menuCellView.leadingAnchor),
            productImageView.trailingAnchor.constraint(equalTo: menuCellView.trailingAnchor),
            productImageView.heightAnchor.constraint(equalToConstant: 137)
        
        ])
        
        NSLayoutConstraint.activate([
            productNameLabel.topAnchor.constraint(equalTo: productImageView.bottomAnchor, constant: 10),
            productNameLabel.leadingAnchor.constraint(equalTo: menuCellView.leadingAnchor, constant: 11),
            productNameLabel.trailingAnchor.constraint(equalTo: menuCellView.trailingAnchor),
            productNameLabel.heightAnchor.constraint(equalToConstant: 18)
        ])
        
        NSLayoutConstraint.activate([
            pricelabel.topAnchor.constraint(equalTo: productNameLabel.bottomAnchor, constant: 12),
            pricelabel.leadingAnchor.constraint(equalTo: menuCellView.leadingAnchor, constant: 11),
            //pricelabel.bottomAnchor.constraint(equalTo: menuCellView.bottomAnchor, constant: 11),
            pricelabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        NSLayoutConstraint.activate([
            plusButtonPressed.topAnchor.constraint(equalTo: productImageView.bottomAnchor, constant: 43),
            plusButtonPressed.trailingAnchor.constraint(equalTo: menuCellView.trailingAnchor, constant: -13),
            //plusButtonPressed.bottomAnchor.constraint(equalTo: menuCellView.bottomAnchor, constant: 13)
            plusButtonPressed.heightAnchor.constraint(equalToConstant: 12)
        ])
        
        NSLayoutConstraint.activate([
            countLabel.topAnchor.constraint(equalTo: productImageView.bottomAnchor, constant: 43),
            countLabel.trailingAnchor.constraint(equalTo: plusButtonPressed.leadingAnchor, constant: -13),
            countLabel.heightAnchor.constraint(equalToConstant: 12)
        ])
        
        NSLayoutConstraint.activate([
            minusButtonPressed.topAnchor.constraint(equalTo: productImageView.bottomAnchor, constant: 43),
            minusButtonPressed.trailingAnchor.constraint(equalTo: countLabel.leadingAnchor, constant: -13),
            //plusButtonPressed.bottomAnchor.constraint(equalTo: menuCellView.bottomAnchor, constant: 13)
            minusButtonPressed.heightAnchor.constraint(equalToConstant: 12),
        ])
        
    }
    
    
}
