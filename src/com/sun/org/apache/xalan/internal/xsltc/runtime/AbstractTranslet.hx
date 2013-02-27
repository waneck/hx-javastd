package com.sun.org.apache.xalan.internal.xsltc.runtime;
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
* $Id: AbstractTranslet.java,v 1.6 2006/06/19 19:49:03 spericas Exp $
*/
extern class AbstractTranslet implements com.sun.org.apache.xalan.internal.xsltc.Translet
{
	/**
	* @author Jacek Ambroziak
	* @author Santiago Pericas-Geertsen
	* @author Morten Jorgensen
	* @author G. Todd Miller
	* @author John Howard, JohnH@schemasoft.com
	*/
	public var _version : String;
	
	public var _method : String;
	
	public var _encoding : String;
	
	public var _omitHeader : Bool;
	
	public var _standalone : String;
	
	public var _isStandalone : Bool;
	
	public var _doctypePublic : String;
	
	public var _doctypeSystem : String;
	
	public var _indent : Bool;
	
	public var _mediaType : String;
	
	public var _cdata : java.util.Vector<Dynamic>;
	
	public var _indentamount : Int;
	
	public static var FIRST_TRANSLET_VERSION(default, null) : Int;
	
	public static var VER_SPLIT_NAMES_ARRAY(default, null) : Int;
	
	public static var CURRENT_TRANSLET_VERSION(default, null) : Int;
	
	private var transletVersion : Int;
	
	private var namesArray : java.NativeArray<String>;
	
	private var urisArray : java.NativeArray<String>;
	
	private var typesArray : java.NativeArray<Int>;
	
	private var namespaceArray : java.NativeArray<String>;
	
	private var _templates : javax.xml.transform.Templates;
	
	private var _hasIdCall : Bool;
	
	private var stringValueHandler : com.sun.org.apache.xalan.internal.xsltc.runtime.StringValueHandler;
	
	/************************************************************************
	* Debugging
	************************************************************************/
	@:overload public function printInternalState() : Void;
	
	/**
	* Wrap the initial input DOM in a dom adapter. This adapter is wrapped in
	* a DOM multiplexer if the document() function is used (handled by compiled
	* code in the translet - see compiler/Stylesheet.compileTransform()).
	*/
	@:overload @:final public function makeDOMAdapter(dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : com.sun.org.apache.xalan.internal.xsltc.dom.DOMAdapter;
	
	/************************************************************************
	* Parameter handling
	************************************************************************/
	private var pbase : Int;
	
	private var paramsStack : java.util.ArrayList<Dynamic>;
	
	/**
	* Push a new parameter frame.
	*/
	@:overload @:final public function pushParamFrame() : Void;
	
	/**
	* Pop the topmost parameter frame.
	*/
	@:overload @:final public function popParamFrame() : Void;
	
	/**
	* Add a new global parameter if not already in the current frame.
	* To setParameters of the form {http://foo.bar}xyz
	* This needs to get mapped to an instance variable in the class
	* The mapping  created so that
	* the global variables in the generated class become
	* http$colon$$flash$$flash$foo$dot$bar$colon$xyz
	*/
	@:overload @:final public function addParameter(name : String, value : Dynamic) : Dynamic;
	
	/**
	* Add a new global or local parameter if not already in the current frame.
	* The 'isDefault' parameter is set to true if the value passed is the
	* default value from the <xsl:parameter> element's select attribute or
	* element body.
	*/
	@:overload @:final public function addParameter(name : String, value : Dynamic, isDefault : Bool) : Dynamic;
	
	/**
	* Clears the parameter stack.
	*/
	@:overload public function clearParameters() : Void;
	
	/**
	* Get the value of a parameter from the current frame or
	* <tt>null</tt> if undefined.
	*/
	@:overload @:final public function getParameter(name : String) : Dynamic;
	
	/**
	* Set the translet's message handler - must implement MessageHandler
	*/
	@:overload @:final public function setMessageHandler(handler : com.sun.org.apache.xalan.internal.xsltc.runtime.MessageHandler) : Void;
	
	/**
	* Pass a message to the message handler - used by Message class.
	*/
	@:overload @:final public function displayMessage(msg : String) : Void;
	
	/************************************************************************
	* Decimal number format symbol handling
	************************************************************************/
	public var _formatSymbols : Hashtable;
	
	/**
	* Adds a DecimalFormat object to the _formatSymbols hashtable.
	* The entry is created with the input DecimalFormatSymbols.
	*/
	@:overload public function addDecimalFormat(name : String, symbols : java.text.DecimalFormatSymbols) : Void;
	
	/**
	* Retrieves a named DecimalFormat object from _formatSymbols hashtable.
	*/
	@:overload @:final public function getDecimalFormat(name : String) : java.text.DecimalFormat;
	
	/**
	* Give the translet an opportunity to perform a prepass on the document
	* to extract any information that it can store in an optimized form.
	*
	* Currently, it only extracts information about attributes of type ID.
	*/
	@:overload @:final public function prepassDocument(document : com.sun.org.apache.xalan.internal.xsltc.DOM) : Void;
	
	/**
	* After constructing the translet object, this method must be called to
	* perform any version-specific post-initialization that's required.
	*/
	@:overload @:final public function postInitialization() : Void;
	
	/**
	* This method is used to pass the largest DOM size to the translet.
	* Needed to make sure that the translet can index the whole DOM.
	*/
	@:overload public function setIndexSize(size : Int) : Void;
	
	/**
	* Creates a KeyIndex object of the desired size - don't want to resize!!!
	*/
	@:overload public function createKeyIndex() : com.sun.org.apache.xalan.internal.xsltc.dom.KeyIndex;
	
	/**
	* Adds a value to a key/id index
	*   @param name is the name of the index (the key or ##id)
	*   @param node is the node handle of the node to insert
	*   @param value is the value that will look up the node in the given index
	*/
	@:overload public function buildKeyIndex(name : String, node : Int, value : Dynamic) : Void;
	
	/**
	* Create an empty KeyIndex in the DOM case
	*   @param name is the name of the index (the key or ##id)
	*   @param dom is the DOM
	*/
	@:overload public function buildKeyIndex(name : String, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : Void;
	
	/**
	* Returns the index for a given key (or id).
	* The index implements our internal iterator interface
	*/
	@:overload public function getKeyIndex(name : String) : com.sun.org.apache.xalan.internal.xsltc.dom.KeyIndex;
	
	/**
	* This method builds key indexes - it is overridden in the compiled
	* translet in cases where the <xsl:key> element is used
	*/
	@:overload public function buildKeys(document : com.sun.org.apache.xalan.internal.xsltc.DOM, iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler, root : Int) : Void;
	
	/**
	* This method builds key indexes - it is overridden in the compiled
	* translet in cases where the <xsl:key> element is used
	*/
	@:overload public function setKeyIndexDom(name : String, document : com.sun.org.apache.xalan.internal.xsltc.DOM) : Void;
	
	/**
	* Sets the DOM cache used for additional documents loaded using the
	* document() function.
	*/
	@:overload public function setDOMCache(cache : com.sun.org.apache.xalan.internal.xsltc.DOMCache) : Void;
	
	/**
	* Returns the DOM cache used for this translet. Used by the LoadDocument
	* class (if present) when the document() function is used.
	*/
	@:overload public function getDOMCache() : com.sun.org.apache.xalan.internal.xsltc.DOMCache;
	
	/************************************************************************
	* Multiple output document extension.
	* See compiler/TransletOutput for actual implementation.
	************************************************************************/
	@:overload public function openOutputHandler(filename : String, append : Bool) : com.sun.org.apache.xml.internal.serializer.SerializationHandler;
	
	@:overload public function openOutputHandler(filename : String) : com.sun.org.apache.xml.internal.serializer.SerializationHandler;
	
	@:overload public function closeOutputHandler(handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	/**
	* Main transform() method - this is overridden by the compiled translet
	*/
	@:overload @:abstract public function transform(document : com.sun.org.apache.xalan.internal.xsltc.DOM, iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	/**
	* Calls transform() with a given output handler
	*/
	@:overload @:final public function transform(document : com.sun.org.apache.xalan.internal.xsltc.DOM, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	/**
	* Used by some compiled code as a shortcut for passing strings to the
	* output handler
	*/
	@:overload @:final public function characters(string : String, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	/**
	* Add's a name of an element whose text contents should be output as CDATA
	*/
	@:overload public function addCdataElement(name : String) : Void;
	
	/**
	* Transfer the output settings to the output post-processor
	*/
	@:overload private function transferOutputSettings(handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	@:overload public function addAuxiliaryClass(auxClass : Class<Dynamic>) : Void;
	
	@:overload public function setAuxiliaryClasses(auxClasses : Hashtable) : Void;
	
	@:overload public function getAuxiliaryClass(className : String) : Class<Dynamic>;
	
	@:overload public function getNamesArray() : java.NativeArray<String>;
	
	@:overload public function getUrisArray() : java.NativeArray<String>;
	
	@:overload public function getTypesArray() : java.NativeArray<Int>;
	
	@:overload public function getNamespaceArray() : java.NativeArray<String>;
	
	@:overload public function hasIdCall() : Bool;
	
	@:overload public function getTemplates() : javax.xml.transform.Templates;
	
	@:overload public function setTemplates(templates : javax.xml.transform.Templates) : Void;
	
	/**
	* Return the state of the services mechanism feature.
	*/
	@:overload public function useServicesMechnism() : Bool;
	
	/**
	* Set the state of the services mechanism feature.
	*/
	@:overload public function setServicesMechnism(flag : Bool) : Void;
	
	/************************************************************************
	* DOMImplementation caching for basis library
	************************************************************************/
	private var _domImplementation : org.w3c.dom.DOMImplementation;
	
	@:overload public function newDocument(uri : String, qname : String) : org.w3c.dom.Document;
	
	@:overload @:public public function transform(document : com.sun.org.apache.xalan.internal.xsltc.DOM, handlers : java.NativeArray<com.sun.org.apache.xml.internal.serializer.SerializationHandler>) : Void;
	
	
}
