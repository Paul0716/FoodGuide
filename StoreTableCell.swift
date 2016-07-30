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
        
        let previewPhoto = photo.first
        
//        Alamofire
//            .request(
//                .GET,
//                "https://maps.googleapis.com/maps/api/place/photo",
//                parameters: [
//                    "key": "AIzaSyAmG59jZCzeqXlRK9wbytscseo5A0oxQ_8",
//                    "photoreference" : previewPhoto["photo_reference"],
//                    "maxheight": previewPhoto["height"],
//                    "maxwidth": previewPhoto["width"]
//                ]
//            )
//            .response { response in
//                
//        }
        
    }
}