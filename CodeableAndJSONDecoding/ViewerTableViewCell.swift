//
//  ViewerTableViewCell.swift
//  CodeableAndJSONDecoding
//
//  Created by Danae N Nash on 11/04/19.
//  Copyright © 2019 Danae N Nash. All rights reserved.
//

import UIKit

class ViewerTableViewCell: UITableViewCell {

    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var catLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var stockLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }

}
