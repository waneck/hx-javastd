package org.jcp.xml.dsig.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2005 The Apache Software Foundation.
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
* ===========================================================================
*
* (C) Copyright IBM Corp. 2003 All Rights Reserved.
*
* ===========================================================================
*/
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
*/
/*
* $Id: DOMXPathFilter2Transform.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMXPathFilter2Transform extends org.jcp.xml.dsig.internal.dom.ApacheTransform
{
	/**
	* DOM-based implementation of XPath Filter 2.0 Transform.
	* (Uses Apache XML-Sec Transform implementation)
	*
	* @author Joyce Leung
	*/
	@:overload override public function init(params : javax.xml.crypto.dsig.spec.TransformParameterSpec) : Void;
	
	@:overload override public function init(parent : javax.xml.crypto.XMLStructure, context : javax.xml.crypto.XMLCryptoContext) : Void;
	
	@:overload override public function marshalParams(parent : javax.xml.crypto.XMLStructure, context : javax.xml.crypto.XMLCryptoContext) : Void;
	
	
}