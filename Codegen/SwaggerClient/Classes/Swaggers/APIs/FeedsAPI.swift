//
// CooeyAPIClient
// FeedsAPI.swift
//
// Generated by Eldhose Lomy
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class FeedsAPI {
    /**

     - parameter patientId: (path)  
     - parameter offset: (query)  (optional)
     - parameter limit: (query)  (optional, default to 10)
     - parameter contentName: (query)  (optional)
     - parameter contentType: (query)  (optional, default to SUGGESTION)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFeedForAPatient(patientId: String, offset: Int? = nil, limit: Int? = nil, contentName: String? = nil, contentType: String? = nil, completion: @escaping ((_ data: PagedResultFeedResponseItem?,_ error: Error?) -> Void)) {
        getFeedForAPatientWithRequestBuilder(patientId: patientId, offset: offset, limit: limit, contentName: contentName, contentType: contentType).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /ehealth/v2/feeds/new/patients/{patientId}
     - examples: [{contentType=application/json, example={
  "result" : [ {
    "note" : "note",
    "scheduledOn" : 1,
    "suggestedById" : "suggestedById",
    "suggestedByName" : "suggestedByName",
    "course" : {
      "archived" : false,
      "courseType" : "courseType",
      "name" : "name",
      "tenantId" : "tenantId",
      "id" : "id",
      "updatedOn" : 6,
      "type" : "BLOG",
      "createdOn" : 0,
      "url" : "url",
      "tags" : [ "tags", "tags" ]
    },
    "id" : "id",
    "userId" : "userId",
    "content" : {
      "archived" : false,
      "tenantId" : "tenantId",
      "name" : "name",
      "externalId" : "externalId",
      "active" : false,
      "updatedOn" : 6,
      "id" : "id",
      "applicationId" : "applicationId",
      "type" : "BLOG",
      "createdOn" : 0,
      "url" : "url",
      "tags" : [ "tags", "tags" ]
    }
  }, {
    "note" : "note",
    "scheduledOn" : 1,
    "suggestedById" : "suggestedById",
    "suggestedByName" : "suggestedByName",
    "course" : {
      "archived" : false,
      "courseType" : "courseType",
      "name" : "name",
      "tenantId" : "tenantId",
      "id" : "id",
      "updatedOn" : 6,
      "type" : "BLOG",
      "createdOn" : 0,
      "url" : "url",
      "tags" : [ "tags", "tags" ]
    },
    "id" : "id",
    "userId" : "userId",
    "content" : {
      "archived" : false,
      "tenantId" : "tenantId",
      "name" : "name",
      "externalId" : "externalId",
      "active" : false,
      "updatedOn" : 6,
      "id" : "id",
      "applicationId" : "applicationId",
      "type" : "BLOG",
      "createdOn" : 0,
      "url" : "url",
      "tags" : [ "tags", "tags" ]
    }
  } ],
  "offset" : 6,
  "totalPages" : 5,
  "totalCount" : 0
}}]
     
     - parameter patientId: (path)  
     - parameter offset: (query)  (optional)
     - parameter limit: (query)  (optional, default to 10)
     - parameter contentName: (query)  (optional)
     - parameter contentType: (query)  (optional, default to SUGGESTION)

     - returns: RequestBuilder<PagedResultFeedResponseItem> 
     */
    open class func getFeedForAPatientWithRequestBuilder(patientId: String, offset: Int? = nil, limit: Int? = nil, contentName: String? = nil, contentType: String? = nil) -> RequestBuilder<PagedResultFeedResponseItem> {
        var path = "/ehealth/v2/feeds/new/patients/{patientId}"
        let patientIdPreEscape = "\(patientId)"
        let patientIdPostEscape = patientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{patientId}", with: patientIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "offset": offset?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "contentName": contentName, 
            "contentType": contentType
        ])

        let requestBuilder: RequestBuilder<PagedResultFeedResponseItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter patientId: (path)  
     - parameter offset: (query)  (optional)
     - parameter limit: (query)  (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFeedForAPatient_0(patientId: String, offset: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: PagedResultFeedResponseItem?,_ error: Error?) -> Void)) {
        getFeedForAPatient_0WithRequestBuilder(patientId: patientId, offset: offset, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /ehealth/v2/feeds/patients/{patientId}
     - examples: [{contentType=application/json, example={
  "result" : [ {
    "note" : "note",
    "scheduledOn" : 1,
    "suggestedById" : "suggestedById",
    "suggestedByName" : "suggestedByName",
    "course" : {
      "archived" : false,
      "courseType" : "courseType",
      "name" : "name",
      "tenantId" : "tenantId",
      "id" : "id",
      "updatedOn" : 6,
      "type" : "BLOG",
      "createdOn" : 0,
      "url" : "url",
      "tags" : [ "tags", "tags" ]
    },
    "id" : "id",
    "userId" : "userId",
    "content" : {
      "archived" : false,
      "tenantId" : "tenantId",
      "name" : "name",
      "externalId" : "externalId",
      "active" : false,
      "updatedOn" : 6,
      "id" : "id",
      "applicationId" : "applicationId",
      "type" : "BLOG",
      "createdOn" : 0,
      "url" : "url",
      "tags" : [ "tags", "tags" ]
    }
  }, {
    "note" : "note",
    "scheduledOn" : 1,
    "suggestedById" : "suggestedById",
    "suggestedByName" : "suggestedByName",
    "course" : {
      "archived" : false,
      "courseType" : "courseType",
      "name" : "name",
      "tenantId" : "tenantId",
      "id" : "id",
      "updatedOn" : 6,
      "type" : "BLOG",
      "createdOn" : 0,
      "url" : "url",
      "tags" : [ "tags", "tags" ]
    },
    "id" : "id",
    "userId" : "userId",
    "content" : {
      "archived" : false,
      "tenantId" : "tenantId",
      "name" : "name",
      "externalId" : "externalId",
      "active" : false,
      "updatedOn" : 6,
      "id" : "id",
      "applicationId" : "applicationId",
      "type" : "BLOG",
      "createdOn" : 0,
      "url" : "url",
      "tags" : [ "tags", "tags" ]
    }
  } ],
  "offset" : 6,
  "totalPages" : 5,
  "totalCount" : 0
}}]
     
     - parameter patientId: (path)  
     - parameter offset: (query)  (optional)
     - parameter limit: (query)  (optional, default to 10)

     - returns: RequestBuilder<PagedResultFeedResponseItem> 
     */
    open class func getFeedForAPatient_0WithRequestBuilder(patientId: String, offset: Int? = nil, limit: Int? = nil) -> RequestBuilder<PagedResultFeedResponseItem> {
        var path = "/ehealth/v2/feeds/patients/{patientId}"
        let patientIdPreEscape = "\(patientId)"
        let patientIdPostEscape = patientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{patientId}", with: patientIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "offset": offset?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<PagedResultFeedResponseItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
