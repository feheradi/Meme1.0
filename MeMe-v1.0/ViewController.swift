//
//  ViewController.swift
//  MeMe-v1.0
//
//  Created by LIJO RAJU on 07/10/16.
//  Copyright © 2016 LIJORAJU. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

   
    @IBOutlet weak var imagePickerView: UIImageView!
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    @IBOutlet weak var bottomTextField: UITextField!
    @IBOutlet weak var topTextField: UITextField!
    
    let textfieldDelegate = textFieldDelegate()
    
    let memeAttributesForTextField = [NSStrokeColorAttributeName:UIColor.black, NSForegroundColorAttributeName:UIColor.white, NSFontAttributeName:UIFont(name: "HelveticaNeue-CondensedBlack",size:40)!, NSStrokeWidthAttributeName: -4.0] as [String : Any]   // Intializing Dictionary for Default Attributes of Text Field
    
 // This method is the action for Pick Buttom which enables the use to select image froom Photo Library
    @IBAction func pickAnImageFromPhotoAlbum(_ sender: AnyObject) {
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = UIImagePickerControllerSourceType.photoLibrary //Specifying Photo Library as Source
        present(imagePickerController, animated: true, completion: nil)
        
    }
    
 // This method is the action for Camera Button which allows user to take a picture using camera and add
    @IBAction func pickAnImageFromCamera(_ sender: AnyObject) {
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = UIImagePickerControllerSourceType.camera //Specifying Camera as Source
        present(imagePickerController, animated: true, completion: nil)
        
    }
    
  // This method sets image to UIImageView and dismiss the selection menu after selecting image
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage
        {
            imagePickerView.image = image
            self.dismiss(animated: true, completion: nil) // Dismiss the selection list
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        cameraButton.isEnabled = UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera)  // Enabling or Disabling Camera Button upon avialability of camera
        
        }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        imagePickerView.contentMode = UIViewContentMode.scaleAspectFit
        setTextField(topTextField,defaultText: "TOP")    // Intializing top TextField
        setTextField(bottomTextField,defaultText: "BOTTOM")   // Intialing bottom TextField

    }
    
  // This function sets default text and text styles to top and bottom textfields
    func setTextField(_ textField:UITextField, defaultText:String){
        
        textField.text = defaultText
        textField.defaultTextAttributes = memeAttributesForTextField
        textField.textAlignment = NSTextAlignment.center
        textField.delegate = textfieldDelegate
        
    }
  
    }

