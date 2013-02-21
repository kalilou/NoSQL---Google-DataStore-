package utilities;

import java.util.ArrayList;
import java.util.List;

import json.se.JSONHelper;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.Query;


public class DataStoreHelp {
	
	
	
	
	
	public List<JSONHelper> getStudent(){
		
		List<JSONHelper> list= new ArrayList<JSONHelper>(20);
		
		Query query = new Query("Student").addSort("firstName");
		DatastoreService dataStore = DatastoreServiceFactory.getDatastoreService();
		
		List<Entity> entity = dataStore.prepare(query).asList(FetchOptions.Builder.withLimit(20));
		
		for (int i = 0; i<entity.size();i++){
			
			JSONHelper newHelper = new JSONHelper(entity.get(i));
			if (!list.contains(newHelper))list.add(newHelper);
		}
		
		return list;
	}

}
