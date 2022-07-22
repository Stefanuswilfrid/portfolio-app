//
//  LocView.swift
//  portfolio-app
//
//  Created by Stefanus Wilfrid Admaja on 21/07/22.
//

import SwiftUI

struct LocView: View {
    var body: some View {
        ScrollView{
            VStack{
                MapView()
                    .frame(width: 600, height: 400, alignment: .center)
            }
            .navigationTitle("Where I Live")
        }
    }
}

struct LocView_Previews: PreviewProvider {
    static var previews: some View {
        LocView()
    }
}
