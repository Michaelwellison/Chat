//
//  LoginViewController.swift
//  Chat
//
//  Created by Michael Ellison on 5/31/15.
//  Copyright (c) 2015 Michael Ellison. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var activityView: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func didPressSignInButton(sender: AnyObject) {
        
        performSegueWithIdentifier("loginSegue", sender: nil)
    }
    
    @IBAction func didPressSignUpButton(sender: AnyObject) {
        var user = PFUser()
        
        user.username = emailField.text
        user.password = passwordField.text
    
        user.signUpInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            self.performSegueWithIdentifier("loginSegue", sender: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

