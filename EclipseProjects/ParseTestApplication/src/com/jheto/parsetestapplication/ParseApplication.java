package com.jheto.parsetestapplication;

import com.parse.Parse;
import com.parse.ParseACL;
import com.parse.ParseCrashReporting;
import com.parse.ParseUser;

import android.app.Application;
import android.content.res.Resources;

public class ParseApplication extends Application  {

	public static String YOUR_APPLICATION_ID = "M2tq6g4vV2xsNgZKqAEw0zkS5odMOaBWcxVqWRWM";
	public static String YOUR_CLIENT_KEY = "uIJY26yLax6QUH6aNN0HpiI3A3UkVKc3vioyIxFv";
	
	@Override
	  public void onCreate() {
	    super.onCreate();
	    
	    Resources res = getResources();
	    ParseCrashReporting.enable(this);
	    Parse.enableLocalDatastore(this);
	    Parse.initialize(this, res.getString(R.string.YOUR_APPLICATION_ID), res.getString(R.string.YOUR_CLIENT_KEY));
	    ParseUser.enableAutomaticUser();
	    ParseACL defaultACL = new ParseACL();
	    ParseACL.setDefaultACL(defaultACL, true);
	  }

	
}
