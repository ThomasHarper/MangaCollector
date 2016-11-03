//
//  MangaViewController.swift
//  Manga Collector
//
//  Created by Thomas Bentkowski on 03/11/2016.
//  Copyright © 2016 Thomas Bentkowski. All rights reserved.
//

import UIKit

class MangaViewController: UIViewController {

    
    @IBOutlet weak var mangaImageView: UIImageView!
    @IBOutlet weak var titleTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cameraTapped(_ sender: AnyObject) {
    }
    
    @IBAction func photosTapped(_ sender: AnyObject) {
    }
    
    @IBAction func addTapped(_ sender: AnyObject) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
