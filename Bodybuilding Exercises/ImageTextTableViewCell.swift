//
//  ImageTextTableViewCell.swift
//  WorkoutAnatomy
//
//  Created by Fikret Efe Doğanay on 9.09.2023.
//

import UIKit

class ImageTextTableViewCell: UITableViewCell {
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
