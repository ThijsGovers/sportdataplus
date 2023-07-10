//
//  VragenlijstView.swift
//  Sport Data +
//
//  Created by Thijs Govers on 09/06/2023.
//

import SwiftUI

struct VragenlijstView: View {
    var body: some View {
        ZStack{
            Color("Black")
                .ignoresSafeArea(.all)
            VStack{
                Text("Vragenlijsten invullen")
                    .font(.title)
                    .foregroundColor(Color("White"))
                    .padding(.bottom, 50)
                
                NavigationLink(destination: WelzijnView(), label: {
                    HStack{
                        Spacer()
                        Text("Welzijn vragenlijst invullen")
                            .font(.title2)
                        Spacer()
                    }.padding(.vertical, 20)
                        .foregroundColor(Color("White"))
                        .background(Color("BlueL"))
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 10)
                    })
                
                               
                NavigationLink(destination: TrainingLogView(), label: {
                    HStack{
                        Spacer()
                        Text("Training log invullen")
                            .font(.title2)
                        Spacer()
                    }.padding(.vertical, 20)
                        .foregroundColor(Color("White"))
                        .background(Color("BlueL"))
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                })
            }
        }
    }
}

struct VragenlijstView_Previews: PreviewProvider {
    static var previews: some View {
        VragenlijstView()
    }
}
