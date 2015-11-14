//
//  ViewController.swift
//  Webservice Example
//
//  Created by Michael Litman on 11/14/15.
//  Copyright © 2015 Michael Litman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        let manager = AFHTTPRequestOperationManager()
        manager.GET("http://api.openweathermap.org/data/2.5/forecast/daily?q=London&mode=json&units=metric&cnt=1&appid=553cfbc038f1133fa59243a9a900358a", parameters: nil,
            success:
            { (operation: AFHTTPRequestOperation, responseObject: AnyObject) -> Void in
                print("Response: " + responseObject.description)
            },
            failure:
            { (operation: AFHTTPRequestOperation?, error: NSError) -> Void in
                print("Error: " + error.localizedDescription)
            })
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

