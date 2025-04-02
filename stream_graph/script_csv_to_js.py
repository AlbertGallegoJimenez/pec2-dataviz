import csv
import json
from datetime import datetime

def convert_csv_to_js(input_csv, output_js, languages_to_include=None):
    """
    Converts a CSV file with programming language popularity data to JS format.
    
    Args:
        input_csv (str): Path to the input CSV file.
        output_js (str): Path to the output JS file.
        languages_to_include (list, optional): List of languages to include in the result.
                                              If None, includes all languages.
    """
    # If no languages are specified, we'll use the ones from your example
    if languages_to_include is None:
        languages_to_include = ["JavaScript", "Python", "Java", "PHP", "C/C++", "C#"]
    
    # Mapping for C/C++ as it appears as C++ in the final example
    language_mapping = {"C/C++": "C++"}
    
    data = []
    
    with open(input_csv, 'r') as csvfile:
        reader = csv.DictReader(csvfile)
        
        for row in reader:
            # Process the date
            date_str = row["Date"]
            try:
                # Try to parse the date
                date_obj = datetime.strptime(date_str, "%B %Y")
                formatted_date = date_obj.strftime("%Y-%m")
            except ValueError:
                # If it can't be parsed, use the original format
                formatted_date = date_str
            
            # Create new record with the formatted date
            record = {"Date": formatted_date}
            
            # Add only the specified languages
            for lang in languages_to_include:
                # Use the original language name to get the value
                original_lang = lang
                
                # Add the value if it exists in the row
                if original_lang in row:
                    # Convert to floating point number
                    value = float(row[original_lang])
                    # Use the mapped name in the result
                    record[lang if lang not in language_mapping.values() else lang] = value
            
            data.append(record)
    
    # Write to JS file
    with open(output_js, 'w') as jsfile:
        jsfile.write("const programmingData = ")
        jsfile.write(json.dumps(data, indent=4))
        jsfile.write(";")
    
    print(f"Conversion completed: {input_csv} -> {output_js}")

# Example usage
if __name__ == "__main__":
    # Change these paths as needed
    input_file = "data/pop_programming_lang.csv"
    output_file = "programming_data.js"
    
    # List of languages to include (you can modify this list)
    languages = ["JavaScript", "Python", "Java", "PHP", "C/C++", "C#"]
    
    convert_csv_to_js(input_file, output_file, languages)