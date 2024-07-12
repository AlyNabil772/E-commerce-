//
//  ProductDetailsVC.swift
//  e-commerce
//
//  Created by ALY NABIL on 12/07/2024.
//

import UIKit

class ProductDetailsVC: UIViewController {
    
    @IBOutlet weak var productImageCollectionView: UICollectionView!
    @IBOutlet weak var recommendedProductsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCollectionView()

    }
    // categoriesCollectionViewCell
    // GridProductCollectionViewCell
    func registerCollectionView() {
        productImageCollectionView.register(UINib(nibName: "categoriesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "categoriesCollectionViewCell")
        productImageCollectionView.delegate = self
        productImageCollectionView.dataSource = self
        recommendedProductsCollectionView.register(UINib(nibName: "GridProductCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GridProductCollectionViewCell")
        recommendedProductsCollectionView.delegate = self
        recommendedProductsCollectionView.dataSource = self
    }
    
}


//MARK: - EXTENSION UICollectionViewDelegate, UICollectionViewDataSource
extension ProductDetailsVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case productImageCollectionView:
            return 2
        default:
            return 12
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case productImageCollectionView:
            let cell = productImageCollectionView.dequeueReusableCell(withReuseIdentifier: "categoriesCollectionViewCell", for: indexPath) as! categoriesCollectionViewCell
            cell.categoryNameLabel.isHidden = true // hide label 
            return cell
        default:
            let cell = recommendedProductsCollectionView.dequeueReusableCell(withReuseIdentifier: "GridProductCollectionViewCell", for: indexPath) as! GridProductCollectionViewCell
            return cell
        }
    }
    
    
}

// MARK: - EXTENSION UICollectionViewFlowLayout
extension ProductDetailsVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView {
        case productImageCollectionView:
            let width = collectionView.frame.width * 0.8
            let height = collectionView.frame.height
            return CGSize(width: width, height: height)
        default:
            let width = collectionView.frame.width / 2
            let height = collectionView.frame.height
            return CGSize(width: width, height: height)
        }
    }
}
