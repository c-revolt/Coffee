//
//  CoffeeShopCell.swift
//  Coffee
//
//  Created by Александр Прайд on 28.03.2022.
//

import UIKit

class CoffeeShopCell: UITableViewCell {
    
    let cellView = UIView()
    
//    let shopTitle = UILabel(text: "Test name")
//    let distLabel = UILabel(text: "test distance")

    lazy var shopNameLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 10, y: 20, width: 253, height: 21))

        label.text = "ТEST TEST TEST"
        label.textAlignment = .left
        label.textColor = .labelTextColor()
        label.font = UIFont.boldSystemFont(ofSize: 21)
        return label
    }()

    lazy var distanceLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 10, y: 55, width: 140, height: 21))
        label.text = "2 км от вас"
        label.textAlignment = .left
        label.textColor = .labelTextColor()
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func layoutSubviews() {
        
        setupCellView()
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        addSubview(cellView)
        cellView.addSubview(shopNameLabel)
        cellView.addSubview(distanceLabel)
                
    }
    
  
    
    func setupCellView() {
        
        cellView.ancor(top: self.contentView.topAnchor,
                       leading: self.contentView.leadingAnchor,
                       bottom: self.contentView.bottomAnchor,
                       trailling: self.contentView.trailingAnchor,
                       padding: .init(top: 5, left: 10, bottom: 5, right: 10),
                       size: .init(width: self.frame.size.width - 20, height: 90))
        
        cellView.backgroundColor = .cellColor()
        cellView.layer.cornerRadius = 5
        cellView.clipsToBounds = true
        
        
        cellView.layer.masksToBounds = false
        cellView.layer.shadowColor = UIColor.black.cgColor
        cellView.layer.shadowRadius = 1
        cellView.layer.shadowOpacity = 0.2
        cellView.layer.shadowOffset = CGSize(width: 0, height: 4)
        
        
    }
        
}


