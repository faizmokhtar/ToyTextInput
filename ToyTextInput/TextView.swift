//
//  TextView.swift
//  ToyTextInput
//
//  Created by Faiz Mokhtar AD0502 on 15/11/2020.
//

import SwiftUI

struct TextView: View {
    @State var text: String = ""
    var body: some View {
        VStack(alignment: .leading) {
            TextEditor(text: $text)
                .foregroundColor(.black)
                .background(Color.clear)
                .font(.system(size: 20))
                .multilineTextAlignment(.leading)
                .autocapitalization(.words)
            Spacer()
        }
        .padding()
        .navigationBarTitle("Write", displayMode: .inline)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
