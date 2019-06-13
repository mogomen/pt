//
//  CategoriesTableViewCell.swift
//  PartyMap swift 5
//
//  Created by Biscuit on 6/7/19.
//  Copyright © 2019 the Biscuits. All rights reserved.
//

import UIKit

class CategoriesTableViewCell: UITableViewCell {

   static let reusIdentifier = "CategoriesTableViewCell"
    
    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.init(name: "Helvetica", size: 16)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: CategoriesTableViewCell.reusIdentifier)
        addSubview(mainImageView)
        addSubview(nameLabel)
        
        backgroundColor = .black
        mainImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 65).isActive = true
        
        mainImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        mainImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        // myLabel constaints
        nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: mainImageView.trailingAnchor, constant: 12).isActive = true
        
    }
       
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
