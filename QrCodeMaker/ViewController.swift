//
//  ViewController.swift
//  QrCodeMaker
//
//  Created by Shaan Mirchandani
//  Copyright © 2017 Shaan Mirchandani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textFieldOutlet: UITextField!
    @IBOutlet var imgView: UIImageView!
    @IBAction func button(_ sender: Any) {
        
        if let myString = textFieldOutlet.text {
            
            let data = myString.data(using: .ascii, allowLossyConversion: false)
            let filter = CIFilter(name: "CIQRCodeGenerator")
            filter?.setValue(data, forKey: "inputMessage")
            
            let imgg = UIImage(ciImage: (filter?.outputImage)!)
            imgView.image = imgg
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

