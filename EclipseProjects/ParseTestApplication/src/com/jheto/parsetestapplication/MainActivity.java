package com.jheto.parsetestapplication;

import java.util.List;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.parse.DeleteCallback;
import com.parse.FindCallback;
import com.parse.ParseException;
import com.parse.ParseObject;
import com.parse.ParseQuery;
import com.parse.SaveCallback;

public class MainActivity extends Activity {

	private TextView textViewData = null;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		final EditText editTextEmail = (EditText)findViewById(R.id.editTextEmail);
		Button buttonDeleteEmail = (Button)findViewById(R.id.buttonDeleteEmail);
		Button buttonExistEmail = (Button)findViewById(R.id.buttonExistEmail);
		Button buttonSaveEmail = (Button)findViewById(R.id.buttonSaveEmail);
		Button buttonUpdateEmail = (Button)findViewById(R.id.buttonUpdateEmail);
		Button buttonDumpTable = (Button)findViewById(R.id.buttonDumpTable);
		textViewData = (TextView)findViewById(R.id.textViewData);
		
		buttonUpdateEmail.setOnClickListener(new OnClickListener(){
			@Override
			public void onClick(View arg0) {
				String email = editTextEmail.getText().toString();
				if(email.length()>0) updateEmail(email);
				else Toast.makeText(MainActivity.this, "Complete the email field", Toast.LENGTH_SHORT).show();
			}
		});
		
		buttonSaveEmail.setOnClickListener(new OnClickListener(){
			@Override
			public void onClick(View arg0) {
				String email = editTextEmail.getText().toString();
				if(email.length()>0) saveEmail(email);
				else Toast.makeText(MainActivity.this, "Complete the email field", Toast.LENGTH_SHORT).show();
			}
		});

		buttonDeleteEmail.setOnClickListener(new OnClickListener(){
			@Override
			public void onClick(View arg0) {
				String email = editTextEmail.getText().toString();
				if(email.length()>0) deleteEmail(email);
				else Toast.makeText(MainActivity.this, "Complete the email field", Toast.LENGTH_SHORT).show();
			}
		});

		buttonExistEmail.setOnClickListener(new OnClickListener(){
			@Override
			public void onClick(View arg0) {
				String email = editTextEmail.getText().toString();
				if(email.length()>0) existEmail(email, new IExist(){
					@Override
					public void exist(boolean response) {
						textViewData.setText("Exist email: " + response);
					}
				});
				else Toast.makeText(MainActivity.this, "Complete the email field", Toast.LENGTH_SHORT).show();
			}
		});

		buttonDumpTable.setOnClickListener(new OnClickListener(){
			@Override
			public void onClick(View arg0) {
				dumpEmails();
			}
		});

	}

	//**********************************************************************************************************

	static interface IExist {
		public void exist(boolean response);
	}

	private void updateEmail(final String emailToUpdate){
		try{
			ParseQuery<ParseObject> query = ParseQuery.getQuery("VulnerableTable");
			query.whereEqualTo("email", emailToUpdate);
			query.findInBackground(new FindCallback<ParseObject>() {
				@Override
				public void done(List<ParseObject> nameList, ParseException e) {
					String newEmail = emailToUpdate + ".update.com";
					if (e == null) {     
						for (ParseObject nameObj : nameList) {
							nameObj.put("email", newEmail);
							nameObj.saveInBackground();
						}
						textViewData.setText("Update Email: " + newEmail);
					}
				}
			});
		}catch(Exception e){
			textViewData.setText("Exception UpdateEmail:" + e);
		}
	}

	private void existEmail(final String emailToCheck, final IExist iexist){
		try{
			ParseQuery<ParseObject> query = ParseQuery.getQuery("VulnerableTable");
			query.whereEqualTo("email", emailToCheck);
			query.findInBackground(new FindCallback<ParseObject>() {
				@Override
				public void done(List<ParseObject> list, ParseException arg1) {
					boolean exist = false;
					if(list != null && list.size()>0){
						if(list != null && list.size()>0){
							for (int i = 0; i < list.size(); i++) {
								ParseObject obj = list.get(i);
								String email = (obj.containsKey("email"))? obj.get("email").toString():null;
								if(emailToCheck.equals(email)) {
									exist = true;
									iexist.exist(true);
									break;
								}
							}
						}
					}
					if(!exist) {
						iexist.exist(false);
						return;
					}
				}
			});
		}catch(Exception e){
			textViewData.setText("Exception ExistEmail:" + e);
		}
	}

	private void deleteEmail(final String emailToDelete){
		try{
			ParseQuery<ParseObject> query = ParseQuery.getQuery("VulnerableTable");
			List<ParseObject> dumpTable = query.find();
			if(dumpTable != null && dumpTable.size()>0){
				for (int i = 0; i < dumpTable.size(); i++) {
					ParseObject obj = dumpTable.get(i);
					String email = (obj.containsKey("email"))? obj.get("email").toString():"";
					if(emailToDelete.equals(email))  {
						obj.deleteInBackground(new DeleteCallback(){
							@Override
							public void done(ParseException arg0) {
								textViewData.setText("Delete email: " + emailToDelete);
							}
						});
						break;
					}	
				}
			}
		}catch(Exception e){
			textViewData.setText("Exception DeleteEmail:" + e);
		}
	}

	private void saveEmail(final String email){
		try{
			ParseObject gameScore = new ParseObject("VulnerableTable");
			gameScore.put("email", email);
			gameScore.saveInBackground(new SaveCallback(){
				@Override
				public void done(ParseException arg0) {
					textViewData.setText("Saved Email:" + email);
				}
			});
		}catch(Exception e){
			textViewData.setText("Exception SaveEmail:" + e);
		}
	}

	private void dumpEmails(){
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
				textViewData.setText("Dump emails: " + dump);
			}
		}catch(Exception e){
			textViewData.setText("Exception DumpEmails:" + e);
		}
	}

}
