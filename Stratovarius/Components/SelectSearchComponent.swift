//
//  SelectSearchComponent.swift
//  Stratovarius
//
//  Created by Marcelo de Araujo on 09/11/2022.
//

import SwiftUI

struct UISelectSearch: View {
    var label: String!
    var values: [SelectItem]
    var plain = false
    @Binding var state: SelectItem?
    @State private var isOpen = false
    @State private var query = ""
    
    var searchResults: [SelectItem] {
        if (query.isEmpty) {
            return values
        }
        
        return values.filter { $0.label.contains(query) }
    }
    
    var body: some View {
        HStack {
            Text(label)
                .foregroundColor(Color(UIColor.secondaryLabel))
            
            Spacer()
            
            Button(state?.label ?? String(localized: "breed_mixed")) {
                isOpen = true
            }
        }
        .sheet(isPresented: $isOpen) {
            NavigationView {
                VStack {
                    List(searchResults) { value in
                        Button {
                            state = value
                            isOpen = false
                        } label: {
                            HStack {
                                Text(value.label)

                                Spacer()

                                Text (value.id)
                                    .font(.callout)
                                    .lineLimit(1)
                                    .foregroundColor(Color(UIColor.secondaryLabel))
                            }
                            .foregroundColor(Color(UIColor.label))
                        }
                    }
                }
                .searchable(text: $query)
                .navigationTitle(label)
            }
        }
        .lineLimit(1)
        .frame(maxWidth: .infinity)
        .padding(plain ? 0 : 16)
        .foregroundColor(Color(.label))
        .background(plain ? nil : Color(.secondarySystemBackground))
        .cornerRadius(8)
    }
}

struct UISelectSearch_Previews: PreviewProvider {
    @State static var selectedValue: SelectItem? = SelectItem(label: BREED_SCHNAUZER.localizedName, id: String(BREED_SCHNAUZER.id))
    
    static var values: [SelectItem] = [
        SelectItem(label: "English Pointer", id: "1"),
        SelectItem(label: "English Setter", id: "2"),
        SelectItem(label: "Giant Schnauzer", id: "181"),
        SelectItem(label: "Schnauzer", id: "182"),
        SelectItem(label: "Miniature Schnauzer", id: "183")
    ]
    
    static var previews: some View {
        VStack {
            UISelectSearch(
                label: "Select breed",
                values: values,
                state: $selectedValue
            )
            .padding(.bottom)
            
            UISelectSearch(
                label: "Select breed",
                values: values,
                plain: true,
                state: $selectedValue
            )
        }
        .padding(.horizontal)
        
        VStack {
            UISelectSearch(
                label: "Select breed",
                values: values,
                state: $selectedValue
            )
            .padding(.bottom)
            
            UISelectSearch(
                label: "Select breed",
                values: values,
                plain: true,
                state: $selectedValue
            )
        }
        .padding(.horizontal)
        .preferredColorScheme(.dark)
    }
}
