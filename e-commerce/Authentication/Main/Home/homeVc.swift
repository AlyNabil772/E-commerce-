//
//  homeVc.swift
//  e-commerce
//
//  Created by ALY NABIL on 19/03/2024.
//

import UIKit

class homeVc: UIViewController {
    
    // Mark: - Outlets ---------------------
    
    @IBOutlet weak var homeCollectionView: UICollectionView!
    
    
    
    // Mark: - propreties ------------------------
    
    
    let images: [UIImage] = [UIImage(named: "image1")!, UIImage(named: "image2")!, UIImage(named: "image3")!]
    let names: [String] = ["New collection", "Sumer sale", "Men's hoodies"]
    
    
    
    // Mark Lifcycle Methods -----------------------
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCollectionView()
        
        
        
      
    }
    
    // Mark: - Methods ---------------------
    
    
    
    func registerCollectionView() {
        homeCollectionView.register(UINib(nibName: "categoriesCollectionViewCell", bundle: nil),forCellWithReuseIdentifier: "categoriesCollectionViewCell")
        homeCollectionView.delegate = self
        homeCollectionView.dataSource = self
        
    
    }
   

}



    // Extensions ------------------------

    
extension homeVc: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let viewCotroller = storyboard.instantiateViewController(withIdentifier: "NewCollectionVc")
            navigationController?.pushViewController(viewCotroller, animated: true)

        }
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = homeCollectionView.dequeueReusableCell(withReuseIdentifier: "categoriesCollectionViewCell", for: indexPath) as! categoriesCollectionViewCell
        cell.categoryImage.image = images[indexPath.row]
        cell.categoryNameLabel.text = names[indexPath.row]
        return cell
    }
}

extension homeVc: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = homeCollectionView.frame.width
        let height = (homeCollectionView.frame.height / 2) - 24
        switch indexPath.row {
        case 0:
            return CGSize(width: width, height: height)
        default:
            return CGSize(width: width / 2 - 5, height: height)
    
        }
        
    }
    
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
  }
    
    // this func to remove any lines between images
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    // this func to remove any lines over images
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
       return 0
   }
}

  
