//
//  InfoVC.swift
//  Story
//
//  Created by user253148 on 2/8/24.
//

import UIKit
class InfoVC: UIViewController{
    var OmniManInf: OmniManInfo?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var infoLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let info = OmniManInf{
            imageView.image = info.image
            infoLbl.text = info.info
        }
    }
    
}
