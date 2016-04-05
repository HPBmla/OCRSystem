package model;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class CountryCode {
	
	/*public static void main(String[] args) throws IOException
	{
		String filePath = "countryCode.txt";
	    HashMap<String, String> map = new HashMap<String, String>();

	    String line;
	    BufferedReader reader = null;
		try {
			reader = new BufferedReader(new FileReader(filePath));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    try {
			while ((line = reader.readLine()) != null)
			{
			    String[] parts = line.split(":", 2);
			    if (parts.length >= 2)
			    {
			        String key = parts[0];
			        String value = parts[1];
			        map.put(key, value);
			    } else {
			        System.out.println("ignoring line: " + line);
			    }
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	    for (String key : map.keySet())
	    {
	        System.out.println(key + ":" + map.get(key));
	    }
	    reader.close();
       
	}*/
	
	public Map getCountryList()
	{
		String fileName = "countryCode.txt";
		Map<String, String> code = new HashMap<String, String>();
		String line;
		BufferedReader fileReader = null;
		try {
			fileReader = new BufferedReader(new FileReader(fileName));
			try {
				while((line = fileReader.readLine())!= null)
				{
					String[] mapPart = line.split(":", 2);
					if(mapPart.length >= 2)
					{
						String key = mapPart[0];
						String val = mapPart[1];
						code.put(key, val);
					}
				}
				fileReader.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 for (String key : code.keySet())
		    {
		        System.out.println(key + ":" + code.get(key));
		    }
		   
		return code;
		
	}

}
