//IMPORTANT: to be able to run the PracticeView file, go to HW2App.swift and change ContentView() to PracticeView()

//
//
////
////  ContentView.swift
////  HW2
////
////  Created by Abinaya on 2/14/23.
////


import SwiftUI

//1. go to Practice.swift to start!
//2. lets get started on our personal fun facts page. we'll be making use of the LazyVGrid to format each of our facts; its ok if you dont totally get how this works yet!


// 1. make a structure called Person, containing spots for your name, grade, the path to an image, age, and hometown.
struct Person {
    //TODO: fill here
    var name: String
    var grade: String
    var img: String
    var age: Int
    var hometown: String
}

// this struct contains the information necessary for every fact
struct Fact: Identifiable {
    var id: UUID
    var description: String
    var image: String
}

// 2. take a look at the video I sent to see how your information should be organized, and try to recreate the top section here!
// tip: PersonView POPULATES the data from the instance of a Person and formats it within a VStack.
struct PersonView: View{
    var person: Person
    var body: some View{
        HStack{
            VStack{
                // TODO: fill in this VStack with info about yourself
                // hint: can you use attributes of a person instance? like abinaya.name
                Text(person.name).font(.headline)
                Text(person.grade)
                Text(String(person.age))
                Text(person.hometown)
            }.padding(.leading)
            Image(person.img).resizable().scaledToFit().cornerRadius(50).padding(10)
            

        }.background(Color.cyan).cornerRadius(50).padding(.leading)
    }
}


//this contains the information for every fact. for example, you might want a description of the fact, an associated image to start off. nothing to do here!
struct FactView: View {
    var newFact: Fact
    var body: some View {
        VStack {
            Text("Fact").fontWeight(.heavy)
            Image(newFact.image).resizable().scaledToFit()
            Text(newFact.description).multilineTextAlignment(.center)

            Spacer(minLength: 20)
        }
    }
}

//this is the main view that coordinates what appears on our screen
struct ContentView: View {
    var body: some View {
        //3. newFacts is an array with every fact we want to display. fill in the description for every fact!
        let newFacts = [
            Fact(
                id: UUID(), description: "It is my first time taking Decal!", image: "study"),
            Fact(
                id: UUID(), description: "I like cats more than dogs", image: "cat"),
            Fact(
                id: UUID(), description: "I can sleep more than 17 hours", image: "sleep"),
            Fact(
                id: UUID(), description: "I like chocolates more than candies", image: "choco"),
            Fact(
                id: UUID(), description: "I'm senior but I will graduate next year so technically a junior", image: "grad"),
            Fact(
                id: UUID(), description: "I'm living near albany", image: "property")

            // TODO: create 5 more facts
        ]
        //4. right now, image is an empty string. in order to get a real image to show up, follow the instructions on our spec!
        
        
//      this specifies how many columns we want (3)
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
             //once you're done with everything else, try removing this line and see what happens
        ]

//5. TODO: instantiate an instance of the Person class, passing in the necessary parameters. replace the string below.
        let my_name = Person(name: "Jinnie Kim", grade: "Senior", img: "Eojin-Kim", age: 23, hometown: "Jinju (South Korea)")



//Making this a ScrollView instead of a View means we can scroll through the contents!
            ScrollView {
                PersonView(person: my_name)
                Spacer(minLength: 40)

                //This is the LazyVGrid that creates a view for every fact we described in newFacts
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(newFacts) { item in
//6.  TODO: call a view that takes item (a fact) as a parameter.
//hint: look at the project structure I mapped out in the spec. Which View seems most likely to be used in this ForEach loop?
                        FactView(newFact: item)
                    }
                }
                .padding(.horizontal)
            }

    }

}
//all done! try running the program; if you run into any bugs, take a stab at them and if they're unsolveable, come to lab!

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}
