//
//  Home.swift
//  UI-326 (iOS)
//
//  Created by nyannyan0328 on 2021/10/12.
//

import SwiftUI

struct Home: View {
    
    @State var selectedTab : Trip = trips[0]
    
    

    var body: some View {
        ZStack{
            
            
            GeometryReader{proxy in
                
                
                let frame = proxy.frame(in: .global)
                
                
                Image(selectedTab.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: frame.width, height: frame.height)
                    .cornerRadius(0)
                
                
                
            }
            .ignoresSafeArea()
            
            
            
            VStack{
                
                Text("Lets Go With")
                    .fontWeight(.bold)
                
                
                Text("Procotrip")
                    .font(.largeTitle.weight(.heavy))
                    .padding(.bottom,30)
                
                
                
                
                VStack{
                    
                    GeometryReader{proxy in
                        
                        
                        let frame = proxy.frame(in: .global)
                        
                        
                        TabView(selection: $selectedTab) {
                            
                            
                            ForEach(trips){trip in
                                
                                
                                Image(trip.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: frame.width - 10, height: frame.height)
                                    .cornerRadius(5)
                                    .tag(trip)//not id
                                
                                
                                
                                
                            }
                            
                            
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        
                        
                        
                    }
                    .frame(height: UIScreen.main.bounds.height / 2.2)
                    
                    
                    Text(selectedTab.title)
                        .font(.title.bold())
                        .foregroundColor(.black)
                        .padding(.top,20)
                        .padding(.bottom,18)
                    
                    
                    PageContorller(maxPages: trips.count, currentPage: getIndex())
                    
                    
                    
                    
                }
                .padding(.top)
                .padding(.horizontal)
                .padding(.bottom,5)
                .background(Color.white.clipShape(CustomShape()))
                .padding(.horizontal)
                
                
                Button {
                    
                } label: {
                    
                    Text("Get Stated")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical,18)
                        .background(Color("blue"))
                        .cornerRadius(10)
                    
                }
                .padding(.top,30)
                .padding(.horizontal)

                    
            }
            .foregroundColor(.white)
            .padding()
            
        }
    }
    
    func getIndex()->Int{
        
        let index = trips.firstIndex { current in
            
            return selectedTab.id == current.id
            
        } ?? 0
        
        return index
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


