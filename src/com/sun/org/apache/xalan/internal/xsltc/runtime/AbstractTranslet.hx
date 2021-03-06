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
	@:public public var _version : String;
	
	@:public public var _method : String;
	
	@:public public var _encoding : String;
	
	@:public public var _omitHeader : Bool;
	
	@:public public var _standalone : String;
	
	@:public public var _isStandalone : Bool;
	
	@:public public var _doctypePublic : String;
	
	@:public public var _doctypeSystem : String;
	
	@:public public var _indent : Bool;
	
	@:public public var _mediaType : String;
	
	@:public public var _cdata : java.util.Vector<Dynamic>;
	
	@:public public var _indentamount : Int;
	
	@:public @:static @:final public static var FIRST_TRANSLET_VERSION(default, null) : Int;
	
	@:public @:static @:final public static var VER_SPLIT_NAMES_ARRAY(default, null) : Int;
	
	@:public @:static @:final public static var CURRENT_TRANSLET_VERSION(default, null) : Int;
	
	@:protected private var transletVersion : Int;
	
	@:protected private var namesArray : java.NativeArray<String>;
	
	@:protected private var urisArray : java.NativeArray<String>;
	
	@:protected private var typesArray : java.NativeArray<Int>;
	
	@:protected private var namespaceArray : java.NativeArray<String>;
	
	@:protected private var _templates : javax.xml.transform.Templates;
	
	@:protected private var _hasIdCall : Bool;
	
	@:protected private var stringValueHandler : com.sun.org.apache.xalan.internal.xsltc.runtime.StringValueHandler;
	
	/************************************************************************
	* Debugging
	************************************************************************/
	@:overload @:public public function printInternalState() : Void;
	
	/**
	* Wrap the initial input DOM in a dom adapter. This adapter is wrapped in
	* a DOM multiplexer if the document() function is used (handled by compiled
	* code in the translet - see compiler/Stylesheet.compileTransform()).
	*/
	@:overload @:public @:final public function makeDOMAdapter(dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : com.sun.org.apache.xalan.internal.xsltc.dom.DOMAdapter;
	
	/************************************************************************
	* Parameter handling
	************************************************************************/
	@:protected private var pbase : Int;
	
	@:protected private var paramsStack : java.util.ArrayList<Dynamic>;
	
	/**
	* Push a new parameter frame.
	*/
	@:overload @:public @:final public function pushParamFrame() : Void;
	
	/**
	* Pop the topmost parameter frame.
	*/
	@:overload @:public @:final public function popParamFrame() : Void;
	
	/**
	* Add a new global parameter if not already in the current frame.
	* To setParameters of the form {http://foo.bar}xyz
	* This needs to get mapped to an instance variable in the class
	* The mapping  created so that
	* the global variables in the generated class become
	* http$colon$$flash$$flash$foo$dot$bar$colon$xyz
	*/
	@:overload @:public @:final public function addParameter(name : String, value : Dynamic) : Dynamic;
	
	/**
	* Add a new global or local parameter if not already in the current frame.
	* The 'isDefault' parameter is set to true if the value passed is the
	* default value from the <xsl:parameter> element's select attribute or
	* element body.
	*/
	@:overload @:public @:final public function addParameter(name : String, value : Dynamic, isDefault : Bool) : Dynamic;
	
	/**
	* Clears the parameter stack.
	*/
	@:overload @:public public function clearParameters() : Void;
	
	/**
	* Get the value of a parameter from the current frame or
	* <tt>null</tt> if undefined.
	*/
	@:overload @:public @:final public function getParameter(name : String) : Dynamic;
	
	/**
	* Set the translet's message handler - must implement MessageHandler
	*/
	@:overload @:public @:final public function setMessageHandler(handler : com.sun.org.apache.xalan.internal.xsltc.runtime.MessageHandler) : Void;
	
	/**
	* Pass a message to the message handler - used by Message class.
	*/
	@:overload @:public @:final public function displayMessage(msg : String) : Void;
	
	/************************************************************************
	* Decimal number format symbol handling
	************************************************************************/
	@:public public var _formatSymbols : Hashtable;
	
	/**
	* Adds a DecimalFormat object to the _formatSymbols hashtable.
	* The entry is created with the input DecimalFormatSymbols.
	*/
	@:overload @:public public function addDecimalFormat(name : String, symbols : java.text.DecimalFormatSymbols) : Void;
	
	/**
	* Retrieves a named DecimalFormat object from _formatSymbols hashtable.
	*/
	@:overload @:public @:final public function getDecimalFormat(name : String) : java.text.DecimalFormat;
	
	/**
	* Give the translet an opportunity to perform a prepass on the document
	* to extract any information that it can store in an optimized form.
	*
	* Currently, it only extracts information about attributes of type ID.
	*/
	@:overload @:public @:final public function prepassDocument(document : com.sun.org.apache.xalan.internal.xsltc.DOM) : Void;
	
	/**
	* After constructing the translet object, this method must be called to
	* perform any version-specific post-initialization that's required.
	*/
	@:overload @:public @:final public function postInitialization() : Void;
	
	/**
	* This method is used to pass the largest DOM size to the translet.
	* Needed to make sure that the translet can index the whole DOM.
	*/
	@:overload @:public public function setIndexSize(size : Int) : Void;
	
	/**
	* Creates a KeyIndex object of the desired size - don't want to resize!!!
	*/
	@:overload @:public public function createKeyIndex() : com.sun.org.apache.xalan.internal.xsltc.dom.KeyIndex;
	
	/**
	* Adds a value to a key/id index
	*   @param name is the name of the index (the key or ##id)
	*   @param node is the node handle of the node to insert
	*   @param value is the value that will look up the node in the given index
	*/
	@:overload @:public public function buildKeyIndex(name : String, node : Int, value : Dynamic) : Void;
	
	/**
	* Create an empty KeyIndex in the DOM case
	*   @param name is the name of the index (the key or ##id)
	*   @param dom is the DOM
	*/
	@:overload @:public public function buildKeyIndex(name : String, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : Void;
	
	/**
	* Returns the index for a given key (or id).
	* The index implements our internal iterator interface
	*/
	@:overload @:public public function getKeyIndex(name : String) : com.sun.org.apache.xalan.internal.xsltc.dom.KeyIndex;
	
	/**
	* This method builds key indexes - it is overridden in the compiled
	* translet in cases where the <xsl:key> element is used
	*/
	@:overload @:public public function buildKeys(document : com.sun.org.apache.xalan.internal.xsltc.DOM, iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler, root : Int) : Void;
	
	/**
	* This method builds key indexes - it is overridden in the compiled
	* translet in cases where the <xsl:key> element is used
	*/
	@:overload @:public public function setKeyIndexDom(name : String, document : com.sun.org.apache.xalan.internal.xsltc.DOM) : Void;
	
	/**
	* Sets the DOM cache used for additional documents loaded using the
	* document() function.
	*/
	@:overload @:public public function setDOMCache(cache : com.sun.org.apache.xalan.internal.xsltc.DOMCache) : Void;
	
	/**
	* Returns the DOM cache used for this translet. Used by the LoadDocument
	* class (if present) when the document() function is used.
	*/
	@:overload @:public public function getDOMCache() : com.sun.org.apache.xalan.internal.xsltc.DOMCache;
	
	/************************************************************************
	* Multiple output document extension.
	* See compiler/TransletOutput for actual implementation.
	************************************************************************/
	@:overload @:public public function openOutputHandler(filename : String, append : Bool) : com.sun.org.apache.xml.internal.serializer.SerializationHandler;
	
	@:overload @:public public function openOutputHandler(filename : String) : com.sun.org.apache.xml.internal.serializer.SerializationHandler;
	
	@:overload @:public public function closeOutputHandler(handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	/**
	* Main transform() method - this is overridden by the compiled translet
	*/
	@:overload @:public @:abstract public function transform(document : com.sun.org.apache.xalan.internal.xsltc.DOM, iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	/**
	* Calls transform() with a given output handler
	*/
	@:overload @:public @:final public function transform(document : com.sun.org.apache.xalan.internal.xsltc.DOM, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	/**
	* Used by some compiled code as a shortcut for passing strings to the
	* output handler
	*/
	@:overload @:public @:final public function characters(string : String, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	/**
	* Add's a name of an element whose text contents should be output as CDATA
	*/
	@:overload @:public public function addCdataElement(name : String) : Void;
	
	/**
	* Transfer the output settings to the output post-processor
	*/
	@:overload @:protected private function transferOutputSettings(handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	@:overload @:public public function addAuxiliaryClass(auxClass : Class<Dynamic>) : Void;
	
	@:overload @:public public function setAuxiliaryClasses(auxClasses : Hashtable) : Void;
	
	@:overload @:public public function getAuxiliaryClass(className : String) : Class<Dynamic>;
	
	@:overload @:public public function getNamesArray() : java.NativeArray<String>;
	
	@:overload @:public public function getUrisArray() : java.NativeArray<String>;
	
	@:overload @:public public function getTypesArray() : java.NativeArray<Int>;
	
	@:overload @:public public function getNamespaceArray() : java.NativeArray<String>;
	
	@:overload @:public public function hasIdCall() : Bool;
	
	@:overload @:public public function getTemplates() : javax.xml.transform.Templates;
	
	@:overload @:public public function setTemplates(templates : javax.xml.transform.Templates) : Void;
	
	/**
	* Return the state of the services mechanism feature.
	*/
	@:overload @:public public function useServicesMechnism() : Bool;
	
	/**
	* Set the state of the services mechanism feature.
	*/
	@:overload @:public public function setServicesMechnism(flag : Bool) : Void;
	
	/************************************************************************
	* DOMImplementation caching for basis library
	************************************************************************/
	@:protected private var _domImplementation : org.w3c.dom.DOMImplementation;
	
	@:overload @:public public function newDocument(uri : String, qname : String) : org.w3c.dom.Document;
	
	@:overload @:public public function transform(document : com.sun.org.apache.xalan.internal.xsltc.DOM, handlers : java.NativeArray<com.sun.org.apache.xml.internal.serializer.SerializationHandler>) : Void;
	
	
}
