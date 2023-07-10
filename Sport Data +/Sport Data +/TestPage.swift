//
//  TestPage.swift
//  Sport Data +
//
//  Created by Thijs Govers on 05/06/2023.
//

import SwiftUI

struct TestPage: View {
    
    @State var test: Double = 0
    
    var body: some View {
        
        VStack{
            Text("Hello, World!")
            Slider(value: $test, in: -2...2, step: 1)
                .padding(20)
                .accentColor(Color("BlueL"))
            HStack{
                Text ("Slecht")
                Spacer()
                Text ("Goed")
            }.padding(.horizontal, 20)
            
            SliderView(value: $test, titleText: "Title", minText: "min", maxText: "max")
            
            
            
        }
        
    }
}

struct TestPage_Previews: PreviewProvider {
    static var previews: some View {
        TestPage()
    }
}
