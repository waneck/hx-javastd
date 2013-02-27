package com.sun.org.apache.xerces.internal.impl.xs;
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
extern class XSLoaderImpl implements com.sun.org.apache.xerces.internal.xs.XSLoader implements org.w3c.dom.DOMConfiguration
{
	/**
	* No-args constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	*  The configuration of a document. It maintains a table of recognized
	* parameters. Using the configuration, it is possible to change the
	* behavior of the load methods. The configuration may support the
	* setting of and the retrieval of the following non-boolean parameters
	* defined on the <code>DOMConfiguration</code> interface:
	* <code>error-handler</code> (<code>DOMErrorHandler</code>) and
	* <code>resource-resolver</code> (<code>LSResourceResolver</code>).
	* <br> The following list of boolean parameters is defined:
	* <dl>
	* <dt>
	* <code>"validate"</code></dt>
	* <dd>
	* <dl>
	* <dt><code>true</code></dt>
	* <dd>[required] (default) Validate an XML
	* Schema during loading. If validation errors are found, the error
	* handler is notified. </dd>
	* <dt><code>false</code></dt>
	* <dd>[optional] Do not
	* report errors during the loading of an XML Schema document. </dd>
	* </dl></dd>
	* </dl>
	*/
	@:overload public function getConfig() : org.w3c.dom.DOMConfiguration;
	
	/**
	* Parses the content of XML Schema documents specified as the list of URI
	* references. If the URI contains a fragment identifier, the behavior
	* is not defined by this specification.
	* @param uriList The list of URI locations.
	* @return An XSModel representing the schema documents.
	*/
	@:overload public function loadURIList(uriList : com.sun.org.apache.xerces.internal.xs.StringList) : com.sun.org.apache.xerces.internal.xs.XSModel;
	
	/**
	*  Parses the content of XML Schema documents specified as a list of
	* <code>LSInput</code>s.
	* @param is  The list of <code>LSInput</code>s from which the XML
	*   Schema documents are to be read.
	* @return An XSModel representing the schema documents.
	*/
	@:overload public function loadInputList(is : com.sun.org.apache.xerces.internal.xs.LSInputList) : com.sun.org.apache.xerces.internal.xs.XSModel;
	
	/**
	* Parse an XML Schema document from a location identified by a URI
	* reference. If the URI contains a fragment identifier, the behavior is
	* not defined by this specification.
	* @param uri The location of the XML Schema document to be read.
	* @return An XSModel representing this schema.
	*/
	@:overload public function loadURI(uri : String) : com.sun.org.apache.xerces.internal.xs.XSModel;
	
	/**
	*  Parse an XML Schema document from a resource identified by a
	* <code>LSInput</code> .
	* @param is  The <code>LSInput</code> from which the source
	*   document is to be read.
	* @return An XSModel representing this schema.
	*/
	@:overload public function load(is : org.w3c.dom.ls.LSInput) : com.sun.org.apache.xerces.internal.xs.XSModel;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.dom3.DOMConfiguration#setParameter(java.lang.String, java.lang.Object)
	*/
	@:overload public function setParameter(name : String, value : Dynamic) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.dom3.DOMConfiguration#getParameter(java.lang.String)
	*/
	@:overload public function getParameter(name : String) : Dynamic;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.dom3.DOMConfiguration#canSetParameter(java.lang.String, java.lang.Object)
	*/
	@:overload public function canSetParameter(name : String, value : Dynamic) : Bool;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.dom3.DOMConfiguration#getParameterNames()
	*/
	@:overload public function getParameterNames() : org.w3c.dom.DOMStringList;
	
	
}
/**
* Grammar pool which merges grammars from the same namespace into one. This eliminates
* duplicate named components. It doesn't ensure that the grammar is consistent, however
* this no worse than than the behaviour of XMLSchemaLoader alone when used as an XSLoader.
*/
@:native('com$sun$org$apache$xerces$internal$impl$xs$XSLoaderImpl$XSGrammarMerger') @:internal extern class XSLoaderImpl_XSGrammarMerger extends com.sun.org.apache.xerces.internal.impl.xs.util.XSGrammarPool
{
	@:overload public function new() : Void;
	
	@:overload override public function putGrammar(grammar : com.sun.org.apache.xerces.internal.xni.grammars.Grammar) : Void;
	
	@:overload override public function containsGrammar(desc : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription) : Bool;
	
	@:overload override public function getGrammar(desc : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription) : com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
	
	@:overload override public function retrieveGrammar(desc : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription) : com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
	
	@:overload override public function retrieveInitialGrammarSet(grammarType : String) : java.NativeArray<com.sun.org.apache.xerces.internal.xni.grammars.Grammar>;
	
	
}
