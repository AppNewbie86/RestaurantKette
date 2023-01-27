//
//  MitarbeiterDetails.swift
//  RestaurantKette
//
//  Created by Marcel Zimmermann on 27.01.23.
//

import Foundation

struct MitarbeiterDetails : Identifiable,Hashable{
    var id = UUID()
    var firstName  : String
    var lastName  : String
    var age  : Int

}
