//
//  SliderView.swift
//  Sport Data +
//
//  Created by Thijs Govers on 05/06/2023.
//

import SwiftUI

struct SliderView : View {
    @Binding var value : Double
    
    let titleText: String
    //Slider
    let minText: String
    let maxText: String


    var body: some View{
        VStack{
            HStack{
                Text(titleText)
                    .font(.title2)
                    .foregroundColor(Color("White"))
                Spacer()
            }.padding(.horizontal, 20)
                
                Slider(value: $value, in: -2...2, step: 1)
                    .padding(20)
                .accentColor(Color("BlueL"))
           
            HStack{
                    Text(minText)
                        .foregroundColor(Color("White"))
                    Spacer()
                    Text (maxText)
                        .foregroundColor(Color("White"))
            }.padding(.horizontal, 20)
        }.padding(.bottom, 75)
    }
}
