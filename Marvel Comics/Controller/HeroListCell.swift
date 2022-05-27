//
//  HeroListTableViewCell.swift
//  Marvel Comics
//
//  Created by Felipe Barros on 25/05/22.
//

import UIKit

class HeroListCell: UITableViewCell {
    
    static let identifier = "HeroListCell"
    
    @IBOutlet var heroImage: UIImageView!
    @IBOutlet var heroName: UILabel!

    static func nib() -> UINib {
        return UINib(nibName: "HeroListCell", bundle: nil)
    }
    
    public func configure(with title: String, imageName: String) {
        heroName.text = title
        heroImage.image = UIImage(systemName: imageName)
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        heroImage.contentMode = .scaleAspectFit
        heroImage.layer.cornerRadius = 6.0
        heroImage.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
