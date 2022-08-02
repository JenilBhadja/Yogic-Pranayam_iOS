//
//  ExerciseViewController.swift
//  DailyBreathe
//
//  Created by JENIL BHADJA on 21/11/21.
//

import UIKit

class ExerciseViewController: UIViewController {

    
    @IBOutlet var tblExercise: UITableView!
    var strName : String?
    //var object object name strname string=string
    var arrList = [[String: Any]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setHidesBackButton(true, animated: true)
       // self.navigationController?.navigationBar.isTranslucent = false
        //self.navigationController?.navigationBar.barTintColor = .cyan
        //self.navigationController?.navigationBar.tintColor = .black
        //let color2 = UIColor(rgb: 0xFFFFFF)
        //var color1 = hexStringToUIColor("#d3d3d3")
        
        let btn1 = UIButton(type: .custom)
        btn1.setImage(UIImage(named: "arrow_left"), for: .normal)
        btn1.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btn1.addTarget(self, action: #selector(btnClickback), for: .touchUpInside)
        let item1 = UIBarButtonItem(customView: btn1)
        self.navigationItem.setLeftBarButtonItems([item1], animated: true)
        
        //self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "onAdd:")
        
        arrList = [["name": "Skull Shining","imagename": "evening_breathing"],["name": "Skull Shining","imagename": "evening_breathing"],["name": "Skull Shining","imagename": "evening_breathing"]]

    }
    @objc func btnClickback(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
   

}

extension ExerciseViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExerciseTableViewCell", for: indexPath) as! ExerciseTableViewCell
        let dict = arrList[indexPath.row]
        cell.lblName.text = dict["name"] as? String
        cell.imgName.image = UIImage(named: dict["imagename"] as! String )
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ExerciseDetailViewController") as? ExerciseDetailViewController
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
   
}





