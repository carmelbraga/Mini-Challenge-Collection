import UIKit

struct MathOperation{
    
    var units: String
    
    var operation: (Double, Double) -> Double
    
    
    init?(units: String, operation: @escaping (Double, Double) -> Double ){
        if (units.contains("")){
            
            return nil
            
        }
        
        self.units = units
        self.operation = operation
    }
}
