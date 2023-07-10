//
//  PrivacyFormView.swift
//  Sport Data +
//
//  Created by Thijs Govers on 21/06/2023.
//

import SwiftUI

struct PrivactFormView: View {
    let headerText : String
    let deelSlaaptijdText : String
    @State var deelSlaaptijd : Bool = false
    let slaapSSText : String
    @State var slaapSS : Bool = false
    let footerText : String
    
    var body: some View {
        //form
        //koptekst
        //tekst - Toggle (Bool)
        //tekst - Picker (String?)
        //tekst - Toggle (Bool)
        //ondertekst
        //Als deze functie is ingeschakeld zal het gemiddeld aantal slaapuren over een jaar op de \"share sheet\" komen te staan.
        
        
            Section{
                Toggle(isOn: $deelSlaaptijd, label: {
                    Text(deelSlaaptijdText)
                })
                
                //Picker
                Text("Deel tijd")
                
                Toggle(isOn: $slaapSS, label: {
                    Text(slaapSSText)
                })
            } header: {
                Text(headerText)
            } footer: {
                Text(footerText)
            
        }
    }
}

//struct PrivactFormView_Previews: PreviewProvider {
//    static var previews: some View {
//        PrivactFormView()
//    }
//}


//struct PrivacyFormView_Previews: PreviewProvider {
//    static var previews: some View {
//        PrivacyFormView()
//    }
//}
