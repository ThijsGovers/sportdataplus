//
//  TrainingDelenView.swift
//  Sport Data +
//
//  Created by Thijs Govers on 23/06/2023.
//

import SwiftUI

enum DeelTijd: String, CaseIterable {
    case dag = "Één dag"
    case week = "Week"
    case maand = "Maand"
    case jaar = "Jaar"
    case altijd = "Altijd"
}

struct TrainingDelenView: View {
    let headerTraining : String
    let deelMetTrainer : String
    @State var metTrainer : Bool = true
    let deelMetSS : String
    @State var maxVermogen : Bool = true
    let footerTraining : String
    
    
    var body: some View {
        //header text
        //delen met trainer
        //hoelang
        //delen met share sheet
        //footer text
        Section{
            Toggle(isOn: $metTrainer, label: {
                Text(deelMetTrainer)
            })
            //picker
            Text("Deel tijd picker")
            Toggle(isOn: $maxVermogen, label: {
                Text(deelMetSS)
            })
        } header: {
            Text(headerTraining)
        } footer: {
            Text(footerTraining)
        }
    }
}

//struct TrainingDelenView_Previews: PreviewProvider {
//    static var previews: some View {
//        TrainingDelenView()
//    }
//}
