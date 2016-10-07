//
//  ViewController.swift
//  MeMe-v1.0
//
//  Created by LIJO RAJU on 07/10/16.
//  Copyright © 2016 LIJORAJU. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

   
    @IBOutlet weak var imagePickerView: UIImageView!
    
    @IBAction func pickAnImageFromPhotoAlbum(_ sender: AnyObject) {
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = UIImagePickerControllerSourceType.photoLibrary
        present(imagePickerController, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage
        {
            imagePickerView.image = image
            self.dismiss(animated: true, completion: nil)
        }
        
    }
    
}

