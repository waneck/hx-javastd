package com.sun.org.apache.xml.internal.security.utils.resolver.implementations;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright  1999-2004 The Apache Software Foundation.
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*
*/
extern class ResolverFragment extends com.sun.org.apache.xml.internal.security.utils.resolver.ResourceResolverSpi
{
	@:overload @:public override public function engineIsThreadSafe() : Bool;
	
	/**
	* Method engineResolve
	*
	* Wird das gleiche Dokument referenziert?
	* Wird ein anderes Dokument referenziert?
	* @inheritDoc
	* @param uri
	* @param BaseURI
	*
	*/
	@:overload @:public override public function engineResolve(uri : org.w3c.dom.Attr, BaseURI : String) : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	/**
	* Method engineCanResolve
	* @inheritDoc
	* @param uri
	* @param BaseURI
	*
	*/
	@:overload @:public override public function engineCanResolve(uri : org.w3c.dom.Attr, BaseURI : String) : Bool;
	
	
}
