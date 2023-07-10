//
//  WhoopView.swift
//  Sport Data +
//
//  Created by Thijs Govers on 15/06/2023.
//

import SwiftUI

struct WhoopView: View {
    var body: some View {
        ZStack{
            Color("Black")
                .ignoresSafeArea(.all)
            VStack{
                Text("Whoop")
                    .font(.title)
                Divider().background(Color("BlueL"))
                Text("Op deze pagina moet een gebruiker de koppeling met het Whoop account gemaakt kunnen worden.").padding(.vertical)
                HStack{
                    VStack(alignment: .leading){
                        Text("* Koppel data")
                        Text("* Zie gekoppelde apparaten")
                        Text("* Zie gekoppeld account")
                    }.padding(.leading, 30)
                    Spacer()
                }
            }.foregroundColor(Color("White")).padding(20)
        }
    }
}

struct WhoopView_Previews: PreviewProvider {
    static var previews: some View {
        WhoopView()
    }
}
