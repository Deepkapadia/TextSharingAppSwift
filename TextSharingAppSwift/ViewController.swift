//
//  ViewController.swift
//  TextSharingAppSwift
//
//  Created by MAC OS on 5/29/17.
//  Copyright © 2017 MAC OS. All rights reserved.
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

    @IBAction func shareclick(_ sender: Any) {
        ShareApp();
    }
    
    func ShareApp(text:String? = nil,img:UIImage? = nil,url:URL? = nil){
        
        var arr=Array<Any>();
        
        if text != "" {
            
            arr.append(text);
        }
        if img != nil {
            
            arr.append(img);
        }
        if url != nil {
            
            arr.append(url);
        }
        
        var activity = UIActivityViewController(activityItems: arr, applicationActivities: nil);
        
        self.present(activity, animated: true, completion: nil);
    }

}

