//
//  ViewController.swift
//  iOSExample
//
//  Created by Wajahat on 11/03/2019.
//  Copyright © 2019 Wajahat. All rights reserved.
//

import UIKit
import OWMSDK

class ViewController: UIViewController {

    @IBOutlet weak var weatherLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Configuration.appId = "appid"
        print(Configuration.appId)
        let controller = APIController()
        controller.getWeatherByCityNameAsyncWithQ(q: "London")
        
    }

}

