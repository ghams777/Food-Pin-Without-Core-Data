//
//  AddTableViewController.swift
//  FoodPin
//
//  Created by Admin on 3/24/16.
//  Copyright © 2016 Morra. All rights reserved.
//

import UIKit

class AddTableViewController: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var typeTextField: UITextField!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if indexPath.row == 0 {
            
            if UIImagePickerController.isSourceTypeAvailable(.PhotoLibrary){
                
                let imagePicker = UIImagePickerController()
                imagePicker.allowsEditing = false
                imagePicker.delegate = self
                imagePicker.sourceType = .PhotoLibrary
                
                self.presentViewController(imagePicker, animated: true, completion: nil)
            }
            
        }
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        
        imageView.contentMode = UIViewContentMode.ScaleAspectFill
        
        imageView.clipsToBounds = true
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
}
