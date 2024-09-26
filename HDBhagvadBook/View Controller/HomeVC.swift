//
//  HomeVC.swift
//  HDBhagvadBook
//
//  Created by Meet Mangukiya on 18/09/24.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var BhagvadGitaBtn: UIButton!
    @IBOutlet weak var quotesBtn: UIButton!
    @IBOutlet weak var jupBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        design()
    }
    
    func design() {
        BhagvadGitaBtn.layer.cornerRadius = 10
        quotesBtn.layer.cornerRadius = 10
        jupBtn.layer.cornerRadius = 10
    }
    
    @IBAction func bhagvatGitaReadButton(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(identifier: "BhagvadGitaSChVC") as! BhagvadGitaSChVC
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    @IBAction func quotesBtn(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(identifier: "QuotesVC") as! QuotesVC
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    @IBAction func jupButtonAction(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(identifier: "JupVC") as! JupVC
        navigationController?.pushViewController(navigate, animated: true)
    }
    
}
