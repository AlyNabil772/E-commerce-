//
//  NewCollectionVc.swift
//  e-commerce
//
//  Created by ALY NABIL on 24/03/2024.
//

import UIKit

class NewCollectionVc: UIViewController {
    
    //MARK: - OUTLETS
    @IBOutlet weak var subCategoriesCollectionView: UICollectionView!
    @IBOutlet weak var gridListBtn: UIButton!
    @IBOutlet weak var productsCollectionView: UICollectionView!
    @IBOutlet weak var sortByBtn: UIButton!
    
    
    //MARK: - PROPRESTIES
    let images: [UIImage] = [UIImage(named: "image1")!, UIImage(named: "image2")!, UIImage(named: "image3")!]
    let subCategoriesNames: [String] = ["T-shirts", "Crop tops", "Men's hoodies"]
    var isList: Bool = true // to set list icon to be true
    
        
    //MARK: - LIFCYCLE METHODS
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCollectionView()
    }
    

    //MARK: - METHODS
    func registerCollectionView() {
        subCategoriesCollectionView.register(UINib(nibName: "SubCategoriesCollectionViewCell", bundle: nil),forCellWithReuseIdentifier: "SubCategoriesCollectionViewCell")
        subCategoriesCollectionView.delegate = self
        subCategoriesCollectionView.dataSource = self
        
        productsCollectionView.register(UINib(nibName: "ListProductsCollectionViewCell", bundle: nil),forCellWithReuseIdentifier: "ListProductsCollectionViewCell")
        
        productsCollectionView.register(UINib(nibName: "GridProductCollectionViewCell", bundle: nil),forCellWithReuseIdentifier: "GridProductCollectionViewCell")
        
        productsCollectionView.delegate = self
        productsCollectionView.dataSource = self
    }
    
    

    func goToSortBy() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SortByViewController")
        viewController.modalPresentationStyle = .overFullScreen

        let transtion = CATransition() // this code to make an animation whene sort by is appear
        transtion.duration = 0.2
        transtion.type = .fade
        view.window?.layer.add(transtion, forKey: kCATransition)

        present(viewController, animated: false)
    }
    
    
    //MARK: - ACTIONS
    @IBAction func gridOrListTappedBtn(_ sender: UIButton) {
//        isList = !isList // another syntax to check var isList is true or false
        isList.toggle() // to check var isList is true or false
        let imageList = UIImage(named: "list") // to set list icon
        let imageGrid = UIImage(named: "grid") // to set grid icon
        let image = isList == true ? imageGrid : imageList // ternary operator to check if icon is list or grid
        gridListBtn.setImage(image, for: .normal) // to change icone from  grid to list
        productsCollectionView.reloadData() // it is to change clollectionView from list to grid by click on the boutton
    }
    
    @IBAction func sortByTappedBtn(_ sender: UIButton) {
       goToSortBy()
    }
}


//MARK: - EXTENSIOS
extension NewCollectionVc: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewcontroler = storyboard.instantiateViewController(withIdentifier: "ProductDetailsVC")
        navigationController?.pushViewController(viewcontroler, animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return subCategoriesNames.count
        if collectionView == subCategoriesCollectionView { // to return numbers of items for subCategoriesCollectionView
            return 3
        } else if collectionView == productsCollectionView { // to return numbers of items for productsCollectionView (list and grid collection)
            return 5
        } else {
            return 0
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case subCategoriesCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SubCategoriesCollectionViewCell", for: indexPath) as! SubCategoriesCollectionViewCell
            cell.categoryNameLabel.text = subCategoriesNames[indexPath.row]
            return cell
        default:
            if isList == true { // condition to showing colloction as a list
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ListProductsCollectionViewCell", for: indexPath) as! ListProductsCollectionViewCell
                return cell
                
            } else {  // condition to showing colloction as a grid
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GridProductCollectionViewCell", for: indexPath) as! GridProductCollectionViewCell
                return cell
            }
        }
    }
}

extension NewCollectionVc: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView {
        case subCategoriesCollectionView: // condetion to set width and height for subCategoriesCollectionView
            let width = subCategoriesCollectionView.frame.width
            let height = subCategoriesCollectionView.frame.height - 16
            return CGSize(width: width / 3, height: height)
        default:
            if isList == true { // condetion to set width and height for productsCollectionView (list collection)
                let width = productsCollectionView.frame.width
                return CGSize(width: width, height: 120)
            } else { // condetion to set width and height for productsCollectionView (grid collection)
                let width = productsCollectionView.frame.width
                return CGSize(width: width / 2, height: 236)
            }
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
          return UIEdgeInsets.zero
    }
    // this func to remove any lines between images
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
          return 0
    }
    //this func to remove any lines over images
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
         return 0
     }
}


