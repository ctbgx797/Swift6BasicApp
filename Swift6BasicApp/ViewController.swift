//
//  ViewController.swift
//  Swift6BasicApp
//
//  Created by 西谷恭紀 on 2020/11/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var blurView: UIVisualEffectView!
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var tapCountLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = String(count)
    }

    @IBAction func tap(_ sender: Any) {
        
        count = count + 1
        countLabel.text = String(count)
        
        //if文
        if count > 5{
            imageView.image = UIImage(named: "back2")
        }
        if count > 10{
            imageView.image = UIImage(named: "back3")
        }
        
        switch count {
        case 6:
            tapCountLabel.text = "6です"
            break
        case 10:
            tapCountLabel.text = "10です"
            break
        default:
            tapCountLabel.text = "6でも10でもないです"
        }
        
        
    }
    
}

