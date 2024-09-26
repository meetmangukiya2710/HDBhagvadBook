//
//  ShlokDetailVC.swift
//  HDBhagvadBook
//
//  Created by Meet Mangukiya on 18/09/24.
//

import UIKit

class ShlokDetailVC: UIViewController {
    
    @IBOutlet weak var chapNumbereLableOutlet: UILabel!
    @IBOutlet weak var chapNameLableOutlet: UILabel!
    @IBOutlet weak var hindiShlokLableOutlet: UILabel!
    @IBOutlet weak var englishShlokLableOutlet: UILabel!
    
    var chap_No = 0
    var chap_Name = ""
    var hindi = ""
    var english = ""
    var adhyayVideo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chapNumbereLableOutlet.text = String(chap_No)
        chapNameLableOutlet.text = chap_Name
        hindiShlokLableOutlet.text = hindi
        englishShlokLableOutlet.text = english
    }
}
