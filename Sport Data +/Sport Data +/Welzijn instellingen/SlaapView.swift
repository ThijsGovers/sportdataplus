//
//  SlaapView.swift
//  Sport Data +
//
//  Created by Thijs Govers on 15/06/2023.
//

import SwiftUI

struct SlaapView: View {
    @State var deelSlaaptijd : Bool = false
    
    var body: some View {
        Form{
            PrivactFormView(headerText: "Slaap uren", deelSlaaptijdText: "Delen met trainer", slaapSSText: "Delen met share sheet", footerText: "Als deze functie is ingeschakeld zal het gemiddeld aantal slaapuren over een jaar op de \"share sheet\" komen te staan.")
            
            PrivactFormView(headerText: "Rust pols", deelSlaaptijdText: "Delen met trainer", slaapSSText: "Delen met share sheet", footerText: "Als deze functie is ingeschakeld zal het gemiddeld rustpols over een jaar op de \"share sheet\" komen te staan.")
            
            PrivactFormView(headerText: "Slaap kwalliteit", deelSlaaptijdText: "Delen met trainer", slaapSSText: "Delen met share sheet", footerText: "Als deze functie is ingeschakeld zal de gemiddeld slaapkwalliteit over een jaar op de \"share sheet\" komen te staan.")
        }
    }
}

struct SlaapView_Previews: PreviewProvider {
    static var previews: some View {
        SlaapView()
    }
}
