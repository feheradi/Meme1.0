//
//  textFieldDelegate.swift
//  MeMe-v1.0
//
//  Created by LIJO RAJU on 09/10/16.
//  Copyright © 2016 LIJORAJU. All rights reserved.
//

import Foundation
import UIKit

// MARK: - textFieldDelegate: NSObject, UITextFieldDelegate
class textFieldDelegate: NSObject, UITextFieldDelegate{
    
    // This method is called when the user starts editing the textfield
    func textFieldDidBeginEditing(_ textField: UITextField){
        
        if textField.text == "TOP" || textField.text == "BOTTOM"{  // Clears default texts of textfield
            textField.text = ""
            
        }
        
    }
    
 }
