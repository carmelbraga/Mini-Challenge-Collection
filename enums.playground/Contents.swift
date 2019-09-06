import UIKit

enum StatusCode: String{
    case success
    case unauthorized
    case forbidden
    case notFound
}

func prettyPrint(someStatus: StatusCode) -> String{
   
    var status: String
    
    switch someStatus {
        
    case .success:
        status = "200: Success"
    case .unauthorized:
        status = "401: Unauthorized"
    case .forbidden:
        status = "403: Forbidden"
    case .notFound:
        status = "404: Not Found"
 
    }
    
    return status
}

prettyPrint(someStatus: .success)
prettyPrint(someStatus: .unauthorized)
prettyPrint(someStatus: .forbidden)
prettyPrint(someStatus: .notFound)
