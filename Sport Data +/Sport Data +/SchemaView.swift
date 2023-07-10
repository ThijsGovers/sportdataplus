//
//  SchemaView.swift
//  Sport Data +
//
//  Created by Thijs Govers on 09/06/2023.
//

import SwiftUI

struct SchemaView: View {
    var body: some View {
        ZStack{
            Color("Black")
                .ignoresSafeArea(.all)
            Text("Schema").foregroundColor(Color("White"))
            
        }
    }
}

struct SchemaView_Previews: PreviewProvider {
    static var previews: some View {
        SchemaView()
    }
}
