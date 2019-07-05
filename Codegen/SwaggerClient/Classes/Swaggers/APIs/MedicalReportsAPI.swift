//
// CooeyAPIClient
// MedicalReportsAPI.swift
//
// Generated by Eldhose Lomy
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class MedicalReportsAPI {
    /**

     - parameter xAuthToken: (header)  (optional)
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func create(xAuthToken: String? = nil, body: MedicalReport? = nil, completion: @escaping ((_ data: MedicalReport?,_ error: Error?) -> Void)) {
        createWithRequestBuilder(xAuthToken: xAuthToken, body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /ehealth/v2/medical-reports
     - examples: [{contentType=application/json, example={
  "archived" : false,
  "tenantId" : "tenantId",
  "name" : "name",
  "externalId" : "externalId",
  "active" : false,
  "updatedOn" : 6,
  "id" : "id",
  "applicationId" : "applicationId",
  "createdOn" : 0,
  "userId" : "userId",
  "url" : "url"
}}]
     
     - parameter xAuthToken: (header)  (optional)
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<MedicalReport> 
     */
    open class func createWithRequestBuilder(xAuthToken: String? = nil, body: MedicalReport? = nil) -> RequestBuilder<MedicalReport> {
        let path = "/ehealth/v2/medical-reports"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<MedicalReport>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**

     - parameter medicalReportId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteReport(medicalReportId: String, xAuthToken: String? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteReportWithRequestBuilder(medicalReportId: medicalReportId, xAuthToken: xAuthToken).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - DELETE /ehealth/v2/medical-reports/{medicalReportId}
     
     - parameter medicalReportId: (path)  
     - parameter xAuthToken: (header)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteReportWithRequestBuilder(medicalReportId: String, xAuthToken: String? = nil) -> RequestBuilder<Void> {
        var path = "/ehealth/v2/medical-reports/{medicalReportId}"
        let medicalReportIdPreEscape = "\(medicalReportId)"
        let medicalReportIdPostEscape = medicalReportIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{medicalReportId}", with: medicalReportIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**

     - parameter medicalReportId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMedicalReport(medicalReportId: String, xAuthToken: String? = nil, completion: @escaping ((_ data: MedicalReport?,_ error: Error?) -> Void)) {
        getMedicalReportWithRequestBuilder(medicalReportId: medicalReportId, xAuthToken: xAuthToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /ehealth/v2/medical-reports/{medicalReportId}
     - examples: [{contentType=application/json, example={
  "archived" : false,
  "tenantId" : "tenantId",
  "name" : "name",
  "externalId" : "externalId",
  "active" : false,
  "updatedOn" : 6,
  "id" : "id",
  "applicationId" : "applicationId",
  "createdOn" : 0,
  "userId" : "userId",
  "url" : "url"
}}]
     
     - parameter medicalReportId: (path)  
     - parameter xAuthToken: (header)  (optional)

     - returns: RequestBuilder<MedicalReport> 
     */
    open class func getMedicalReportWithRequestBuilder(medicalReportId: String, xAuthToken: String? = nil) -> RequestBuilder<MedicalReport> {
        var path = "/ehealth/v2/medical-reports/{medicalReportId}"
        let medicalReportIdPreEscape = "\(medicalReportId)"
        let medicalReportIdPostEscape = medicalReportIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{medicalReportId}", with: medicalReportIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth_token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<MedicalReport>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**

     - parameter userId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMedicalReportsForUser(userId: String, xAuthToken: String? = nil, completion: @escaping ((_ data: [MedicalReport]?,_ error: Error?) -> Void)) {
        getMedicalReportsForUserWithRequestBuilder(userId: userId, xAuthToken: xAuthToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /ehealth/v2/medical-reports/users/{userId}
     - examples: [{contentType=application/json, example=[ {
  "archived" : false,
  "tenantId" : "tenantId",
  "name" : "name",
  "externalId" : "externalId",
  "active" : false,
  "updatedOn" : 6,
  "id" : "id",
  "applicationId" : "applicationId",
  "createdOn" : 0,
  "userId" : "userId",
  "url" : "url"
}, {
  "archived" : false,
  "tenantId" : "tenantId",
  "name" : "name",
  "externalId" : "externalId",
  "active" : false,
  "updatedOn" : 6,
  "id" : "id",
  "applicationId" : "applicationId",
  "createdOn" : 0,
  "userId" : "userId",
  "url" : "url"
} ]}]
     
     - parameter userId: (path)  
     - parameter xAuthToken: (header)  (optional)

     - returns: RequestBuilder<[MedicalReport]> 
     */
    open class func getMedicalReportsForUserWithRequestBuilder(userId: String, xAuthToken: String? = nil) -> RequestBuilder<[MedicalReport]> {
        var path = "/ehealth/v2/medical-reports/users/{userId}"
        let userIdPreEscape = "\(userId)"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[MedicalReport]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

}
