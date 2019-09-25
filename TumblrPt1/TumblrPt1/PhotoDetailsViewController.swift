//
//  PhotoDetailsViewController.swift
//  TumblrPt1
//
//  Created by Luis Alva on 9/24/19.
//  Copyright © 2019 Luis Alva. All rights reserved.
//

import UIKit
import AlamofireImage
class PhotoDetailsViewController: UIViewController {
    var post: [String: Any]!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let photos = post["photos"] as! [[String: Any]]
        let photo = photos[0]
          
        let originalSize = photo["original_size"] as! [String: Any]
               
        let urlString = originalSize["url"] as! String
               
        let url = URL(string: urlString)
                
        imageView.af_setImage(withURL: url!)
        
        
        
    
        
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//      let vc = segue.destination as! PhotoDetailsViewController
//      let cell = sender as! UITableViewCell
//      let indexPath = tableView.indexPath(for: cell)!
//        
//    }


}
