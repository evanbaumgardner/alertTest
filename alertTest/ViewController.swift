//
//  ViewController.swift
//  alertTest
//
//  Created by Evan Baumgardner on 3/4/15.
//  Copyright (c) 2015 Fairmount Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var OK: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func showSuccess (sender: UIButton!) {
//        let alert = UIAlertController(title: "Payment Received",
//            message: "Thanks a lot - SUCKER!",
//            preferredStyle: .Alert)
//        
//        
//        let alertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
//        alert.addAction(alertAction)
//        presentViewController(alert, animated: true, completion: nil)
//        
    
    //1. Create the alert controller.
    var alert = UIAlertController(title: "Some Title", message: "Enter a text", preferredStyle: .Alert)
    
    //2. Add the text field. You can configure it however you need.
    alert.addTextFieldWithConfigurationHandler({ (textField) -> Void in
    textField.text = "Some default text."
    })
    
    //3. Grab the value from the text field, and print it when the user clicks OK.
    alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
    let textField = alert.textFields![0] as UITextField
    println("Text field: \(textField.text)")
    }))
    
    // 4. Present the alert.
        self.presentViewController(alert, animated: true, completion: nil);
    }
    
    
    
}


