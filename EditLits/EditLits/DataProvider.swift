//
//  DataProvider.swift
//  SwiftProgrammers
//
//  Created by iOSKurs on 22.09.18.
//  Copyright © 2018 iOSKurs. All rights reserved.
//

import Foundation

class DataProvider{
    
    let memberNames: [String];
    let memberPersons: [PersonData];
    static let sharedInstance = DataProvider();

    private init(){
            self.memberNames = ["Peter","Michaela","Stefan", "Jason", "Patricia", "Thomas",
            "Daniela", "Beat", "Sandra"];

            self.memberPersons = [PersonData(firstName: "Juan", lastName: "Cabrillo", plz: 8000),
                                  PersonData(firstName: "Al", lastName: "Giordino", plz: 2345),
                                  PersonData(firstName: "Quentin", lastName: "Tarantino", plz: 3456),
                                  PersonData(firstName: "John", lastName: "Stone", plz: 4567),
                                  PersonData(firstName: "Otto", lastName: "Lotto", plz: 5678),
                                  PersonData(firstName: "Dave", lastName: "Grohl", plz: 6789),
                                  PersonData(firstName: "Johanna", lastName: "Obama", plz: 7890),
                                  PersonData(firstName: "Stefan", lastName: "Test", plz: 8901),
                                  PersonData(firstName: "Petra", lastName: "Müll", plz: 9012),
                                  PersonData(firstName: "Peter", lastName: "Müller", plz: 1234)]

    }
}
