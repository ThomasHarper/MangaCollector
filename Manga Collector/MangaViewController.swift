//
//  MangaViewController.swift
//  Manga Collector
//
//  Created by Thomas Bentkowski on 03/11/2016.
//  Copyright © 2016 Thomas Bentkowski. All rights reserved.
//

import UIKit

class MangaViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    /////////////////// OUTLETS ////////////////////
    @IBOutlet weak var mangaImageView: UIImageView!
    @IBOutlet weak var titleTextField: UITextField!
    ///////////////// PROPERTIES ///////////////////
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker.delegate = self
    }
    
    @IBAction func cameraTapped(_ sender: AnyObject) {
    }
    
    @IBAction func photosTapped(_ sender: AnyObject) {
        // Telling the UIImagePickerController that we need to use the photo library
        imagePicker.sourceType = .photoLibrary
        // Then show this UIImagePickerController to the user
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func addTapped(_ sender: AnyObject) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
