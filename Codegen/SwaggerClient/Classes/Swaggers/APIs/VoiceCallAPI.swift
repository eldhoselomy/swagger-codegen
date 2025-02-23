//
// CooeyAPIClient
// VoiceCallAPI.swift
//
// Generated by Eldhose Lomy
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class VoiceCallAPI {
    /**

     - parameter message: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func voiceCallXML(message: String? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        voiceCallXMLWithRequestBuilder(message: message).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /ehealth/v2/voice-calls
     - examples: [{contentType=application/xml, example=aeiou}]
     
     - parameter message: (query)  (optional)

     - returns: RequestBuilder<String> 
     */
    open class func voiceCallXMLWithRequestBuilder(message: String? = nil) -> RequestBuilder<String> {
        let path = "/ehealth/v2/voice-calls"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "message": message
        ])

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
