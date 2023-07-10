//
//  TrainingLogView.swift
//  Sport Data +
//
//  Created by Thijs Govers on 09/06/2023.
//

import SwiftUI

enum TrainingType: String, CaseIterable {
    case atletiek = "Atletiek"
    case krachttraining = "Krachttraining"
    case hardlopen = "Hardlopen"
    case ijshockey = "Ijshockey"
    case inline = "Inline skeeleren"
    case mountainbiken = "Mountainbiken"
    case core = "Core stability"
    case schaatsen = "Schaatsen"
    case shorttrack = "Shorttrack"
    case fietsen = "Fietsen"
    case anders = "Anders"

    var id: Self { self }
}

enum SessieType: String, CaseIterable {
    case extensieve_duur = "Extensieve duur"
    case extensieve_interval = "Extensieve interval"
    case extensieve_tempo = "Extensieve tempo"
    case herstel = "Herstel"
    case intensieve_duur = "Intensieve duur"
    case intensieve_interval = "Intensieve interval"
    case intensieve_tempo = "Intensieve tempo"
    case power = "Power"
    case kracht = "Kracht"
    case sprint = "Sprint"
    case teamtraining = "Teamtraining"
    case techniek = "Techniek"
    case testen = "Testen"
    case vaartspel = "Vaartspel"
    case wedstrijd = "Wedstrijd"
    case wedstrijdvoorbereiding = "Wedstrijdvoorbereiding"
    case anders = "Anders"
}

extension String {
       func capitalizeFirstLetter() -> String {
            return self.prefix(1).capitalized + dropFirst()
       }
  }

struct TrainingLogView: View {
    @State private var selectedTraining: TrainingType = .anders
    @State private var selectedSessie: SessieType = .anders
    
    @EnvironmentObject var userData: UserData
    @State var datum = Date()
    @State var rpe : Double = 5
    
    @State var tijdsduur = ""
    @State var opmerkingen = ""
    @State var tevredenheid : Double = 0
    
    var body: some View {
        ZStack{            Color("Black")
                .ignoresSafeArea(.all)
            
            VStack{
                HStack{
                    Text("Training log")
                        .font(.title)
                        .foregroundColor(Color("White"))
                    Spacer()
                }.padding(.horizontal, 20)
                    
                ScrollView{
                        Group{
                            VStack{
                                Text("Trainingtype").foregroundColor(Color("White"))
                                HStack{
                                    Spacer()
                                    Picker("Training type", selection: $selectedTraining) {
                                        ForEach(TrainingType.allCases, id: \.self){training in
                                            Text(training.rawValue.capitalizeFirstLetter())
                                        }
                                    }
                                }.padding(5)
                                    .background(Color("White"))
                                    .cornerRadius(10)
                                    .padding(.horizontal, 20)
                                    .accentColor(Color("BlueL"))
                            }.padding(.vertical, 25)
                            
                            VStack{
                                Text("Sessietype").foregroundColor(Color("White"))
                                HStack{
                                    Spacer()
                                    Picker("Sessie type", selection: $selectedSessie) {
                                        ForEach(SessieType.allCases, id: \.self){training in
                                            Text(training.rawValue.capitalizeFirstLetter())
                                        }
                                    }
                                }.padding(5)
                                    .background(Color("White"))
                                    .cornerRadius(10)
                                    .padding(.horizontal, 20)
                                    .accentColor(Color("BlueL"))
                            }.padding(.vertical, 25)
                            
                            HStack{
                                Text("Tijdsduur")
                                Spacer()
                                TextField("Minuten", text: $tijdsduur)
                                    .frame(maxWidth: 100)
                                        .padding()
                                        .background(Color("White"))
                                        .padding(.vertical, 25)
                                        .cornerRadius(10)
                            }.padding(.horizontal, 20)
                            
                            DatePicker("Datum en tijd", selection: $datum, in: ...Date())
                                .padding()
                                .background(Color("BlueL"))
                                .cornerRadius(10)
                                .foregroundColor(Color("White"))
                                .accentColor(Color("BlueL"))
                                .padding(.vertical, 25)
                                .padding(.horizontal, 20)
                        }
                
                Group{
                    Text("RPE score")
                    Slider(value: $rpe, in: 1...10, step: 1)
                        .accentColor(Color("BlueL"))
                        .padding(.horizontal, 20)
                        .padding(.vertical, 25)
                    
                    
                    SliderView(value: $tevredenheid, titleText: "Tevredenheid over training", minText: "Zeer tevreden", maxText: "Zeer ontevreden")
                        
                        .padding(.vertical, 25)
                    
                    VStack {
                        Text("Opmerkingen")
                        TextField("Vul iets in (optioneel)", text: $opmerkingen)
                                .padding()
                                .background(Color("White"))
                                .foregroundColor(Color("Grey"))
                                .padding(.vertical, 25)
                                .cornerRadius(10)
                    }.padding(.horizontal, 20)
                    
                    Image(systemName: "camera.shutter.button")
                        .resizable()
                        .frame(width: 50, height: 50)
                        
                    
                    NavigationLink(destination: HomeView(), label: {
                        Text("Opslaan")
                            .foregroundColor(Color("White"))
                            .font(.title2)
                            .padding(.horizontal, 50)
                            .padding(.vertical, 15)
                            .background(Color("BlueL"))
                            .cornerRadius(10)
                            .padding(.vertical, 50)
                    })
                }
                    
                    
                }.font(.title2)
                .foregroundColor(Color("White"))
            }
        }
    }
}

struct TrainingLogView_Previews: PreviewProvider {
    static var previews: some View {
        //@State var rpe =
        TrainingLogView().environmentObject(UserData())
    }
}
