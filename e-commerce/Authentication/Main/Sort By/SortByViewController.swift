//
//  SortByViewController.swift
//  e-commerce
//
//  Created by ALY NABIL on 12/04/2024.
//

import UIKit

class SortByViewController: UIViewController {
    
    //MARK: - OUTLET
   
    @IBOutlet var listOfViews: [UIView]!
    
    @IBOutlet var listOfLabels: [UILabel]!
    
    //MARK: - LIFECYCLE METHOD
    override func viewDidLoad() {
        super.viewDidLoad()
//        listOfViews.first?.backgroundColor = .red
//        listOfLabels.first?.textColor = .white
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 0.2) {
            self.view.backgroundColor = UIColor.black.withAlphaComponent(0.7) // this code to make viewcontroller background to be transperent
        }
    }
    
    //MARK: - ACTIONS
    @IBAction func closeSortByBtn(_ sender: UIButton) {
        dismiss(animated: false) // close sort by view when pressing on close button 
    }
    
    @IBAction func didTappedListButtons(_ sender: UIButton) {
        listOfViews.forEach({$0.backgroundColor = .white}) // for loop in listOfViews to change view coloe to be white whene it's not selected
        listOfViews.first(where: {$0.tag == sender.tag})? .backgroundColor = .red // change view color to be red when selected 
        for lableColor in listOfLabels { // for loop in listOfLabels to change text clore to be whit whene it is not selected
            if lableColor.tag == sender.tag {
                lableColor.textColor = .white
            } else {
                lableColor.textColor = .black
            }
        }
    }
}
