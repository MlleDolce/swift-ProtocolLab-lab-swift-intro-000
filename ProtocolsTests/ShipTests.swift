//
//  ShipTests.swift
//  Protocols
//
//  Created by Jim Campagno on 8/8/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//


import Quick
import Nimble
@testable import Protocols

class ShipSpec: QuickSpec {
    override func spec() {
        
        describe("Direction enum") {
            it("Should have four cases, north, south, east and west") {
                
                let north = Direction.north
                let south = Direction.south
                let east = Direction.east
                let west = Direction.west
                
                expect(north).to(equal(Direction.north))
                expect(south).to(equal(Direction.south))
                expect(east).to(equal(Direction.east))
                expect(west).to(equal(Direction.west))
                
            }
        }
        
        describe("Default implementation of steerInDirection(_:)") {
            it("Should change the direction property to equal the direction argument passed into the function. This should be implemented within the extension on the SteerAbility protocol.") {
                
                // Creating a dummy class called LoveBoat which conforms to the SteerAbility protocol
                class LoveBoat: SteerAbility {
                    var direction: Direction = .north
                }
                
                var myLoveBoat = LoveBoat()
                
                myLoveBoat.steerInDirection(direction: .west)
                
                expect(myLoveBoat.direction).to(equal(Direction.west))
                
            }
        }
        
        describe("SailBoat class") {
            it("Should have a direction property and be able to call on steerInDirection(_:)") {
                
                var mySailBoat = SailBoat()
                
                mySailBoat.steerInDirection(direction: .east)
                
                expect(mySailBoat.direction).to(equal(Direction.east))
                
            }
        }
        
        describe("RowBoat class") {
            it("Should have a direction property and be able to call on steerInDirection(_:)") {
                
                var myRowBoat = RowBoat()
                
                myRowBoat.steerInDirection(direction: .south)
                
                expect(myRowBoat.direction).to(equal(Direction.south))
                
            }
        }
        
        describe("SteamBoat class") {
            it("Should have a direction property and be able to call on steerInDirection(_:)") {
                
                var mySteamBoat = SteamBoat()
                
                mySteamBoat.steerInDirection(direction: .west)
                
                expect(mySteamBoat.direction).to(equal(Direction.west))
                
            }
        }
    }
}
