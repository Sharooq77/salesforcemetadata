public class venkatorgconnet {
    
    
    public static void  configureIntegration() {
        
        String endpointurl = 'https://login.salesforce.com/services/oauth2/token';
        String username = 'alisharuk987@gmail.com';
        String password = 'Siri@123';
        String consumerkey = '3MVG9wt4IL4O5wvJZKdMAd4eXqVJp99G_P6btooShP6L5m4R9fRCbvQgZTOoSrfKlWYGb1M2DOJnkYTJgcesm';
        String consumersecret = '3ABAB8AC8DAD402E53A89C8D08933F2781B4B5EF12258CA4FBDDD4889B593077';
        
        String body = 'grant_type=password&client_id=' + consumerkey + 
            '&client_secret=' + consumersecret + 
            '&username=' + username + '&password=' + password;
        
        HttpRequest req = new HttpRequest();
        req.setBody(body);
        req.setEndpoint(endpointurl);
        req.setMethod('GET');
        
        
        Http h = new Http();
        HttpResponse response = h.send(req);
        
        system.debug(response.getStatus());
        system.debug( response.getBody());
        
        string jsonres= response.getBody();
       map<string,object> tokenresponsemap=   (map<string,object>)json.deserializeUntyped(jsonres);
        system.debug(tokenresponsemap.get('access_token'));
        
        //get account data from venkatorg
        
        object accesstoken =tokenresponsemap.get('access_token'); 
        string acesstokenstr= string.valueOf(accesstoken);
        string sourcendpointurl='https://d5i00000dvnb1eah-dev-ed.develop.my.salesforce.com//services/apexrest/venkatorg/accounts';
        
        
        object tokentype =tokenresponsemap.get('token_type'); 
        string tokentypestr= string.valueOf(tokentype);
        
        
        httprequest accreq = new httprequest ();
        accreq.setEndpoint(sourcendpointurl);
        accreq.setHeader('Authorization', 'Bearer  '+acesstokenstr);
        accreq.setHeader('accept', 'application/json');
        accreq.setMethod('GET');
        
        http accht= new http ();
         HttpResponse accresponse= accht.send(accreq);
        system.debug(accresponse.getBody());
        
        
    }


}