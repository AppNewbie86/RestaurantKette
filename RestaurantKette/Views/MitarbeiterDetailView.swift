//
//  MitarbeiterDetailView.swift
//  RestaurantKette
//
//  Created by Marcel Zimmermann on 27.01.23.
//

import SwiftUI

struct MitarbeiterDetailView: View {
    
    @State var newDetails: String = ""
   
    
    
    @EnvironmentObject var viewModel : RestaurantViewModel
    
    var body: some View {
        VStack {
            Text("Vorname")
                .bold()
            Text("Rocco")
            Divider()
            Text("Nachname")
                .bold()
            Text("Salvretti")
            Divider()
            Text("Alter")
                .bold()
            Text("29")
            Divider()
            
            HStack{
                TextField("neue Mitarbeiter Details", text: $newDetails)
                    .padding()
                Button("hinzufügen"){}
                    .padding()

            }
        }
    }
    struct MitarbeiterDetailView_Previews: PreviewProvider {
        static var previews: some View {
            MitarbeiterDetailView()
        }
    }
}
