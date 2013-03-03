package com.sun.org.apache.xml.internal.resolver.readers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
//// TR9401CatalogReader.java - Read OASIS Catalog files
/*
* Copyright 2001-2004 The Apache Software Foundation or its licensors,
* as applicable.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class TR9401CatalogReader extends com.sun.org.apache.xml.internal.resolver.readers.TextCatalogReader
{
	/**
	* Start parsing an OASIS TR9401 Open Catalog file. The file is
	* actually read and parsed
	* as needed by <code>nextEntry</code>.
	*
	* <p>In a TR9401 Catalog the 'DELEGATE' entry delegates public
	* identifiers. There is no delegate entry for system identifiers
	* or URIs.</p>
	*
	* @param catalog The Catalog to populate
	* @param is The input stream from which to read the TR9401 Catalog
	*
	* @throws MalformedURLException Improper fileUrl
	* @throws IOException Error reading catalog file
	*/
	@:overload @:public override public function readCatalog(catalog : com.sun.org.apache.xml.internal.resolver.Catalog, is : java.io.InputStream) : Void;
	
	
}
