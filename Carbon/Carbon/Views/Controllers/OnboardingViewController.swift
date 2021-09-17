//
//  CarbonController.swift
//  Carbon
//
//  Created by  Decagon on 22/08/2021.
//

import UIKit
import Lottie

class OnboardingViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        cv.dataSource = self
        cv.delegate = self
        cv.isPagingEnabled = true
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    let cellId = "cellId"
    
    let pages: [Page] = {
        let firstPage = Page(title: "Go beyond Banking", message: "Welcome to the future. Carbon is your passport to world-class financial services, built just for you", animationName: "carbon")
        let secondPage = Page(title: "Stay on top of your finances. Anytime. Anywhere.", message: "Carbon makes financial services faster, cheaper and more convenient. You can access the app 24/7, wherever you are.", animationName: "bank")
        let thirdPage = Page(title: "Trusted by millions", message: "With Carbon's market-leading services already used by millions of people just like you, you're in very good company.", animationName: "carbonPink")
        return [firstPage, secondPage, thirdPage]
    }()
    
    // MARK:- set-up-new-account button
    let nextScreenButton: UIButton = {
        let button = UIButton()
        button.setTitle("Set up new account", for: .normal)
        button.backgroundColor = .systemPurple
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 18)
        button.addTarget(self, action: #selector(didTapSetUpButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        return button
    }()
    
    // MARK:- LOGO
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.backgroundColor = .yellow
        iv.image = UIImage(named: "Carbon")
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        
    }
}
