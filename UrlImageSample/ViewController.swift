//
//  ViewController.swift
//  UrlImageSample
//
//  Created by Hayashidesu. on 2015/07/21.
//  Copyright (c) 2015年 Hayashidesu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string:"http://k.yimg.jp/images/top/sp2/cmn/logo-ns-131205.png")
        let req = NSURLRequest(URL:url!)
        
        NSURLConnection.sendAsynchronousRequest(req, queue:NSOperationQueue.mainQueue()){(res, data, err) in

            let image = UIImage(data:data)
            self.imgLogo.image = image
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

