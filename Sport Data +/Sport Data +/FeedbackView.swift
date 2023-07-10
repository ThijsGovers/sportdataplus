//
//  FeedbackView.swift
//  Sport Data +
//
//  Created by Thijs Govers on 09/06/2023.
//

import SwiftUI

struct FeedbackView: View {
    var body: some View {
        ZStack{
            Color("Black")
                .ignoresSafeArea(.all)
            Text("Feedback").foregroundColor(Color("White"))
        }
    }
}

struct FeedbackView_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackView()
    }
}
