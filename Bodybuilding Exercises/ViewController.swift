//
//  ViewController.swift
//  WorkoutAnatomy
//
//  Created by Fikret Efe Doğanay on 9.09.2023.
//

import UIKit

class ViewController: UITableViewController {
    var bodyParts: [BodyPart] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let url = Bundle.main.url(forResource: "data", withExtension: ".json"){
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                bodyParts = try decoder.decode([BodyPart].self, from: data)
                tableView.reloadData()
            }
            catch {
                print("Error while parsing JSON data.")
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bodyParts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageWithText", for: indexPath) as! ImageTextTableViewCell
        let bodyPart = bodyParts[indexPath.row]
        cell.titleLabel?.text = bodyPart.name
        if let image = UIImage(named: bodyPart.imageFileName){
            cell.iconImageView?.image = image
        }
        return cell
        }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let evc = storyboard?.instantiateViewController(withIdentifier: "Exercise") as? ExerciseViewController {
            evc.exercises = bodyParts[indexPath.row].exercises
            navigationController?.pushViewController(evc, animated: true)
        }
        
    }
}




