//
//  WelzijnView.swift
//  Sport Data +
//
//  Created by Thijs Govers on 09/06/2023.
//

import SwiftUI

struct WelzijnView: View {
    @EnvironmentObject var userData: UserData
    //@State var welzijnData: WelzijnData
    
    @State var slaapkwalliteit: Double = 0
    @State var vermoeidheid: Double = 0
    @State var stress: Double = 0
    @State var algSpierpijn: Double = 0
    @State var gemoedstoestand: Double = 0
    @State var rtt: Double = 0
    @State var spierpijnLoc = ""
    @State var rustpols = ""
    @State var gewicht = ""
    
    var welzijn: some View{
        VStack{
            HStack{
                Text("Welzijn")
                    .font(.title)
                    .padding(5)
                    .background(Color("BlueL"))
                    .foregroundColor(Color("White"))
                    .cornerRadius(10)
                Spacer()
            }.padding(.leading, 20)
            Group{
                
                SliderView(value: $slaapkwalliteit, titleText: "Slaapkwalliteit", minText: "Slapenloosheid", maxText: "Erg goed geslapen")
                
                Text("Slaapuren")
                    .font(.title2)
                    .foregroundColor(Color("White"))
                    .padding(.vertical, 25)
                
                SliderView(value: $vermoeidheid, titleText: "Vermoeidheid", minText: "Heel vermoeid", maxText: "Heel energiek")
                
                SliderView(value: $stress, titleText: "Stress", minText: "Erg gestrest", maxText: "Erg realext")
                
                SliderView(value: $algSpierpijn, titleText: "Algemene spierpijn", minText: "Erg veel spierpijn", maxText: "Geen spierpijn")
                
                TextField("Waar heb je spierpijn?", text: $spierpijnLoc)
                    .padding()
                    .background(Color("White"))
                    .padding(.vertical, 25)
                    .padding(.horizontal, 20)
                    .cornerRadius(10)
                
                SliderView(value: $gemoedstoestand, titleText: "Gemoedstoestand", minText: "Erg prikkelbaar / down", maxText: "Heel positief")
                
            }
        }
    }
    
    var gezondheid: some View {
        Group{
            HStack{
                Text("Gezondheid")
                    .font(.title)
                    .padding(5)
                    .background(Color("BlueL"))
                    .foregroundColor(Color("White"))
                    .cornerRadius(10)
                Spacer()
            }.padding(.leading, 20)
            
            SliderView(value: $rtt, titleText: "Readiness-to-train", minText: "Onmogelijk om te trainen", maxText: "Helemaal ready to train")
        
            HStack{
                Text("Rusthartslag")
                    .foregroundColor(Color("White"))
                Spacer()
                TextField("Slagen per minuut", text: $rustpols)
                    .frame(maxWidth: 150)
                    .padding()
                    .background(Color("White"))
                    .padding(.vertical, 25)
                    .cornerRadius(10)
            }.padding(.horizontal, 20)
            
            
            HStack{
                Text("Lichaamsgewicht")
                    .foregroundColor(Color("White"))
                Spacer()
                TextField("Gewicht in kg", text: $gewicht)
                    .frame(maxWidth: 150)
                    .padding()
                    .background(Color("White"))
                    .padding(.vertical, 25)
                    .cornerRadius(10)
            }.padding(.horizontal, 20)
            
            
                Toggle("ziek?", isOn: $userData.ziek)
                    .foregroundColor(Color("White"))
                    .padding(.horizontal, 20)
            
                Toggle("Geblesseerd?", isOn: $userData.geblesseerd)
                    .foregroundColor(Color("White"))
                    .padding(.horizontal, 20)
           
                Text("Opmerkingen")
                    .font(.title2)
                    .foregroundColor(Color("White"))
                    .padding(.vertical, 25)
            TextField("ziek / blessures / overig", text: $userData.overig)
                .padding()
                .background(Color("White"))
                .padding(.horizontal, 20)
                .cornerRadius(10)
            
            NavigationLink(destination: HomeView(), label: {
                Text("Opslaan")
                    .foregroundColor(Color("White"))
                    .font(.title2)
                    .padding(.horizontal, 50)
                    .padding(.vertical, 15)
                    .background(Color("BlueL"))
                    .cornerRadius(10)
                    .padding(.vertical, 25)
            })
        }
    }
    
    var body: some View {
        ZStack{
                Color("Black")
                    .ignoresSafeArea(.all)
            VStack{
                HStack{
                    Text("Dagelijkse vragenlijst")
                        .font(.title)
                        .foregroundColor(Color("White"))
                    Spacer()
                }.padding(.horizontal, 20)
                    
                    ScrollView{
                        VStack{
                            welzijn
                            
                            gezondheid
                            
                        }
                    }
            }
        }
    }
}

struct WelzijnView_Previews: PreviewProvider {
    static var previews: some View {
        WelzijnView().environmentObject(UserData())
    }
}
