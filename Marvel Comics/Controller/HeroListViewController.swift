//
//  ViewController.swift
//  Marvel Comics
//
//  Created by Felipe Barros on 19/05/22.
//

import UIKit

class HeroListViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    let heroes = [
        "Black Widow",
        "Captain America",
        "Iron Man",
        "Dr. Strange",
        "Hulk",
        "Ant-man",
        "Thor",
        "Spider-Man",
        "Black Panther",
        "Silver Surfer"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(HeroListCell.nib(), forCellReuseIdentifier: HeroListCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        self.title = "Marvel Comics"
    }
}

extension HeroListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        performSegue(withIdentifier: "HeroDetailViewController", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let hero = heroes[sender as! Int]

        let heroDetailVC = segue.destination as! HeroDetailViewController
        heroDetailVC.title = hero
    }
    
}

extension HeroListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HeroListCell.identifier, for: indexPath) as! HeroListCell
        cell.configure(with: heroes[indexPath.row], imageName: "gear")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
}

