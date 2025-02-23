//
// CooeyAPIClient
// MealPlan.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct MealPlan: Codable {

    public var breakfast: Meal?
    public var lunch: Meal?
    public var dinner: Meal?
    public var id: String?
    public var calories: String?
    public var carbs: String?
    public var fat: String?
    public var name: String?
    public var proteins: String?
    public var quantity: Int?
    public var servingSize: String?
    public var type: String?

    public init() {
    }

    public init(breakfast: Meal?, lunch: Meal?, dinner: Meal?, id: String?, calories: String?, carbs: String?, fat: String?, name: String?, proteins: String?, quantity: Int?, servingSize: String?, type: String?) {
        self.breakfast = breakfast
        self.lunch = lunch
        self.dinner = dinner
        self.id = id
        self.calories = calories
        self.carbs = carbs
        self.fat = fat
        self.name = name
        self.proteins = proteins
        self.quantity = quantity
        self.servingSize = servingSize
        self.type = type
    }


}

