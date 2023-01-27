//
//  RestaurantView.swift
//  RestaurantKette
//
//  Created by Marcel Zimmermann on 27.01.23.
//

import SwiftUI

struct RestaurantView: View {
    @EnvironmentObject var viewModel : RestaurantViewModel
    @State var textFieldRestaurantName : String = ""
    var body: some View {
        VStack{
            Text("Restaurant")
            List{
                ForEach(viewModel.restaurantsList){restaurant in
                    HStack{
                        Text("\(restaurant.name)")
                    }
                }
            }
            // vertikaler Stabel mit TextField und Binding
            HStack{
                TextField("neues Restaurant", text: $textFieldRestaurantName)
            }
            .padding()
            Button("Werte eintragen"){
               
            }
        }
    }
}


struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView()
            .environmentObject(RestaurantViewModel())

    }
}
