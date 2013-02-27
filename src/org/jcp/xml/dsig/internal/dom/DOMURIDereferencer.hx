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
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
*/
/*
* $Id: DOMURIDereferencer.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
/**
* DOM-based implementation of URIDereferencer.
*
* @author Sean Mullan
*/
extern class DOMURIDereferencer implements javax.xml.crypto.URIDereferencer
{
	@:overload public function dereference(uriRef : javax.xml.crypto.URIReference, context : javax.xml.crypto.XMLCryptoContext) : javax.xml.crypto.Data;
	
	
}
