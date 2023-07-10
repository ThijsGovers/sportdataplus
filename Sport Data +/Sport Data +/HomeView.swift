//
//  HomeView.swift
//  Sport Data +
//
//  Created by Thijs Govers on 06/06/2023.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        ZStack{
            Color("Black")
            
            VStack{
                Spacer()
                HStack{
                    ZStack{
                        Circle()
                            .stroke(Color("Black"), style: StrokeStyle (lineWidth: 2))
                        
                        Circle()
                            .trim(from: 0.0, to: 0.9)
                            .stroke(Color("GreenL"), style: StrokeStyle (lineWidth: 2))
                            .rotationEffect(.init(degrees: -90))
                        
                        Text("90%")
                            .foregroundColor(Color("White"))
                    }.padding(.trailing).frame(maxHeight: 90)
                    
                    
                    
                    VStack(alignment: .leading){
                        Text("Maandag 20 feb.")
                        Divider()
                            .frame(minHeight: 1)
                            .background(Color("White"))
                        Text("Taper week")
                    }.foregroundColor(Color("White"))
                        .padding()
                        .background(Color("BlueL"))
                        .cornerRadius(10)
                }.padding(20)
                
                PlanningItemView()
                
                HStack{
                    VStack(alignment: .leading){
                        Text("16:00").foregroundColor(Color("BlueL"))
                        Text("Thialf").foregroundColor(Color("White"))
                    }
                    Spacer()
                    VStack(alignment: .leading){
                        Text("Kracht").foregroundColor(Color("BlueL"))
                        Text("Power").foregroundColor(Color("White"))
                    }
                    Spacer()
                    Image("Gewicht").foregroundColor(Color("BlueL"))
                    
                    
                }.padding()
                .border(Color("BlueL"), width: 1)
                .cornerRadius(10)
                .padding(20)
                
                HStack{
                    Image("Bed").foregroundColor(Color("White"))
                    
                    Spacer()
                    
                    Image(systemName: "1.square").foregroundColor(Color("White"))
                        .font(.system(size: 40))
                    
                    Spacer()
                    
                    Image(systemName: "2.square").foregroundColor(Color("White"))
                        .font(.system(size: 40))
                    
                }.padding()
                .border(Color("BlueL"), width: 1)
                .cornerRadius(10)
                .padding(20)
                
                HStack{
                    Spacer()
                    
                }.padding()
                .border(Color("BlueL"), width: 1)
                .cornerRadius(10)
                .padding(20)
                
                Spacer()
                
                //BottombarView().frame(maxHeight: 85)
                
            }
            
            
        }.ignoresSafeArea()
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct PlanningItemView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("9:30").foregroundColor(Color("BlueL"))
                Text("Thialf").foregroundColor(Color("White"))
            }
            Spacer()
            VStack(alignment: .leading){
                Text("Schaatsen").foregroundColor(Color("BlueL"))
                Text("Ext interval").foregroundColor(Color("White"))
            }
            Spacer()
            Image("Schaats").foregroundColor(Color("BlueL"))
            
        }.padding()
            .border(Color("BlueL"), width: 1)
            .cornerRadius(10)
            .padding(20)
    }
}
