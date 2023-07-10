//
//  ProfielView.swift
//  Sport Data +
//
//  Created by Thijs Govers on 09/06/2023.
//

import SwiftUI

struct ProfielView: View {
    @EnvironmentObject var userData: UserData
    @State private var verjaardag = Date()
    
    var body: some View {
        ZStack{
            Color("Black")
                .ignoresSafeArea(.all)
            VStack{
                HStack{
                    ZStack{
                        Circle()
                            .frame(maxHeight: 100)
                        
                        Image(systemName: "person.circle")
                            .foregroundColor(Color("White"))
                            .font(.largeTitle)
                    }
                    VStack(alignment: .leading){
                        TextField("name", text: $userData.name)
                        Divider()
                            .frame(minHeight: 1)
                            .background(Color("GreyL"))
                        TextField("team", text: $userData.team)
                    }.foregroundColor(Color("White"))
                        .padding()
                        .background(Color("Grey"))
                        .cornerRadius(10)
                        .padding(.leading)
                }.padding(.horizontal,20)
                
                Form{
                    Section(header: Text("Biografie")) {
                        TextField("Leeftijd", text: $userData.leeftijd)
                        TextField("Lengte", text: $userData.lengte)
                        DatePicker("Verjaardag", selection: $verjaardag, displayedComponents: .date)
                    }
                    
                    Section(header: Text("Data instellingen")) {
                        NavigationLink(destination: PrivacyView(), label: {
                            Text("Privacy sheet")
                        })
                        
                        NavigationLink(destination: ShareView(), label: {
                            Text("Share sheet")
                        })
                    }
                    
                    Section(header: Text("Gekoppelde data")) {
                        NavigationLink(destination: GarminView(), label: {
                            Text("Garmin")
                        })
                        
                        NavigationLink(destination: PolarView(), label: {
                            Text("Polar")
                        })
                        
                        NavigationLink(destination: WhoopView(), label: {
                            Text("Whoop")
                        })
                    }
                    
                }//.foregroundColor(Color("White"))
                
                
            }
            
        }
    }
}

struct ProfielView_Previews: PreviewProvider {
    static var previews: some View {
        ProfielView().environmentObject(UserData())
    }
}
