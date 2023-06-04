import SwiftUI

struct ContentView: View {
    
    @State private var Email = ""
    @State private var Senha = ""


    
    var body: some View {
        VStack {
            Text("ENTRAR")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding([.top, .bottom])
                .shadow(radius: 10, x: 20, y: 10)
     
            Image("Image")
                .resizable()
                .frame(width: 100, height: 90)
                .clipShape(Circle())
                .overlay(Circle().stroke(.white, lineWidth: 4))
                .shadow(radius: 10, x:20, y:10)
                .padding(.bottom)
            
        VStack(spacing: 20) {
            TextField("Email", text: self.$Email)
                                .padding()
                                .background(Color.newTextFieldColor)
                                .cornerRadius(20)
                                .shadow(radius: 10,x:20, y: 10)
                                
            SecureField("Senha", text: self.$Senha)
                                .padding()
                                .background(Color.newTextFieldColor)
                                .cornerRadius(20)
                                .shadow(radius: 10,x:20, y: 10)
                        }
                        .padding(.horizontal, 20)
                        
                        Spacer()
            
                        Button(action:{}) {
                            Text("Entrar")
                                .font(.headline)
                                .foregroundColor(.blue)
                                .padding()
                                .frame(width: 300)
                                .background(.green)
                                .cornerRadius(20)
                                .shadow(radius: 10, x:20, y:10)
                        }
                        .padding(.top,200)
                        
                        Spacer()
                        
                        HStack(spacing: 0){
                            Text("Nao tem cadastro?")
                                .foregroundColor(.black)
                            Button(action:{}){
                                Text("Cadastre-se")
                                    .foregroundColor(.black)
                            }
                        }
                        .padding(.bottom, 10)
        }.background(LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom))
    }
}
extension Color {
    static var newTextFieldColor: Color{
        return Color(red: 220/265, green: 230/255, blue:230/255, opacity: 1.0)
    }
}
struct contentView_Preview: PreviewProvider{
    static var previews: some View {
        ContentView ()
    }
}
