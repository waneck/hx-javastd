package com.sun.org.apache.xerces.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
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
extern class DocumentTypeImpl extends com.sun.org.apache.xerces.internal.dom.ParentNode implements org.w3c.dom.DocumentType
{
	/** Document type name. */
	@:protected private var name : String;
	
	/** Entities. */
	@:protected private var entities : com.sun.org.apache.xerces.internal.dom.NamedNodeMapImpl;
	
	/** Notations. */
	@:protected private var notations : com.sun.org.apache.xerces.internal.dom.NamedNodeMapImpl;
	
	/** Elements. */
	@:protected private var elements : com.sun.org.apache.xerces.internal.dom.NamedNodeMapImpl;
	
	@:protected private var publicID : String;
	
	@:protected private var systemID : String;
	
	@:protected private var internalSubset : String;
	
	/** Factory method for creating a document type node. */
	@:overload @:public public function new(ownerDocument : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, name : String) : Void;
	
	/** Factory method for creating a document type node. */
	@:overload @:public public function new(ownerDocument : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, qualifiedName : String, publicID : String, systemID : String) : Void;
	
	/**
	* Introduced in DOM Level 2. <p>
	*
	* Return the public identifier of this Document type.
	* @since WD-DOM-Level-2-19990923
	*/
	@:overload @:public public function getPublicId() : String;
	
	/**
	* Introduced in DOM Level 2. <p>
	*
	* Return the system identifier of this Document type.
	* @since WD-DOM-Level-2-19990923
	*/
	@:overload @:public public function getSystemId() : String;
	
	/**
	* NON-DOM. <p>
	*
	* Set the internalSubset given as a string.
	*/
	@:overload @:public public function setInternalSubset(internalSubset : String) : Void;
	
	/**
	* Introduced in DOM Level 2. <p>
	*
	* Return the internalSubset given as a string.
	* @since WD-DOM-Level-2-19990923
	*/
	@:overload @:public public function getInternalSubset() : String;
	
	/**
	* A short integer indicating what type of node this is. The named
	* constants for this value are defined in the org.w3c.dom.Node interface.
	*/
	@:overload @:public override public function getNodeType() : java.StdTypes.Int16;
	
	/**
	* Returns the document type name
	*/
	@:overload @:public override public function getNodeName() : String;
	
	/** Clones the node. */
	@:overload @:public override public function cloneNode(deep : Bool) : org.w3c.dom.Node;
	
	/*
	* Get Node text content
	* @since DOM Level 3
	*/
	@:overload @:public override public function getTextContent() : String;
	
	/*
	* Set Node text content
	* @since DOM Level 3
	*/
	@:overload @:public override public function setTextContent(textContent : String) : Void;
	
	/**
	* DOM Level 3 WD- Experimental.
	* Override inherited behavior from ParentNodeImpl to support deep equal.
	*/
	@:overload @:public override public function isEqualNode(arg : org.w3c.dom.Node) : Bool;
	
	/** NON-DOM
	Get the number associated with this doctype.
	*/
	@:overload @:protected override private function getNodeNumber() : Int;
	
	/**
	* Name of this document type. If we loaded from a DTD, this should
	* be the name immediately following the DOCTYPE keyword.
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Access the collection of general Entities, both external and
	* internal, defined in the DTD. For example, in:
	* <p>
	* <pre>
	*   &lt;!doctype example SYSTEM "ex.dtd" [
	*     &lt;!ENTITY foo "foo"&gt;
	*     &lt;!ENTITY bar "bar"&gt;
	*     &lt;!ENTITY % baz "baz"&gt;
	*     ]&gt;
	* </pre>
	* <p>
	* The Entities map includes foo and bar, but not baz. It is promised that
	* only Nodes which are Entities will exist in this NamedNodeMap.
	* <p>
	* For HTML, this will always be null.
	* <p>
	* Note that "built in" entities such as &amp; and &lt; should be
	* converted to their actual characters before being placed in the DOM's
	* contained text, and should be converted back when the DOM is rendered
	* as XML or HTML, and hence DO NOT appear here.
	*/
	@:overload @:public public function getEntities() : org.w3c.dom.NamedNodeMap;
	
	/**
	* Access the collection of Notations defined in the DTD.  A
	* notation declares, by name, the format of an XML unparsed entity
	* or is used to formally declare a Processing Instruction target.
	*/
	@:overload @:public public function getNotations() : org.w3c.dom.NamedNodeMap;
	
	/**
	* NON-DOM: Subclassed to flip the entities' and notations' readonly switch
	* as well.
	* @see NodeImpl#setReadOnly
	*/
	@:overload @:public override public function setReadOnly(readOnly : Bool, deep : Bool) : Void;
	
	/**
	* NON-DOM: Access the collection of ElementDefinitions.
	* @see ElementDefinitionImpl
	*/
	@:overload @:public public function getElements() : org.w3c.dom.NamedNodeMap;
	
	@:overload @:public override public function setUserData(key : String, data : Dynamic, handler : org.w3c.dom.UserDataHandler) : Dynamic;
	
	@:overload @:public override public function getUserData(key : String) : Dynamic;
	
	@:overload @:protected override private function getUserDataRecord() : java.util.Hashtable<Dynamic, Dynamic>;
	
	
}
