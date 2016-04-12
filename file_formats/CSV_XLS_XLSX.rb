# Some common formats in business software and modern web applications include CSV, JSON, XML, HTML, and XLS. This section will define these formats, show how to work with them in Ruby, and conclude with an example.

# CSV and XLS/XLSX

# These are two formats that are typically used for importing and exporting tabular data commonly found in spreadsheet applications. XLS refers to Microsoft's Excel format. For the purposes of this example, we will just focus on the simple spreadsheets and not advanced features like charts, formulas, and cell styling. Ruby does not have any core or standard support for Microsoft's Excel file format. Thankfully there are a few active open source projects that have brought the XLS format to Ruby. The one we will use in this example is called axlsx.

# CSV stands for Comma Separated Values. If CSV was an ice cream, it would be vanilla. Each data cell is separated by a comma or semicolon and each line is a row of tabular data. The Ruby Std-lib does support csv files with the built-in CSV class.

# JSON and XML/HTML

# Some data doesn't fit into a box. For plain text, JSON and XML are data formats that let us describe the nested characteristics of data. JSON stands for JavaScript Object Notation. Shortly we will be looking at an example that deals with an article. The article will have three fields, title, link, and summary. In JSON, a newspaper and an article might be represented like this.

{
  "newspaper_name": "Cooking Today",
  "issue_date": "November 15th, 2014",
  "articles": [
    {
      "title": "Bacon Cooking",
      "link": "http://baconcooklove.com",
      "summary": "Just a few thousand ideas about bacon"
    },
    {
      "title": "Cooking with leftovers",
      "link": "http://love.com",
      "summary": "Just a few thousand ideas about tasting love twice"
    }
  ]
}

# JSON is commonly compared to a hash because of its key/value pairs, but keep in mind that JSON is unlike a hash in that it is a file format. A JSON file needs to be parsed and converted into an actual Ruby hash. Fortunately, the Ruby standard library supports json and we'll see shortly how to work with JSON files.

# XML stands for Extensible Markup Language. XML is a tool for defining domain specific schematics. If you are reading this book, then you have just experienced at least one XML example. Web pages are constructed using HTML, a standardized format of XML for describing elements on the web page. In XML our example above might look like this:

<newspaper>
  <name>Cooking Today</name>
  <issue_date>November 15th, 2014</issue_date>
  <articles>
    <article>
      <title>Bacon Cooking</title>
      <link>http://baconcooklove.com</link>
      <summary>Just a few thousand ideas about bacon</summary>
    </article>
    <article>
      <title>Cooking with leftovers</title>
      <link>http://love.com</link>
      <summary>Just a few thousand ideas about tasting love twice</summary>
    </article>
  </articles>
</newspaper>

# There's a very good open source gem for parsing XML files and web pages. It's called Nokogiri and we will be using it in the following exercise. `
