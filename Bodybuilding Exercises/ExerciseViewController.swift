//
//  ExerciseViewController.swift
//  WorkoutAnatomy
//
//  Created by Fikret Efe Doğanay on 18.09.2023.
//

import UIKit

class ExerciseViewController: UITableViewController {
    
    var exercises: [Exercise]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercises!.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageWithText", for: indexPath) as! ImageTextTableViewCell
        let exercise = exercises![indexPath.row]
        cell.titleLabel!.text = exercise.name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let dvc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            dvc.exerciseName = exercises[indexPath.row].name
            dvc.exerciseDescription = exercises[indexPath.row].description
            dvc.imageName = exercises[indexPath.row].imageFileName
            navigationController?.pushViewController(dvc, animated: true)
        }
    }

}
