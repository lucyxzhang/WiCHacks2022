//
//  HowToView.swift
//  RIT Laundry
//
//  Created by Lucy Zhang on 2/26/22.
//

import SwiftUI

struct HowToView: View {
    var body: some View {
        NavigationView {
            ScrollView{
            VStack(spacing: 10) {
                Group{
                RoundedRectangle(cornerRadius : 1, style: .continuous)
                    .fill(Color.orange)
                    .frame(height: 2)
                
                HStack {
                    Text("Cleaners & Products")
                        .frame(maxWidth: .infinity, alignment: .center)
                    Spacer()
                }
                .padding(.all)
                
                Divider()
                    .padding(.bottom)
                
                Collapsible(
                    label: { Text("Detergent") },
                    content: {
                        VStack{
                            HStack {
                                Text("          Liquid \n         -Pour into the detergent drawer \n         -Fill to line for your size load")
                                Spacer()
                            }
                            Divider()
                            Text("Powder \n-Use scoop to measure correct amount \n-Pour into the detergent drawer")
                            Divider()
                            Text("Pods and Other Larger Solids\n-Put in directly in with clothes in main body of machine")
                                .padding(.horizontal)
                            NavigationLink {
                                VideoPage(videoPath: "path/to/video")
                            } label: {
                                Text("Watch How")
                            }

                        }
                    }
                )
                .frame(maxWidth: .infinity)
                
                Divider()
                Collapsible(
                    label: { Text("Bleach") },
                    content: {
                        HStack {
                            Text("-For white clothes ONLY \n-Use warm cycle")
                                .padding(.horizontal, 50.0)
                            Spacer()
                        }
                            
                        .frame(maxWidth: .infinity)
                        
                    }
                )
                .frame(maxWidth: .infinity)
                
                Divider()
                
                Collapsible(
                    label: { Text("Softeners") },
                    content: {
                        HStack {
                            Text("-Varies between brands, check package instructions \n-DON'T use with dry-fit or moisture wicking clothes")
                            Spacer()
                        }
                            
                        .frame(maxWidth: .infinity)
                        .padding()
                    }
                )
                .frame(maxWidth: .infinity)
                }
                Group {
                RoundedRectangle(cornerRadius : 1, style: .continuous)
                    .fill(Color.orange)
                    .frame(height: 2)
                
                HStack {
                    Text("Washer & Dryer Settings")
                        .frame(maxWidth: .infinity, alignment: .center)
                    Spacer()
                }
                .padding(.all)
                
                Divider()
                    .padding(.bottom)
                
                Collapsible(
                    label: { Text("Washer Settings") },
                    content: {
                        VStack{
                        HStack {
                            Text("Normal Hot \n-Best for removing germs and heavily soiled clothes \n-Can shrink, fade, or damage some fabrics (read clothing labels) \n-Should be used for strong fibers like cotton or 100% polyester ")
                                .multilineTextAlignment(.leading)
                                .padding(.leading, 40.0)
                            Spacer()
                        }
                            Divider()
                            Text("Normal Warm \n-For durable fabrics \n-Removes Stain an Dirt \n-Recommended for sports wear & towels")
                            Divider()
                            Text("Perm Press Warm \n-For everyday clothes that wrinkle easily \n-Recommended for jeans & polyester")
                                .padding(.horizontal)
                            Divider()
                            Text("Delicates Cold \n-For clothes that may shrink or bleed colors \n-Recommended for silk & lace")
                                .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                        .padding()
                        }
                    })
                .frame(maxWidth: .infinity)
                
                Divider()
                Collapsible(
                    label: { Text("Dryer Settings") },
                    content: {
                        VStack{
                        HStack {
                            Text("High Temp \n-Recommended for towels & jeans")
                                .multilineTextAlignment(.leading)
                                .padding(.leading, 50.0)
                            Spacer()
                        }
                            Divider()
                            Text("Medium Temp \n-Recommended for everyday clothes")
                            Divider()
                            Text("Low Temp \n-Meant for more delicate clothing \nsuch as spandex & clothing with lots of buttons")
                                .padding(.horizontal)
                            Divider()
                            Text("Delicates \n-For cotton & silk clothing")
                                .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                        .padding()
                        }
                    })
                }
                Group {
                RoundedRectangle(cornerRadius : 1, style: .continuous)
                    .fill(Color.orange)
                    .frame(height: 2)
                
                HStack {
                    Text("Machine Maintenance")
                        .frame(maxWidth: .infinity, alignment: .center)
                    Spacer()
                }
                .padding(.all)
                
                Divider()
                    .padding(.bottom)
                
                Collapsible(
                    label: { Text("Cleaning Lint Trap") },
                    content: {
                        VStack{
                        HStack {
                            Text("-Check lint before & after cycle \n-Use hand or paper towel to scrape out & throw away lint \n-Clean even if it's not full")
                                .multilineTextAlignment(.leading)
                                .padding(.leading, 50.0)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        }
                    })
                .frame(maxWidth: .infinity)
                
                Divider()
                Collapsible(
                    label: { Text("Checking for Clothes") },
                    content: {
                        HStack {
                            Text("CAUTION: DRYER INTERIOR MAY BE HOT! \n-Run your hand along the inside of machine & manually rotate the dryer drum for any & all clothing")
                                .padding(.horizontal, 50.0)
                            Spacer()
                        }
                            
                        .frame(maxWidth: .infinity)
                        
                    }
                )
                .frame(maxWidth: .infinity)
                
            }
                Group {
                RoundedRectangle(cornerRadius : 1, style: .continuous)
                    .fill(Color.orange)
                    .frame(height: 2)
                
                HStack {
                    Text("Machine Maintenance")
                        .frame(maxWidth: .infinity, alignment: .center)
                    Spacer()
                }
                .padding(.all)
                
                Divider()
                    .padding(.bottom)
                
                Collapsible(
                    label: { Text("Delicates") },
                    content: {
                        VStack{
                        HStack {
                            Text("-Should be washed on delicate setting or placed in delicate bags \nDelicates include \n-mesh \n-lace \nclothing with small holes")
                                .multilineTextAlignment(.leading)
                                .padding(.leading, 50.0)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        }
                    })
                .frame(maxWidth: .infinity)
                
                    Divider()
                    
                }
            }
        }
            
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            .navigationTitle("How to Do Laundry")
        }
        
    }
}


    struct HowToView_Previews: PreviewProvider {
        static var previews: some View {
            HowToView()
        }
    }
