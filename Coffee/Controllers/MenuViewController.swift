//
//  MenuViewController.swift
//  Coffee
//
//  Created by Александр Прайд on 13.04.2022.
//

import UIKit

class MenuViewController: UIViewController {
    
    let footerView = UIView()
    let goToThePaymentButton = UIButton(title: K.buttonsTitles.goToPaymentButtonTitle)
    var collectionView: UICollectionView! = nil
    var menuCellView = UIView()
    
    
    let staticProductData = [
        ProductModel(image: UIImage(named: "cup.and.saucer.fill"), nameLabel: "Эспрессо", priceLabel: "200р", countLabel: "0"),
        ProductModel(image:  UIImage(systemName: "cup.and.saucer.fill"), nameLabel: "Капучино", priceLabel: "200р", countLabel: "0"),
        ProductModel(image:  UIImage(systemName: "cup.and.saucer.fill"), nameLabel: "Горячий шоколад", priceLabel: "150р", countLabel: "0"),
        ProductModel(image:  UIImage(systemName: "cup.and.saucer.fill"), nameLabel: "Латтэ", priceLabel: "250р", countLabel: "0"),
        ProductModel(image:  UIImage(systemName: "cup.and.saucer.fill"), nameLabel: "Раф", priceLabel: "300р", countLabel: "0"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        setupFooterView()
        setupButtonInFooterView()
        settingsNavController()
        setupCollectionView()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
    }
    
    private func settingsNavController() {
        navigationItem.title = K.titlesForNavigationControllers.menuTitle
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.labelTextColor()]
        navigationController?.navigationBar.barTintColor = .navControllerColor()

    }
    
    func setupFooterView() {
        view.addSubview(footerView)
        footerView.backgroundColor = .white
        
        footerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            footerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            footerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            footerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            footerView.heightAnchor.constraint(equalToConstant: 100)
        
        ])
        
    }
    
    func setupButtonInFooterView() {
        view.addSubview(footerView)
        footerView.addSubview(goToThePaymentButton)
        goToThePaymentButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            goToThePaymentButton.topAnchor.constraint(equalTo: footerView.topAnchor, constant: 20),
            goToThePaymentButton.leadingAnchor.constraint(equalTo: footerView.leadingAnchor, constant: 19),
            goToThePaymentButton.trailingAnchor.constraint(equalTo: footerView.trailingAnchor, constant:  -18),
            goToThePaymentButton.heightAnchor.constraint(equalToConstant: 47)
        
        ])
        
        
    }
    
    private func setupCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.backgroundColor = .white
        view.addSubview(collectionView)
        
        collectionView.register(MenuCell.self, forCellWithReuseIdentifier: K.menuIDCell)
     
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: footerView.topAnchor)
        
        ])
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MenuViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return staticProductData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.menuIDCell, for: indexPath) as! MenuCell
        
        cell.productImageView.image = staticProductData[indexPath.row].image
        cell.productNameLabel.text = staticProductData[indexPath.row].nameLabel
        cell.pricelabel.text = staticProductData[indexPath.row].priceLabel
        cell.countLabel.text = staticProductData[indexPath.row].countLabel
        
        return cell
    }
    
}

extension MenuViewController: UICollectionViewDelegateFlowLayout {

    // размер ячейки
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //установка количества колонок на 2
        // получаем 2 равных квадрата
        let width = (view.frame.width - 3 * 13) / 2
    
        return CGSize.init(width: width, height: 215)
        // w165 + h205
    }
    
    // расстояние между границей и элементом
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 13, left: 13, bottom: 13, right: 13)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 13
    }
    
}
