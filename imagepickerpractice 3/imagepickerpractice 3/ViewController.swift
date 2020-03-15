//
//  ViewController.swift
//  imagepickerpractice 3
//
//  Created by James Miller on 3/12/20.
//  Copyright © 2020 James Miller. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var topText: UITextField!
    @IBOutlet weak var bottomText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func pickImage(_ sender: Any) {
        let imageView = UIImagePickerController()
        imageView.delegate = self
        imageView.sourceType = .photoLibrary
        present(imageView, animated: true, completion: nil)
        print ("Photo Library selected")
        }
    
    
    @IBAction func cameraSelected(_ sender: Any) {
        let imageView = UIImagePickerController()
        imageView.delegate = self
        imageView.sourceType = .photoLibrary
        present(imageView, animated: true, completion: nil)
        print ("Photo Library selected")
        }
    
        
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        print("image selected")
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            imageView.image = image
            imageView.contentMode = .scaleAspectFill
            } else {
        }
            dismiss(animated: true, completion: nil)
            print("dismiss")
            }
    }
        
        

    
    
    
    

    
    
   
