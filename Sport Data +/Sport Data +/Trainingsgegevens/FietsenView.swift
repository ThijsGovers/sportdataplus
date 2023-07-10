//
//  FietsenView.swift
//  Sport Data +
//
//  Created by Thijs Govers on 15/06/2023.
//

import SwiftUI

struct FietsenView: View {  
    var body: some View {
        Form{
            TrainingDelenView(headerTraining: "Gemiddeld vermogen", deelMetTrainer: "Delen met trainer", deelMetSS: "Delen met share sheet", footerTraining: "Als deze functie is ingeschakeld zal je gemiddel vermogen op de \"share sheet\" te zien zijn.")
            
            TrainingDelenView(headerTraining: "Max vermogen", deelMetTrainer: "Delen met trainer", deelMetSS: "Delen met share sheet", footerTraining: "Als deze functie is ingeschakeld zal je maximaal vermogen op de \"share sheet\" te zien zijn.")
            
            TrainingDelenView(headerTraining: "Afstand", deelMetTrainer: "Delen met trainer", deelMetSS: "Delen met share sheet", footerTraining: "Als deze functie is ingeschakeld zal totale afstand op de \"share sheet\" te zien zijn.")
            
            TrainingDelenView(headerTraining: "Gemiddeld hartslag", deelMetTrainer: "Delen met trainer", deelMetSS: "Delen met share sheet", footerTraining: "Als deze functie is ingeschakeld zal je gemiddel hartslag van het fietsen op de \"share sheet\" te zien zijn.")
            
            TrainingDelenView(headerTraining: "vo2 max", deelMetTrainer: "Delen met trainer", deelMetSS: "Delen met share sheet", footerTraining: "Als deze functie is ingeschakeld zal je VO2 Max waarde op de \"share sheet\" te zien zijn.")
        }
    }
}

struct FietsenView_Previews: PreviewProvider {
    static var previews: some View {
        FietsenView()
    }
}
