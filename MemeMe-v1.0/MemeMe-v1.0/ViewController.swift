//
//  ViewController.swift
//  MemeMe-v1.0
//
//  Created by Renato Semadeni on 11.01.17.
//  Copyright © 2017 Renato Semadeni. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate {

  @IBOutlet weak var imagePickerView: UIImageView!
  @IBOutlet weak var photoBtn: UIBarButtonItem!
  @IBOutlet weak var topTxt: UITextField!
  @IBOutlet weak var bottomTxt: UITextField!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    topTxt.textAlignment = .center
    bottomTxt.textAlignment = .center
  }
  
  override func viewWillAppear(_ animated: Bool) {
    photoBtn.isEnabled = UIImagePickerController.isSourceTypeAvailable(.camera)
  }

  func textFieldDidBeginEditing(_ textField: UITextField) {
    if (textField == topTxt && topTxt.text == " Top") {
      topTxt.text = ""
    } else if (textField == bottomTxt && bottomTxt.text == " Bottom") {
      bottomTxt.text = ""
    }
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
  }
  
  @IBAction func pickAnImage(_ sender: AnyObject) {
    let pickerCtrlR = UIImagePickerController()
    pickerCtrlR.delegate = self
    pickerCtrlR.sourceType = .photoLibrary
    present(pickerCtrlR, animated: true, completion: nil)
  }
  
  @IBAction func pickAnImageFromCamera(_ sender: AnyObject) {
    let imagePicker = UIImagePickerController()
    imagePicker.delegate = self
    imagePicker.sourceType = .camera
    present(imagePicker, animated: true, completion: nil)
  }

  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
      imagePickerView.image = image
      imagePickerView.contentMode = .scaleAspectFit
    }

    dismiss(animated: true, completion: nil)

  }
  
  func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
    dismiss(animated: true, completion: nil)
  }
  
}

