//
// CooeyAPIClient
// ExcelAPI.swift
//
// Generated by Eldhose Lomy
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ExcelAPI {
    /**

     - parameter xAuthToken: (header)  (optional)
     - parameter filename: (query)  (optional)
     - parameter fileType: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func callGet(xAuthToken: String? = nil, filename: String? = nil, fileType: Int? = nil, completion: @escaping ((_ data: ExcelStatus?,_ error: Error?) -> Void)) {
        callGetWithRequestBuilder(xAuthToken: xAuthToken, filename: filename, fileType: fileType).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /ehealth/v2/excel/upload/templates
     - examples: [{contentType=application/json, example={
  "fileName" : "fileName",
  "status" : "status"
}}]
     
     - parameter xAuthToken: (header)  (optional)
     - parameter filename: (query)  (optional)
     - parameter fileType: (query)  (optional)

     - returns: RequestBuilder<ExcelStatus> 
     */
    open class func callGetWithRequestBuilder(xAuthToken: String? = nil, filename: String? = nil, fileType: Int? = nil) -> RequestBuilder<ExcelStatus> {
        let path = "/ehealth/v2/excel/upload/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "filename": filename, 
            "fileType": fileType?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ExcelStatus>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**

     - parameter fileId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getResult(fileId: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        getResultWithRequestBuilder(fileId: fileId).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - GET /ehealth/v2/excel/getStatus/{fileId}
     
     - parameter fileId: (path)  

     - returns: RequestBuilder<Void> 
     */
    open class func getResultWithRequestBuilder(fileId: String) -> RequestBuilder<Void> {
        var path = "/ehealth/v2/excel/getStatus/{fileId}"
        let fileIdPreEscape = "\(fileId)"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getResult1(completion: @escaping ((_ data: ExcelConfig?,_ error: Error?) -> Void)) {
        getResult1WithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /ehealth/v2/excel/getStatus1
     - examples: [{contentType=application/json, example={
  "pakage" : "pakage",
  "propertyMapperList" : [ {
    "javaProperty" : "javaProperty",
    "excelColumn" : "excelColumn",
    "dataType" : "dataType",
    "validator" : "validator",
    "model" : "model",
    "id" : 6,
    "collection" : "collection",
    "type" : "type"
  }, {
    "javaProperty" : "javaProperty",
    "excelColumn" : "excelColumn",
    "dataType" : "dataType",
    "validator" : "validator",
    "model" : "model",
    "id" : 6,
    "collection" : "collection",
    "type" : "type"
  } ],
  "className" : "className",
  "id" : 0,
  "collectionName" : "collectionName"
}}]

     - returns: RequestBuilder<ExcelConfig> 
     */
    open class func getResult1WithRequestBuilder() -> RequestBuilder<ExcelConfig> {
        let path = "/ehealth/v2/excel/getStatus1"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ExcelConfig>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter file: (form)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func upload(file: URL? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        uploadWithRequestBuilder(file: file).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - POST /ehealth/v2/excel/upload/template
     
     - parameter file: (form)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func uploadWithRequestBuilder(file: URL? = nil) -> RequestBuilder<Void> {
        let path = "/ehealth/v2/excel/upload/template"
        let URLString = SwaggerClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
