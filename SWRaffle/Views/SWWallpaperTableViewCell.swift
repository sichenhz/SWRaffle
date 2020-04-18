//
//  SWWallpaperTableViewCell.swift
//  SWRaffle
//
//  Created by Jason on 2020/4/18.
//  Copyright © 2020 UTAS. All rights reserved.
//

import UIKit

class SWWallpaperTableViewCell: UITableViewCell {

    let nameLabel: UILabel! = UILabel.init()
    let priceLabel: UILabel! = UILabel.init()
    let stockLabel: UILabel! = UILabel.init()
    let wallpaperView: UIImageView! = UIImageView.init()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
                
        self.contentView.clipsToBounds = true
        
        wallpaperView.contentMode = .scaleAspectFill
        wallpaperView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        stockLabel.translatesAutoresizingMaskIntoConstraints = false
        
        nameLabel.textAlignment = .center
        priceLabel.textAlignment = .center
        stockLabel.textAlignment = .right

        self.contentView.addSubview(wallpaperView)
        self.contentView.addSubview(nameLabel)
        self.contentView.addSubview(priceLabel)
        self.contentView.addSubview(stockLabel)
        
        // layout Views
        let layoutViews:[String: UIView] = ["contentView": self.contentView, "wallpaperView": wallpaperView, "nameLabel": nameLabel, "priceLabel": priceLabel, "stockLabel": stockLabel]

        self.contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"H:|-0-[wallpaperView]-0-|", options:[], metrics:nil, views:layoutViews))
        self.contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"H:|-8-[nameLabel]-8-|", options:[], metrics:nil, views:layoutViews))
        self.contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"H:|-8-[priceLabel]-8-|", options:[], metrics:nil, views:layoutViews))
        self.contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"H:|-8-[stockLabel]-8-|", options:[], metrics:nil, views:layoutViews))

        self.contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"V:|-0-[wallpaperView]-0-|", options:[], metrics:nil, views:layoutViews))
        self.contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"V:|-8-[nameLabel]", options:[], metrics:nil, views:layoutViews))
        self.contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"H:[contentView]-(<=0)-[priceLabel]", options:[.alignAllCenterY], metrics:nil, views:layoutViews))
        self.contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"V:[stockLabel]-8-|", options:[], metrics:nil, views:layoutViews))        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
