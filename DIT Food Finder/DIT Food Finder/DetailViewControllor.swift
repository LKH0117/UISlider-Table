//
//  DetailViewControllor.swift
//  DIT Food Finder
//
//  Created by D7702_09 on 2018. 5. 30..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

class DetailViewControllor: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var detailimg: UIImageView!
    
    @IBOutlet weak var detailTableView: UITableView!
    var cellName = ""
    var cellAddress = ""
    var cellimg = ""
    var celltype = ""
    var cellMenu = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = cellName
        // Do any additional setup after loading the view.
//        detailAddress.text = cellAddress
//        detailName.text = celltype
        detailimg.image = UIImage(named: cellimg)
        detailTableView.delegate = self
        detailTableView.dataSource = self
    }
    // delegate method
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        cell.textLabel?.text = cellMenu
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
            cell.textLabel?.text = cellAddress
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
            cell.textLabel?.text = celltype
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
            cell.textLabel?.text = cellMenu
            return cell
        }
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
