# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
products = [
  Product.create(name: "Garlic Bread", description: "garlic, bread, butter", price: 30), 
  Product.create(name: "Margherita", description: "cheese, tomato sauce, basil", price: 70),
  Product.create(name: "Vesuvio", description: "cheese, tomato sauce, ham", price: 70),
  Product.create(name: "Calzone", description: "cheese, tomato sauce, ham", price: 80),
  Product.create(name: "Ice-cream", description: "vanilla", price: 40),
  Product.create(name: "Ice-cream", description: "strawberry", price: 40)
]
categories = [
  category.create(title: "Starters")
  category.create(title: "Main Courses")
  category.create(title: "Desserts")
]