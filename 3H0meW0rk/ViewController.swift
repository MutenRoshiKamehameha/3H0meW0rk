//
//  ViewController.swift
//  3H0meW0rk
//
//  Created by Байгелди Акылбек уулу on 1/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var mails: [String] = ["Байгелди - 5мкр 44дом ","Нурик - 3мкр 23дом","Зарин - 4мкр 1дом","Нурай - 7мкр 21дом","Эмилия - 7мкр 5дом","Магдиэл - 5мкр 7дом","Азия - казахстан Алма-Ата"]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "adress", for: indexPath)
        
        cell.textLabel?.text = mails[indexPath.row]
        
        return cell
    }
    
}
