//
//  CollectionView.swift
//  Pinterest
//
//  Created by Alumno IDS on 4/4/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class CollectionView : UICollectionViewController, UICollectionViewDelegateFlowLayout{
    override func viewDidLoad() {
        collectionView?.register(PinCell.self, forCellWithReuseIdentifier: "Pin")
        view.backgroundColor = .red
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:(view.frame.width/2)-16, height:(view.frame.height/5))
    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Pin", for: indexPath) as! PinCell
        return cell
    }
}
class PinCell : UICollectionViewCell {
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupViews()
    }
    let imageView1 : UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named:"pinterestL.png")
        return img
    }()
    func setupViews(){
        self.addSubview(imageView1)
        
        imageView1.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageView1.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        imageView1.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 9/10).isActive = true
        imageView1.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 4/5).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
