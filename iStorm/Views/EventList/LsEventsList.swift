//
//  LSEventsList.swift
//  iStorm
//
//  Created by Matthieu Bellon on 30/04/2022.
//

import SwiftUI


struct LsEventsList: View {
    
    
    var body: some View{
        NavigationView{
            List(lsEventsArray){ event in
                NavigationLink{
                    LsEventDetail(event: event)
                } label: {
                    LsEventRow(LsEvent: event)
                }
                
            }.navigationTitle("Evènements")
        }
    }
}



struct LsEventsList_Previews: PreviewProvider {
    static var previews: some View {
        LsEventsList()
    }
}
