package com.sun.org.apache.xerces.internal.impl;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2004 The Apache Software Foundation.
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
extern interface ExternalSubsetResolver extends com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver
{
	/**
	* <p>Locates an external subset for documents which do not explicitly
	* provide one. If no external subset is provided, this method should
	* return <code>null</code>.</p>
	*
	* @param grammarDescription a description of the DTD
	*
	* @throws XNIException Thrown on general error.
	* @throws IOException  Thrown if resolved entity stream cannot be
	*                      opened or some other i/o error occurs.
	*/
	@:overload @:public public function getExternalSubset(grammarDescription : com.sun.org.apache.xerces.internal.xni.grammars.XMLDTDDescription) : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
	
	
}
