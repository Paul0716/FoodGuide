//
//  StoreTableCell.swift
//  FoodGuide
//
//  Created by Paul Ku on 2016/7/29.
//  Copyright © 2016年 Paul Ku. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class StoreTableCell:UITableViewCell {
    
    @IBOutlet weak var storeName: UILabel!
    @IBOutlet weak var StoreDetail: UILabel!
    @IBOutlet weak var PreviewImage: UIImageView!
    
    func loadImage( photo: [AnyObject] ){
        
        if let previewPhoto = photo.first {
            if let photo_ref = previewPhoto["photo_reference"],
                height = previewPhoto["height"],
                width = previewPhoto["height"] {
                var parameters = [
                    "key": "AIzaSyAmG59jZCzeqXlRK9wbytscseo5A0oxQ_8",
                    "photoreference" : photo_ref!,
                    "maxheight": height!,
                    "maxwidth": width!
                ]
                
                Alamofire.request( .GET, "https://maps.googleapis.com/maps/api/place/photo", parameters: parameters )
                    .response {
                        response in
                        let (_,_,data,_) = response
                        let img = UIImage(data: data!)
                        self.PreviewImage.image = img
                    }
            }
        }
        
        
        

        
    }
}