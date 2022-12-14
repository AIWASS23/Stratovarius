//
//  SignUpView.swift
//  Stratovarius
//
//  Created by Marcelo de Araujo on 07/11/2022.
//

import SwiftUI

struct SignUpView: View {
    @Binding var selectedView: GuestViews?
    @StateObject private var vm = ViewModel()
    
    var success: some View {
        Group {
            Text(vm.sucessMessage)
                .font(.largeTitle)
                .foregroundColor(Color.green)
                .multilineTextAlignment(.center)
            Spacer()
            
            UIButton(text: String(localized: "sign_in"), fullWidth: true) {
                withAnimation {
                    selectedView = .signIn
                }
            }
        }
    }
    
    var form: some View {
        Group {
            UIInput(label: String(localized: "email"), state: $vm.email, keyboardType: .emailAddress)
                .padding(.vertical)
            
            UIInput(label: String(localized: "first_name"), state: $vm.firstName)
                .padding(.vertical)
            
            UIInput(label: String(localized: "last_name"), state: $vm.lastName)
                .padding(.vertical)
            
            UIInput(label: String(localized: "password"), state: $vm.password, type: .Password)
                .padding(.vertical)
            
            UIInput(label: String(localized: "password_confirm"), state: $vm.passwordConfirm, type: .Password)
                .padding(.vertical)

            UISelect(label: String(localized: "weight_unit"), values: WeightUnits.selectItemList, state: $vm.weightUnit)
                .padding(.vertical)
            
            UICheckbox(label: String(localized: "gdpr_consent"), state: $vm.gdprConsent)
        }
    }
    
    var body: some View {
        VStack {
            UIJumbotron(
                header: String(localized: "sign_up_header"),
                subHeader: String(localized: "sign_up_sub_header")
            )
            
            Spacer()

            VStack {
                if (vm.isSuccess) {
                    success
                } else {
                    ScrollView {
                        form
                            .padding(.bottom)
                    }
                    
                    Spacer()
                    
                    if (vm.isLoading) {
                        HStack {
                            ProgressView()
                                .padding(.trailing)
                            
                            Text(String(localized: "please_wait"))
                                .foregroundColor(Color(UIColor.secondaryLabel))
                        }
                        .padding(.bottom)
                    }
                    
                    if (vm.isInvalid) {
                        Text(vm.errorMessage)
                            .fontWeight(.semibold)
                            .foregroundColor(.red)
                            .padding(.bottom)
                    }
                    
                    UIButton(text: String(localized: "sign_up"), fullWidth: true) {
                        vm.signUp()
                    }
                    .disabled(!vm.isActive)
                }
            }
            .padding()
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    @State static var selectedView: GuestViews? = GuestViews.signUp
    
    static var previews: some View {
        SignUpView(selectedView: $selectedView)
        SignUpView(selectedView: $selectedView)
            .preferredColorScheme(.dark)
    }
}
