//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Mariam Gbadamosi on 3/29/24.
//

import UIKit
import Nuke


class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var posterImageView: UIImageView!
    
    
    @IBOutlet weak var textImageView: UITextView!
    
    var post: Post!
    
    override func viewDidLoad() {
        
        if let photo = post.photos.first{
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: posterImageView)
            textImageView.text = post.caption.trimHTMLTags()
        }
        
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    

    
    
    
            
        

}
