//
//  ViewController3.swift
//  customcelda
//
//  Created by Manuel Zegarra on 13/09/15.
//  Copyright (c) 2015 M-Sonic. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBAction func btnClose(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func btnSiguiente(sender: UIButton) {

                self.performSegueWithIdentifier("segueTest", sender: sender)
        
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
