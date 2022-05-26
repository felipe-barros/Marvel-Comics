//
//  HeroListTableViewCell.swift
//  Marvel Comics
//
//  Created by Felipe Barros on 25/05/22.
//

import UIKit

class HeroListCell: UITableViewCell {
    
    static let identifier = "HeroListCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "HeroListCell", bundle: nil)
    }
    
    public func configure(with title: String, imageName: String) {
        heroName.text = title
        heroImage.image = UIImage(systemName: imageName)
        
    }
    
    @IBOutlet var heroImage: UIImageView!
    @IBOutlet var heroName: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        heroImage.contentMode = .scaleAspectFit
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
