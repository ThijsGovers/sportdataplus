//
//  PrivacyView.swift
//  Sport Data +
//
//  Created by Thijs Govers on 15/06/2023.
//

import SwiftUI

struct PrivacyView: View {
    var body: some View {
        Form{
            Section(header: Text ("Welzijn")) {
                NavigationLink(destination: SlaapView(), label: {
                    Image(systemName: "bed.double.fill")
                        .foregroundColor(Color("White"))
                        .frame(width: 33.0, height: 33.0)
                        .background(Color("GreyL"))
                        .cornerRadius(5)
                    Text("Slaap")
                })
                
                NavigationLink(destination: FysiekView(), label: {
                    Image(systemName: "figure.arms.open")
                        .foregroundColor(Color("White"))
                        .frame(width: 33.0, height: 33.0)
                        .background(Color("GreyL"))
                        .cornerRadius(5)
                    Text("Fysieke gesteldheid")
                })
                
                NavigationLink(destination: MentaalView(), label: {
                    Image(systemName: "brain.head.profile")
                        .foregroundColor(Color("White"))
                        .frame(width: 33.0, height: 33.0)
                        .background(Color("GreyL"))
                        .cornerRadius(5)
                    Text("Mentale gesteldheid")
                })
                
                NavigationLink(destination: BijzonderhedenView(), label: {
                    Image(systemName: "gear.badge.questionmark")
                        .foregroundColor(Color("White"))
                        .frame(width: 33.0, height: 33.0)
                        .background(Color("GreyL"))
                        .cornerRadius(5)
                    Text("Bijzonderheden")
                })
            }
            
            Section(header: Text ("Trainingsgegevens")) {
                NavigationLink(destination: SchaatsenView(), label: {
                    Image("figure.speedskate")
                        .foregroundColor(Color("White"))
                        .frame(width: 33.0, height: 33.0)
                        .background(Color("Red"))
                        .cornerRadius(5)
                    Text("Schaatsen")
                })
                
                NavigationLink(destination: FietsenView(), label: {
                    Image(systemName: "figure.outdoor.cycle")
                        .foregroundColor(Color("White"))
                        .frame(width: 33.0, height: 33.0)
                        .background(Color("Green"))
                        .cornerRadius(5)
                    Text("Fietsen")
                })
                
                NavigationLink(destination: KrachttrainingView(), label: {
                    Image(systemName: "figure.strengthtraining.traditional")
                        .foregroundColor(Color("White"))
                        .frame(width: 33.0, height: 33.0)
                        .background(Color("Purple"))
                        .cornerRadius(5)
                    Text("Krachttraining")
                })
                
                NavigationLink(destination: HardlopenView(), label: {
                    Image(systemName: "figure.run").foregroundColor(Color("White"))
                        .frame(width: 33.0, height: 33.0)
                        .background(Color("Yellow"))
                        .cornerRadius(5)
                    Text("Hardlopen")
                })
                
                NavigationLink(destination: InlineView(), label: {
                    Image("figure.inline")
                        .foregroundColor(Color("White"))
                        .frame(width: 33.0, height: 33.0)
                        .background(Color("Mint"))
                        .cornerRadius(5)
                    Text("Inline")
                })
                
                NavigationLink(destination: ShorttrackView(), label: {
                    Image("figure.shorttrack")
                        .foregroundColor(Color("White"))
                        .frame(width: 33.0, height: 33.0)
                        .background(Color("Orange"))
                        .cornerRadius(5)
                    Text("Shorttrack")
                })
            }
        }
        
    }
}

struct PrivacyView_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyView()
    }
}
