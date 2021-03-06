package org.jcp.xml.dsig.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2008 The Apache Software Foundation.
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
/*
* Copyright (c) 2008, Oracle and/or its affiliates. All rights reserved.
*/
/*
* $Id: DOMCanonicalXMLC14N11Method.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMCanonicalXMLC14N11Method extends org.jcp.xml.dsig.internal.dom.ApacheCanonicalizer
{
	/**
	* DOM-based implementation of CanonicalizationMethod for Canonical XML 1.1
	* (with or without comments). Uses Apache XML-Sec Canonicalizer.
	*
	* @author Sean Mullan
	*/
	@:public @:static @:final public static var C14N_11(default, null) : String;
	
	@:public @:static @:final public static var C14N_11_WITH_COMMENTS(default, null) : String;
	
	@:overload @:public override public function init(params : javax.xml.crypto.dsig.spec.TransformParameterSpec) : Void;
	
	@:overload @:public override public function transform(data : javax.xml.crypto.Data, xc : javax.xml.crypto.XMLCryptoContext) : javax.xml.crypto.Data;
	
	
}
