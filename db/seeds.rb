Photo.delete_all
Photo.create! id: 1, name: "Banana", price: 0.49, active: true
Photo.create! id: 2, name: "Apple", price: 0.29, active: true
Photo.create! id: 3, name: "Carton of Strawberries", price: 1.99, active: true

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"