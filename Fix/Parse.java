package com.parse;

import java.io.ByteArrayInputStream;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;

import javax.security.auth.x500.X500Principal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;

//first you need make a final class and other things ...
public final class Parse {

	private static boolean isDebugMode = true;
	
	public static boolean getDebugMode(){
		return isDebugMode;
	}
	
	public static void setDebugMode(boolean isDebugMode){
		Parse.isDebugMode = isDebugMode;
	}
	
	private static boolean isDebuggable = false;
	
	public static boolean getDebuggable(){
		return isDebuggable;
	}
	
	private static String currentPackage = "";
	
	public static String getCurrentPackage(){
		return currentPackage;
	} 
	
	private static final void extractPackage(Context context) throws Exception {
		currentPackage = context.getApplicationContext().getPackageName(); 
	}
	
	private static final X500Principal DEBUG_DN = new X500Principal("CN=Android Debug,O=Android,C=US");
	
	private static void extractDebuggable(Context context) throws Exception {
		isDebuggable = false;
	    try {
	        PackageInfo pinfo = context.getPackageManager().getPackageInfo(context.getPackageName(),PackageManager.GET_SIGNATURES);
	        Signature signatures[] = pinfo.signatures;
	        CertificateFactory cf = CertificateFactory.getInstance("X.509");
	        for ( int i = 0; i < signatures.length;i++) {   
	            ByteArrayInputStream stream = new ByteArrayInputStream(signatures[i].toByteArray());
	            X509Certificate cert = (X509Certificate) cf.generateCertificate(stream);       
	            isDebuggable = cert.getSubjectX500Principal().equals(DEBUG_DN);
	            if (isDebuggable) break;
	        }
	    }
	    catch (Exception e) {}
	}
	
	private static final void extractDebuggable2(Context context) throws Exception {
		PackageManager pm = context.getPackageManager();
	    ApplicationInfo appinfo = pm.getApplicationInfo(context.getPackageName(), 0);
	    isDebuggable = (0 != (appinfo.flags & ApplicationInfo.FLAG_DEBUGGABLE));
	}
	
	//here need do some things ...
	public static void initialize(Context context, String applicationId, String clientKey){
		try{
			extractDebuggable(context);
			extractPackage(context);
			
			/* Here you need if in you system is config in debug mode and 
			 * which is the package that is allowed to use these keys.
			 * 
			 * If you still do not understand, the backend must add two values 
			 * more, the package is allowed to run these keys and when debug 
			 * mode must be enabled.
			 * 
			 * When writing code, think first of the safety of their customers.
			 * 
			 * Its insecure that any package can use them.
			 * 
			 * the other code I think you can write (Is not a security risk, yeah right)
			 * 
			 * */
			
		}catch(Exception e){}
	}
	
}
