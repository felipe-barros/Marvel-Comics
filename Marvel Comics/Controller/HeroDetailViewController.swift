//
//  SecondViewController.swift
//  Marvel Comics
//
//  Created by Felipe Barros on 19/05/22.
//

import UIKit

class HeroDetailViewController: UIViewController {
    
    var heroDescription: String?
    @IBOutlet var heroDescriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heroDescriptionLabel.text = heroDescription
    }
}
