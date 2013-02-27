package com.sun.org.apache.xalan.internal.xsltc.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
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
* $Id: DocumentCache.java,v 1.2.4.1 2005/09/06 06:15:22 pvedula Exp $
*/
extern class DocumentCache implements com.sun.org.apache.xalan.internal.xsltc.DOMCache
{
	/**
	* DocumentCache constructor
	*/
	@:overload public function new(size : Int) : Void;
	
	/**
	* DocumentCache constructor
	*/
	@:overload public function new(size : Int, dtmManager : com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager) : Void;
	
	/**
	* Returns a document either by finding it in the cache or
	* downloading it and putting it in the cache.
	*/
	@:overload public function retrieveDocument(baseURI : String, href : String, trs : com.sun.org.apache.xalan.internal.xsltc.Translet) : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	/**
	* Outputs the cache statistics
	*/
	@:overload public function getStatistics(out : java.io.PrintWriter) : Void;
	
	
}
/*
* Inner class containing a DOMImpl object and DTD handler
*/
@:native('com$sun$org$apache$xalan$internal$xsltc$dom$DocumentCache$CachedDocument') extern class DocumentCache_CachedDocument
{
	/**
	* Constructor - load document and initialise statistics
	*/
	@:overload public function new(uri : String) : Void;
	
	/**
	* Loads the document and updates build-time (latency) statistics
	*/
	@:overload public function loadDocument(uri : String) : Void;
	
	@:overload public function getDocument() : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	@:overload public function getFirstReferenced() : haxe.Int64;
	
	@:overload public function getLastReferenced() : haxe.Int64;
	
	@:overload public function getAccessCount() : haxe.Int64;
	
	@:overload public function incAccessCount() : Void;
	
	@:overload public function getLastModified() : haxe.Int64;
	
	@:overload public function setLastModified(t : haxe.Int64) : Void;
	
	@:overload public function getLatency() : haxe.Int64;
	
	@:overload public function getLastChecked() : haxe.Int64;
	
	@:overload public function setLastChecked(t : haxe.Int64) : Void;
	
	@:overload public function getEstimatedSize() : haxe.Int64;
	
	
}
