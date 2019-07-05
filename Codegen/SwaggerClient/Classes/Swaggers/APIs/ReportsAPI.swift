//
// CooeyAPIClient
// ReportsAPI.swift
//
// Generated by Eldhose Lomy
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ReportsAPI {
    /**

     - parameter tenantId: (path)  
     - parameter userId: (path)  
     - parameter prescriptionId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadUserPrescription(tenantId: String, userId: String, prescriptionId: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        downloadUserPrescriptionWithRequestBuilder(tenantId: tenantId, userId: userId, prescriptionId: prescriptionId).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - GET /ehealth/v2/reports/download/prescription/{prescriptionId}/user/{userId}/{tenantId}
     
     - parameter tenantId: (path)  
     - parameter userId: (path)  
     - parameter prescriptionId: (path)  

     - returns: RequestBuilder<Void> 
     */
    open class func downloadUserPrescriptionWithRequestBuilder(tenantId: String, userId: String, prescriptionId: String) -> RequestBuilder<Void> {
        var path = "/ehealth/v2/reports/download/prescription/{prescriptionId}/user/{userId}/{tenantId}"
        let tenantIdPreEscape = "\(tenantId)"
        let tenantIdPostEscape = tenantIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{tenantId}", with: tenantIdPostEscape, options: .literal, range: nil)
        let userIdPreEscape = "\(userId)"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let prescriptionIdPreEscape = "\(prescriptionId)"
        let prescriptionIdPostEscape = prescriptionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{prescriptionId}", with: prescriptionIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter patientId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func generatePDFForSelectedPrescription(patientId: String, xAuthToken: String? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        generatePDFForSelectedPrescriptionWithRequestBuilder(patientId: patientId, xAuthToken: xAuthToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /ehealth/v2/reports/printable/prescriptions/patients/{patientId}
     - examples: [{contentType=application/json, example=""}]
     
     - parameter patientId: (path)  
     - parameter xAuthToken: (header)  (optional)

     - returns: RequestBuilder<String> 
     */
    open class func generatePDFForSelectedPrescriptionWithRequestBuilder(patientId: String, xAuthToken: String? = nil) -> RequestBuilder<String> {
        var path = "/ehealth/v2/reports/printable/prescriptions/patients/{patientId}"
        let patientIdPreEscape = "\(patientId)"
        let patientIdPostEscape = patientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{patientId}", with: patientIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**

     - parameter patientId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func generatePDFForVitalsMeasuredToday(patientId: String, xAuthToken: String? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        generatePDFForVitalsMeasuredTodayWithRequestBuilder(patientId: patientId, xAuthToken: xAuthToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /ehealth/v2/reports/printable/vitals/patients/{patientId}
     - examples: [{contentType=application/json, example=""}]
     
     - parameter patientId: (path)  
     - parameter xAuthToken: (header)  (optional)

     - returns: RequestBuilder<String> 
     */
    open class func generatePDFForVitalsMeasuredTodayWithRequestBuilder(patientId: String, xAuthToken: String? = nil) -> RequestBuilder<String> {
        var path = "/ehealth/v2/reports/printable/vitals/patients/{patientId}"
        let patientIdPreEscape = "\(patientId)"
        let patientIdPostEscape = patientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{patientId}", with: patientIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**

     - parameter patientId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter startTime: (query)  (optional, default to 0)
     - parameter endTime: (query)  (optional, default to 0)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func generatePatientSummaryReport(patientId: String, xAuthToken: String? = nil, startTime: Int64? = nil, endTime: Int64? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        generatePatientSummaryReportWithRequestBuilder(patientId: patientId, xAuthToken: xAuthToken, startTime: startTime, endTime: endTime).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /ehealth/v2/reports/summary/patients/{patientId}
     - examples: [{contentType=application/json, example=""}]
     
     - parameter patientId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter startTime: (query)  (optional, default to 0)
     - parameter endTime: (query)  (optional, default to 0)

     - returns: RequestBuilder<String> 
     */
    open class func generatePatientSummaryReportWithRequestBuilder(patientId: String, xAuthToken: String? = nil, startTime: Int64? = nil, endTime: Int64? = nil) -> RequestBuilder<String> {
        var path = "/ehealth/v2/reports/summary/patients/{patientId}"
        let patientIdPreEscape = "\(patientId)"
        let patientIdPostEscape = patientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{patientId}", with: patientIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "startTime": startTime?.encodeToJSON(), 
            "endTime": endTime?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**

     - parameter xAuthToken: (header)  (optional)
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func generateRPMReport(xAuthToken: String? = nil, body: RPMRequest? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        generateRPMReportWithRequestBuilder(xAuthToken: xAuthToken, body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /ehealth/v2/reports/rpm/patients
     - examples: [{contentType=application/json, example=""}]
     
     - parameter xAuthToken: (header)  (optional)
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<String> 
     */
    open class func generateRPMReportWithRequestBuilder(xAuthToken: String? = nil, body: RPMRequest? = nil) -> RequestBuilder<String> {
        let path = "/ehealth/v2/reports/rpm/patients"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**

     - parameter tenantEmail: (query)  (optional)
     - parameter fromDate: (query)  (optional)
     - parameter toDate: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getClientVitalReport(tenantEmail: String? = nil, fromDate: String? = nil, toDate: String? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        getClientVitalReportWithRequestBuilder(tenantEmail: tenantEmail, fromDate: fromDate, toDate: toDate).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - GET /ehealth/v2/reports/dwnreport/vital-report
     
     - parameter tenantEmail: (query)  (optional)
     - parameter fromDate: (query)  (optional)
     - parameter toDate: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func getClientVitalReportWithRequestBuilder(tenantEmail: String? = nil, fromDate: String? = nil, toDate: String? = nil) -> RequestBuilder<Void> {
        let path = "/ehealth/v2/reports/dwnreport/vital-report"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "tenantEmail": tenantEmail, 
            "fromDate": fromDate, 
            "toDate": toDate
        ])

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter tenantId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRPMReportsHistory(tenantId: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        getRPMReportsHistoryWithRequestBuilder(tenantId: tenantId).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - GET /ehealth/v2/reports/rpm/patients/reports-history/{tenantId}
     
     - parameter tenantId: (path)  

     - returns: RequestBuilder<Void> 
     */
    open class func getRPMReportsHistoryWithRequestBuilder(tenantId: String) -> RequestBuilder<Void> {
        var path = "/ehealth/v2/reports/rpm/patients/reports-history/{tenantId}"
        let tenantIdPreEscape = "\(tenantId)"
        let tenantIdPostEscape = tenantIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{tenantId}", with: tenantIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter authToken: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getReport(authToken: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        getReportWithRequestBuilder(authToken: authToken).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - GET /ehealth/v2/reports/dwnreport/{authToken}
     
     - parameter authToken: (path)  

     - returns: RequestBuilder<Void> 
     */
    open class func getReportWithRequestBuilder(authToken: String) -> RequestBuilder<Void> {
        var path = "/ehealth/v2/reports/dwnreport/{authToken}"
        let authTokenPreEscape = "\(authToken)"
        let authTokenPostEscape = authTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{authToken}", with: authTokenPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter requestId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getReportStatus(requestId: String, xAuthToken: String? = nil, completion: @escaping ((_ data: ReportRequest?,_ error: Error?) -> Void)) {
        getReportStatusWithRequestBuilder(requestId: requestId, xAuthToken: xAuthToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /ehealth/v2/reports/status/{requestId}
     - examples: [{contentType=application/json, example={
  "fileName" : "fileName",
  "requestId" : "requestId",
  "tenantId" : "tenantId",
  "reportFormat" : "reportFormat",
  "id" : "id",
  "updatedOn" : 6,
  "userId" : "userId",
  "reportContext" : "RPM",
  "createdOn" : 0,
  "status" : "PENDING"
}}]
     
     - parameter requestId: (path)  
     - parameter xAuthToken: (header)  (optional)

     - returns: RequestBuilder<ReportRequest> 
     */
    open class func getReportStatusWithRequestBuilder(requestId: String, xAuthToken: String? = nil) -> RequestBuilder<ReportRequest> {
        var path = "/ehealth/v2/reports/status/{requestId}"
        let requestIdPreEscape = "\(requestId)"
        let requestIdPostEscape = requestIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{requestId}", with: requestIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ReportRequest>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**

     - parameter fileId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getReports(fileId: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        getReportsWithRequestBuilder(fileId: fileId).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - GET /ehealth/v2/reports/dwnreports/{fileId}
     
     - parameter fileId: (path)  

     - returns: RequestBuilder<Void> 
     */
    open class func getReportsWithRequestBuilder(fileId: String) -> RequestBuilder<Void> {
        var path = "/ehealth/v2/reports/dwnreports/{fileId}"
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

     - parameter xAuthToken: (header)  (optional)
     - parameter start: (query)  (optional)
     - parameter end: (query)  (optional)
     - parameter caretakerId: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getResult(xAuthToken: String? = nil, start: Int64? = nil, end: Int64? = nil, caretakerId: String? = nil, completion: @escaping ((_ data: ExcelStatus?,_ error: Error?) -> Void)) {
        getResultWithRequestBuilder(xAuthToken: xAuthToken, start: start, end: end, caretakerId: caretakerId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /ehealth/v2/reports/getreport
     - examples: [{contentType=application/json, example={
  "fileName" : "fileName",
  "status" : "status"
}}]
     
     - parameter xAuthToken: (header)  (optional)
     - parameter start: (query)  (optional)
     - parameter end: (query)  (optional)
     - parameter caretakerId: (query)  (optional)

     - returns: RequestBuilder<ExcelStatus> 
     */
    open class func getResultWithRequestBuilder(xAuthToken: String? = nil, start: Int64? = nil, end: Int64? = nil, caretakerId: String? = nil) -> RequestBuilder<ExcelStatus> {
        let path = "/ehealth/v2/reports/getreport"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": start?.encodeToJSON(), 
            "end": end?.encodeToJSON(), 
            "caretakerId": caretakerId
        ])
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ExcelStatus>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

}
