//
//  EmotionsViewController.swift
//  FaceIt
//
//  Created by Ahmed Al-Zahrani on 2018-05-13.
//  Copyright © 2018 Ahmed Al-Zahrani. All rights reserved.
//

import UIKit

class EmotionsViewController: UIViewController {
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destinationVC = segue.destination
        if let navigationController = destinationVC as? UINavigationController {
            destinationVC = navigationController.visibleViewController ?? destinationVC
        }
        // chaining if lets... can be combined as such to avoid deep nesting
        if let faceViewController = destinationVC as? FaceViewController,
           let identifier = segue.identifier,
           let expression = emotionalFaces[identifier] {
                faceViewController.expression = expression
            faceViewController.navigationItem.title = (sender as? UIButton)?.currentTitle
        }
    }
    
    private let emotionalFaces: Dictionary<String, FacialExpression> = [
        "sad" : FacialExpression(eyes: .closed, mouth: .frown),
        "happy": FacialExpression(eyes: .open, mouth: .smile),
        "worried": FacialExpression(eyes: .open, mouth: .smirk)
    ]
 
}
