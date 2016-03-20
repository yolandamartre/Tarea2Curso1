//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


enum Velocidades : Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}


class Auto
{
    var velocidad : Velocidades
    
    init()
    {
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad () -> (actual : Int, velocidadEnCadena : String)
    {
        switch (velocidad)
        {
        case Velocidades.Apagado :
            velocidad = Velocidades.VelocidadBaja
        case Velocidades.VelocidadBaja :
            velocidad = Velocidades.VelocidadMedia
        case Velocidades.VelocidadMedia :
            velocidad = Velocidades.VelocidadAlta
        case Velocidades.VelocidadAlta :
            velocidad = Velocidades.VelocidadMedia
        }
        return (velocidad.rawValue, "\(velocidad)")
    }
}

var auto = Auto()
for var i in 1...20
{
    print ("\(i) \(auto.velocidad.rawValue), \(auto.velocidad) ")
    let result = auto.cambioDeVelocidad()
}
