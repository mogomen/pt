//
//  EventInfoViewController.swift
//  PartyMap swift 5
//
//  Created by Biscuit on 5/20/19.
//  Copyright © 2019 the Biscuits. All rights reserved.
//

import UIKit

class EventInfoViewController: UIViewController {

    // Mark: Outlest

    @IBOutlet weak var placeImageButton: UIButton!
    @IBOutlet weak var namePlaceLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var adressPlaceLabel: UILabel!
    @IBOutlet weak var seeMoreImagesButton: UIButton!
    @IBOutlet weak var aboutPlaceTextField: UITextView!
    @IBOutlet weak var addToFavoritesButton: UIButton!
    
    private var galleryCollectionView = LinkGalleryCollectionView()
    
    
    
    func createStile() {
        
        let blur = UIBlurEffect(style: .light)
        //     let blurEffect = UIVisualEffectView(effect: blur)
        //    blurEffect.frame = view.bounds
        //  view.addSubview(blurEffect)
        placeImageButton.layer.cornerRadius = placeImageButton.frame.height/2
        
        
        // to check
        adressPlaceLabel.text = "ул. Рубинштейна, 9, Санкт-Петербург, Россия"
        categoryLabel.text = "Bars/Restourans"
        namePlaceLabel.text = "Punk Brew"
        timeLabel.text = "22:10, 11.22.2019"
        seeMoreImagesButton.layer.cornerRadius = seeMoreImagesButton.frame.height/2 
        aboutPlaceTextField.layer.cornerRadius = aboutPlaceTextField.frame.height/8
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createStile()
        
        view.addSubview(galleryCollectionView)
        
        galleryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        galleryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        galleryCollectionView.topAnchor.constraint(equalTo: seeMoreImagesButton.bottomAnchor, constant: 10).isActive = true
        galleryCollectionView.heightAnchor.constraint(equalToConstant: 50).isActive = true // высота столбца
        //galleryCollectionView.bottomAnchor.constraint(equalTo: aboutPlaceTextField.topAnchor).isActive = true
        galleryCollectionView.set(cells: SushiModel.fetchSushi())

        
     //   var persent = self.window.cgfloat.heigh* 0.05 // 5 procent
        
        
        
        // BLUR EFFECT
//      let blur = UIBlurEffect(style: .light)
  //     let blurEffect = UIVisualEffectView(effect: blur)
    //    blurEffect.frame = view.bounds
      //  view.addSubview(blurEffect)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
