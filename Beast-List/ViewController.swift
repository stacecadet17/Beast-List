//
//  ViewController.swift
//  Beast-List
//
//  Created by Stacey Abbott on 11/10/17.
//  Copyright © 2017 Stacey Abbott. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tasks = ["something cool", "something very cool", "something EXTREMELY cool"]

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    //add to the list functionality
    @IBAction func beastButtonPressed(_ sender: UIButton) {
        tasks.append(textField.text!)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
    
    //delete functionality
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Section: \(indexPath.section) and Row: \(indexPath.row)")
        tasks.remove(at: indexPath.row)
        tableView.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


    




