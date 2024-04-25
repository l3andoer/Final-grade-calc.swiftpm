import SwiftUI

struct ContentView: View {
    @State var Q1: Double?
    @State var Q2: Double?
    @State var desiredgrade: Double?
    @State var output: Double = 0.0
    @State var rrec: any Shape = RoundedRectangle(cornerRadius: 13.0)
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.pink, Color.white]), startPoint: .top, endPoint: .bottomTrailing)
                
            VStack{
        
                    RoundedRectangle(cornerRadius: 13.0)
                    .frame(maxWidth: 320 ,maxHeight: 45)
                    .overlay{
                        Text("Final grade calculator")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                
                HStack{
                    Text("Q1 grade")
                        .padding(.leading, 10)
                    TextField("Q1 grade", value: $Q1, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal, 45)
                }
                
                HStack{
                    Text("Q2 grade")
                        .padding(.leading, 10)
                    TextField("Q2 grade", value: $Q2, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal, 45)
                }
                HStack{
                    Text("desired grade")
                        .padding(.leading, 10)
                    TextField("desired grade", value: $desiredgrade, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal, 10)
                }
                Button {
                    let A = (Q1 ?? 0) * 0.4 + (Q2 ?? 0) * 0.4
                    let B = (desiredgrade ?? 0) - A 
                    output = B
                    let C = output / 0.2 
                    output = C
                } 
            label: {
                    Text("calulate")
                        .hoverEffect(.lift)
                        .padding()
                        .background {
                            Capsule()
                                .stroke(gradient, lineWidth: 4)
                                .saturation(1.8)
                        }
                }
                .foregroundColor(.white)
                    Text("you will need a \(output) to get your desired grade")
                        .frame(width: 380,height: 100)
                        .bold()
                        .font(.title2)
            }
            .padding()
            .foregroundColor(.white)
        }
            }
    let gradient = LinearGradient(colors: [Color.white , Color.cyan, Color.mint],
                                  startPoint: .topLeading,
                                  endPoint: .bottomTrailing)
}
