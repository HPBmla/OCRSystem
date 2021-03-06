package com.translator.api;

import java.io.IOException;
import java.lang.System;



import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.google.api.services.translate.Translate;
import com.google.api.services.translate.model.TranslationsListResponse;
import com.google.api.services.translate.model.TranslationsResource;
import com.gtranslate.Language;
import com.gtranslate.Translator;



public class TranslatorApi {
	


	private String apiKey = "AIzaSyCX2O-pteDLJLeMivT47kD9pucEv67QECQ";
	
	public String getTranslate(String textToBeTranslated, String translateLang)
	{
		
		translateLang = translateLang.trim();
		
		System.out.println("selected language "+translateLang);
		Translate translte = null;
		String result = null;
		try
		{
			try {
				translte = new Translate.Builder(com.google.api.client.googleapis.javanet.GoogleNetHttpTransport.newTrustedTransport(), 
						com.google.api.client.json.gson.GsonFactory.getDefaultInstance(), null)
				.setApplicationName("OCRProject")
				.build();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		catch(GeneralSecurityException ex)
		{
			ex.printStackTrace();
		}
		Translate.Translations.List list = null;
		try {
			list = translte.new Translations().list(Arrays.asList(textToBeTranslated),translateLang);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		list.setKey(apiKey);
		TranslationsListResponse response = null;
		try {
			response = list.execute();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for (TranslationsResource tr : response.getTranslations()) {
           result = tr.getTranslatedText();
        }
		return result;
		
		
	}

	

}
