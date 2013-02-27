package com.sun.org.apache.xalan.internal.xsltc;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: DOMEnhancedForDTM.java,v 1.2.4.1 2005/08/31 10:25:13 pvedula Exp $
*/
/**
* Interface for SAXImpl which adds methods used at run-time, over and above
* those provided by the XSLTC DOM interface. An attempt to avoid the current
* "Is the DTM a DOM, if so is it a SAXImpl, . . .
* which was producing some ugly replicated code
* and introducing bugs where that multipathing had not been
* done.  This makes it easier to provide other DOM/DOMEnhancedForDTM
* implementations, rather than hard-wiring XSLTC to SAXImpl.
*
* @author Joseph Kesselman
*
*/
extern interface DOMEnhancedForDTM extends com.sun.org.apache.xalan.internal.xsltc.DOM
{
	@:overload public function getMapping(names : java.NativeArray<String>, uris : java.NativeArray<String>, types : java.NativeArray<Int>) : java.NativeArray<java.StdTypes.Int16>;
	
	@:overload public function getReverseMapping(names : java.NativeArray<String>, uris : java.NativeArray<String>, types : java.NativeArray<Int>) : java.NativeArray<Int>;
	
	@:overload public function getNamespaceMapping(namespaces : java.NativeArray<String>) : java.NativeArray<java.StdTypes.Int16>;
	
	@:overload public function getReverseNamespaceMapping(namespaces : java.NativeArray<String>) : java.NativeArray<java.StdTypes.Int16>;
	
	@:overload public function getDocumentURI() : String;
	
	@:overload public function setDocumentURI(uri : String) : Void;
	
	@:overload public function getExpandedTypeID2(nodeHandle : Int) : Int;
	
	@:overload public function hasDOMSource() : Bool;
	
	@:overload public function getElementById(idString : String) : Int;
	
	
}
