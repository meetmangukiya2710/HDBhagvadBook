//
//  JupVC.swift
//  HDBhagvadBook
//
//  Created by Meet Mangukiya on 18/09/24.
//

import UIKit

class JupVC: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = "\(count)"
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(viewTapped(_:)))
        view.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func viewTapped(_ sender: UITapGestureRecognizer) {
        count += 1
        countLabel.text = "\(count)"
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        count = 0
        countLabel.text = "\(count)"
    }
    
}
