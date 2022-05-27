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
        Hero(name: "Black Widow", image: "heart.fill", description: "Hero description"),
        Hero(name: "Captain America", image: "pills.fill", description: "Hero description"),
        Hero(name: "Iron Man", image: "ear.fill", description: "Hero description"),
        Hero(name: "Dr. Strange", image: "flame.circle.fill", description: "Hero description"),
        Hero(name: "Hulk", image: "bolt.circle.fill", description: "Hero description"),
        Hero(name: "Ant-man", image: "hare.fill", description: "Hero description"),
        Hero(name: "Thor", image: "tortoise.fill", description: "Hero description"),
        Hero(name: "Spider-Man", image: "ant.circle.fill", description: "Hero description"),
        Hero(name: "Black Panther", image: "leaf.circle.fill", description: "Hero description"),
        Hero(name: "Silver Surfer", image: "pawprint.circle.fill", description: "Hero description")
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
        heroDetailVC.title = hero.name
        heroDetailVC.heroDescription = hero.description
    }
    
}

extension HeroListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let hero = heroes[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: HeroListCell.identifier, for: indexPath) as! HeroListCell
        cell.configure(with: hero.name, imageName: hero.image)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
}

