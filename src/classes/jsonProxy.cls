public with sharing class jsonProxy {
	
	@remoteAction
	public static Map<String, Object> makeRequest(string endpoint){

		Http h = new Http();
	    HttpRequest req = new HttpRequest();
	    req.setEndpoint(endpoint);
	    req.setMethod('GET');

	    // Send the request, and return a response
	    HttpResponse res = h.send(req);
	    system.debug(res.getBody());
	    string tempbody = res.getBody().replace('\'', ''); 
	    //this turns it into a map, that then gets re-serialized as part of the remote action.
	    Map<String, Object> m = (Map<String, Object>) JSON.deserializeUntyped(tempbody);
	   	return m;
	}
}