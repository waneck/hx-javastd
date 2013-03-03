package com.sun.org.apache.xml.internal.utils;
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
* $Id: NSInfo.java,v 1.2.4.1 2005/09/15 08:15:48 suresh_emailid Exp $
*/
/**
* This class holds information about the namespace info
* of a node.  It is used to optimize namespace lookup in
* a generic DOM.
* @xsl.usage internal
*/
extern class NSInfo
{
	/**
	* Constructor NSInfo
	*
	*
	* @param hasProcessedNS Flag indicating whether namespaces
	* have been processed for this node
	* @param hasXMLNSAttrs Flag indicating whether this node
	* has XMLNS attributes.
	*/
	@:overload @:public public function new(hasProcessedNS : Bool, hasXMLNSAttrs : Bool) : Void;
	
	/**
	* Constructor NSInfo
	*
	*
	* @param hasProcessedNS Flag indicating whether namespaces
	* have been processed for this node
	* @param hasXMLNSAttrs Flag indicating whether this node
	* has XMLNS attributes.
	* @param ancestorHasXMLNSAttrs Flag indicating whether one of this node's
	* ancestor has XMLNS attributes.
	*/
	@:overload @:public public function new(hasProcessedNS : Bool, hasXMLNSAttrs : Bool, ancestorHasXMLNSAttrs : Int) : Void;
	
	/**
	* Constructor NSInfo
	*
	*
	* @param namespace The namespace URI
	* @param hasXMLNSAttrs Flag indicating whether this node
	* has XMLNS attributes.
	*/
	@:overload @:public public function new(namespace : String, hasXMLNSAttrs : Bool) : Void;
	
	/** The namespace URI          */
	@:public public var m_namespace : String;
	
	/** Flag indicating whether this node has an XMLNS attribute          */
	@:public public var m_hasXMLNSAttrs : Bool;
	
	/** Flag indicating whether namespaces have been processed for this node */
	@:public public var m_hasProcessedNS : Bool;
	
	/** Flag indicating whether one of this node's ancestor has an XMLNS attribute          */
	@:public public var m_ancestorHasXMLNSAttrs : Int;
	
	/** Constant for ancestors XMLNS atributes not processed          */
	@:public @:static @:final public static var ANCESTORXMLNSUNPROCESSED(default, null) : Int;
	
	/** Constant indicating an ancestor has an XMLNS attribute           */
	@:public @:static @:final public static var ANCESTORHASXMLNS(default, null) : Int;
	
	/** Constant indicating ancestors don't have an XMLNS attribute           */
	@:public @:static @:final public static var ANCESTORNOXMLNS(default, null) : Int;
	
	
}
