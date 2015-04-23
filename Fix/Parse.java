package com.parse;

import java.io.ByteArrayInputStream;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;

import javax.security.auth.x500.X500Principal;

import java.security.MessageDigest;
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
	
	private static String hashCurrentPackage = "";
	
	public static String getHashCurrentPackage(){
		return hashCurrentPackage;
	}
	
	private static final String getPackage(Context context) throws Exception {
		return context.getApplicationContext().getPackageName(); 
	}
	
	private static final X500Principal DEBUG_DN = new X500Principal("CN=Android Debug,O=Android,C=US");
	
	private final static String getPackageHash(Context context){
		String hash = "";
		try {
			PackageInfo info = context.getPackageManager().getPackageInfo(context.getPackageName(), PackageManager.GET_SIGNATURES);
			for (Signature signature : info.signatures) 
			{
				MessageDigest md = MessageDigest.getInstance("SHA");
				md.update(signature.toByteArray());
				hash = Base64.encodeToString(md.digest(), Base64.DEFAULT);
			}
		} catch (Exception e) {}
		return hash;
	}
	
	private static boolean getDebuggable(Context context) throws Exception {
		boolean isDebuggable = false;
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
	    return isDebuggable;
	}
	
	private static final void extractDebuggable2(Context context) throws Exception {
	    PackageManager pm = context.getPackageManager();
	    ApplicationInfo appinfo = pm.getApplicationInfo(context.getPackageName(), 0);
	    isDebuggable = (0 != (appinfo.flags & ApplicationInfo.FLAG_DEBUGGABLE));
	}
	
	//here need do some things ...
	public static void initialize(Context context, String applicationId, String clientKey){
		try{
			isDebuggable = getDebuggable(context);
			currentPackage getPackage(context);
			hashCurrentPackage getPackageHash(context);
			
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
