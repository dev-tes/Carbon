//
//  OnboardingVCExtension.swift
//  Carbon
//
//  Created by  Decagon on 26/08/2021.
//

import UIKit

extension OnboardingViewController {
    
    // MARK:- Skip button
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let pageNumber = Int(targetContentOffset.pointee.x / view.frame.width)
        
        if pageNumber == 0 {
            self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Skip", style: .plain, target: self, action: #selector(didTapSetUpButton))
            customizeBarButton()
        }
        if pageNumber != 0 {
            self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign In", style: .plain, target: self, action: #selector(didTapSignInButton))
            customizeBarButton()
        }
    }
    
    // MARK:- did Tap Button
    @objc func didTapSignInButton(){
        let signInViewController = SignInViewController()
        navigationController?.pushViewController(signInViewController, animated: true)
        
    }
    
    // MARK:- skip Button
    @objc func didTapSetUpButton(){
        let signInViewController = SignUpViewController()
        navigationController?.pushViewController(signInViewController, animated: true)
        
        self.navigationItem.rightBarButtonItem?.tintColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
        
    }
    
    private func customizeBarButton() {
        
        self.navigationItem.rightBarButtonItem?.tintColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
    }
    
    // MARK: - Setting Views
    func setupViews() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Skip", style: .plain, target: self, action: #selector(didTapSetUpButton))
        customizeBarButton()
        setupConstraints()
        view.backgroundColor = .white
        collectionView.register(PageCell.self, forCellWithReuseIdentifier: cellId)
        
    }
    
    // MARK: - Setting Constraints
    private func setupConstraints() {
        view.addSubview(nextScreenButton)
        view.addSubview(imageView)
        view.addSubview(collectionView)
        collectionView.anchorWithConstantsToTop(imageView.bottomAnchor, left: view.leftAnchor, bottom: nextScreenButton.topAnchor, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 10, rightConstant: 0)
        
        NSLayoutConstraint.activate([
            nextScreenButton.heightAnchor.constraint(equalToConstant: 52),
            nextScreenButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -32),
            nextScreenButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            nextScreenButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            imageView.heightAnchor.constraint(equalToConstant: 50),
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
        ])
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        pages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! PageCell
        let page = pages[indexPath.item]
        cell.page = page
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
}
