//
//  ItemCell.swift
//  DreamLister
//
//  Created by Henry McC on 2016/12/24.
//  Copyright © 2016 HiddenPlatform. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    
    @IBOutlet weak var thumb: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var details: UILabel!
    
    
    func configureCell(item: NSItem){
        title.text = item.title
        price.text = "R \(item.price)"
        details.text = item.details
        
    }
}
