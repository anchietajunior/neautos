require "ostruct"

class Vehicle < ActiveRecord::Base
  self.abstract_class = true

  scope :favorites, -> { faker_data }

  def self.faker_data
    [
      # toyota sequoia
      {
        id: 1,
        photo: "https://s3.amazonaws.com/toyota.site.toyota-v5/tci-prod/toyota/media/build/seh/col/big/b25_byysg_fl1_0040_b.png?ck=10232024050458",
        year: 2020,
        price: 60000,
        brand: "Toyota",
        version: "Toyota Sequoia",
        fuel: "Gasoline",
        color: "White",
        transmission: "Automatic",
        mileage_in_km: 20000
      },
      # honda civic touring
      {
        id: 2,
        photo: "https://img.olx.com.br/images/67/673496448504396.jpg",
        year: 2020,
        price: 30000,
        brand: "Honda",
        version: "Honda Civic Touring",
        fuel: "Gasoline",
        color: "Gray",
        transmission: "Automatic",
        mileage_in_km: 10000
      },
      # ford mustang
      {
        id: 3,
        photo: "https://cdn.shopcar.com.br/stored/veiculos/1708115220_53062.jpg",
        year: 2020,
        price: 50000,
        brand: "Ford",
        version: "Ford Mustang",
        fuel: "Gasoline",
        color: "Red",
        transmission: "Automatic",
        mileage_in_km: 5000
      },
      # chevrolet camaro
      {
        id: 4,
        photo: "https://novo.bocamafrapremium.com.br/wp-content/uploads/2022/03/d7587996d4ef492b9be83296eb89639f_1647028741639-1.jpg",
        year: 2025,
        price: 70000,
        brand: "Chevrolet",
        version: "Chevrolet Camaro",
        fuel: "Gasoline",
        color: "Yellow",
        transmission: "Automatic",
        mileage_in_km: 1000
      },
      # volkswagen golf
      {
        id: 5,
        photo: "https://cdn.motor1.com/images/mgl/7ZQg47/s1/vw-golf-r-2024.webp",
        year: 2020,
        price: 40000,
        brand: "Volkswagen",
        version: "Volkswagen Golf",
        fuel: "Gasoline",
        color: "Blue",
        transmission: "Automatic",
        mileage_in_km: 15000
      }
    ].map { |vehicle| OpenStruct.new(vehicle) }
  end
end
