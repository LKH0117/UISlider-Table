//
//  ViewController.swift
//  UIslider Table
//
//  Created by D7702_09 on 2018. 5. 3..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    

    @IBOutlet weak var myslider: UISlider!
    
    @IBOutlet weak var myTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myslider.value = 0.0
        myslider.setValue(0.0, animated: true)
        myTable.dataSource = self
        myTable.delegate = self
    }
    @IBAction func sliderM(_ sender: Any) {
        
        print("slider vlaue = \(Int(myslider.value))")
        myTable.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let id = "RE"
        let cell = myTable.dequeueReusableCell(withIdentifier: id, for: indexPath)
        cell.textLabel?.text = String(Int(myslider.value))
        return cell
    }


}

