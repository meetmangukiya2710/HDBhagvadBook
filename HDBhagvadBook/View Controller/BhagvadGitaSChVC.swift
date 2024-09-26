//
//  BhagvadGitaSChVC.swift
//  HDBhagvadBook
//
//  Created by Meet Mangukiya on 18/09/24.
//

import UIKit
import Foundation

class BhagvadGitaSChVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var bagvatGitaTableView: UITableView!
    
    var bhagvatGitaApiClass: BhagvatGitaViewModel = BhagvatGitaViewModel()
    var arr: [BhagvatGitaAPI]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bhagvatGitaApiClass.viewModelFunc() { [self] i in
            arr = i
            bagvatGitaTableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = bagvatGitaTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! BhagvadGitaChTC
        
        cell.listLableOutlet.text = arr?[indexPath.row].name
        cell.numberLableOutlet.text = "\(arr?[indexPath.row].chapter_number ?? 0). "
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let didSelect = storyboard?.instantiateViewController(identifier: "ShlokDetailVC") as! ShlokDetailVC
        
        didSelect.chap_No = arr?[indexPath.row].chapter_number ?? 0
        didSelect.chap_Name = arr?[indexPath.row].name ?? "nil"
        didSelect.hindi = arr?[indexPath.row].chapter_summary_hindi ?? "nil"
        didSelect.english = arr?[indexPath.row].chapter_summary ?? "nil"
        
        navigationController?.pushViewController(didSelect, animated: true)
    }
}
