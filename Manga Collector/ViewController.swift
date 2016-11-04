//
//  ViewController.swift
//  Manga Collector
//
//  Created by Thomas Bentkowski on 03/11/2016.
//  Copyright © 2016 Thomas Bentkowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    /////////////////// OUTLETS ////////////////////
    @IBOutlet weak var tableView: UITableView!
    ///////////////// PROPERTIES ///////////////////
    var mangas : [Manga] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Creating context
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        // Fetching mangas and refreshing tableView data
        do {
            mangas = try context.fetch(Manga.fetchRequest())
            tableView.reloadData()
        } catch {
            print("There's an error there when fetching the mangas!")
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mangas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let manga = mangas[indexPath.row]
        
        // adding data to the cell
        cell.textLabel?.text = manga.title
        cell.imageView?.image = UIImage(data: manga.image as! Data)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Selecting the righ row and passing it to the segue
        let manga = mangas[indexPath.row]
        performSegue(withIdentifier: "mangaSegue", sender: manga)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Setting the destination of the segue
        let nextVC = segue.destination as! MangaViewController
        
        // Setting MangaViewController manga property
        nextVC.manga = sender as? Manga
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

