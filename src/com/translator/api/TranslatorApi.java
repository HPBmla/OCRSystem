package com.translator.api;

import java.lang.System;


import com.gtranslate.Language;
import com.gtranslate.Translator;



public class TranslatorApi {
	
	public String gettranslation()
	{
	
	
	Translator translate = Translator.getInstance();
	
    String text = translate.translate("I am programmer", Language.ENGLISH, Language.PORTUGUESE); 
	System.out.println(text);
	//String text = "http://translate.google.com/translate_tts?ie=UTF-8&q=Hello%20World&tl=en-us;";
	return  text;
	}
	
	
	

}
