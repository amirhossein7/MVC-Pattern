//
//  FrameworkCell.swift
//  MVC-Pattern
//
//  Created by Amirhossein on 8/10/23.
//

import UIKit

class FrameworkCell: UITableViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDesc: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @discardableResult
    func updateUI(data: FrameworkModel) -> FrameworkCell {
        imgView.image = UIImage(named: data.image)
        labelTitle.text = data.title
        labelDesc.text = data.description
        
        return self
    }
    
}
