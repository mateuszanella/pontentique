//
//  LoginScreen.swift
//  Pontentique
//
//  Created by Mateus Zanella on 24/11/23.
//

import SwiftUI

struct LoginScreen: View {
    @State var textFieldLogin: String = ""
    @State var textFieldPassword: String = ""
    
    var body: some View {
        HStack {
            Spacer()
            
            VStack {
                Spacer()
                VStack {
                    Text("Seja bem vindo ao Pontentique™!")
                        .font(.headline)
                        .padding(.bottom, 10)
                    Text("Faça login ou registre-se")
                        .font(.subheadline)
                }
                .foregroundColor(ColorScheme.textColor)
                .padding(.bottom, 10)
                
                Spacer()
                
                TextField("Login", text: $textFieldLogin)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding(10)
                    .background(ColorScheme.fieldBgColor)
                    .foregroundColor(ColorScheme.textColor)
                    .cornerRadius(10)
                    .frame(width: 220)
                
                SecureField("Senha", text: $textFieldPassword)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding(10)
                    .background(ColorScheme.fieldBgColor)
                    .foregroundColor(ColorScheme.textColor)
                    .cornerRadius(10)
                    .frame(width: 220)
                    .padding(.top, 10)
                
                HStack {
                    Button(action: {
                        print("Login")
                    }) {
                        Text("Entrar")
                            .padding(12)
                            .frame(width: 100)
                            .background(ColorScheme.primaryColor)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.trailing, 10)
                    
                    Button(action: {
                        print("Register")
                    }) {
                        Text("Registrar")
                            .padding(12)
                            .frame(width: 100)
                            .background(ColorScheme.primaryColor)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .padding()
                
                Spacer()
            }
            .padding()
            .background(ColorScheme.appBackgroudColor)
            
            Spacer()
        }
        .padding()
        .background(ColorScheme.appBackgroudColor)
    }
}

#Preview {
    LoginScreen()
}