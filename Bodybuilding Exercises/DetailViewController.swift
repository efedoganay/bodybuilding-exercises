//
//  DetailViewController.swift
//  WorkoutAnatomy
//
//  Created by Fikret Efe Doğanay on 16.09.2023.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    var exerciseName: String?
    var exerciseDescription: String?
    var imageName: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let nameToLoad = exerciseName {
            titleLabel.text = nameToLoad
        }
        
        if let descriptionToLoad = exerciseDescription {
            descriptionLabel.text = descriptionToLoad
        }
        
        if let imageToLoad = imageName {
            imageView.loadGif(name: "/Exercises/"+imageToLoad)
        }
    }
        // Do any additional setup after loading the view.

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
