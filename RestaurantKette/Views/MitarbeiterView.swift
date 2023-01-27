//
//  MitarbeiterView.swift
//  RestaurantKette
//
//  Created by Marcel Zimmermann on 27.01.23.
//

import SwiftUI

struct MitarbeiterView: View {
    @EnvironmentObject var viewModel : RestaurantViewModel
    @State var textFieldName : String = ""
    var body: some View {
        VStack{
            Text("Mitarbeiter")
            List{
                ForEach(viewModel.mitarbeiterList){mitarbeiter in
                    HStack{
                        Text("\(mitarbeiter.name)")
                    }
                }
            }
            // vertikaler Stabel mit TextField und Binding
            HStack{
                TextField("neuer Mitarbeiter", text: $textFieldName)
            }
            .padding()
            Button("Werte eintragen"){
               
            }
        }
    }
}


struct MitarbeiterView_Previews: PreviewProvider {
    static var previews: some View {
        MitarbeiterView()
            .environmentObject(RestaurantViewModel())
    }
}
