package com.sun.tools.internal.jxc.gen.config;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
extern class NGCCRuntime implements org.xml.sax.ContentHandler implements com.sun.tools.internal.jxc.gen.config.NGCCEventSource
{
	/**
	* Runtime Engine for RELAXNGCC execution.
	*
	* This class has the following functionalities:
	*
	* <ol>
	*  <li>Managing a stack of NGCCHandler objects and
	*      switching between them appropriately.
	*
	*  <li>Keep track of all Attributes.
	*
	*  <li>manage mapping between namespace URIs and prefixes.
	*
	*  <li>TODO: provide support for interleaving.
	*
	* @version $Id: NGCCRuntime.java,v 1.15 2002/09/29 02:55:48 okajima Exp $
	* @author Kohsuke Kawaguchi (kk@kohsuke.org)
	*/
	@:overload public function new() : Void;
	
	/**
	* Sets the root handler, which will be used to parse the
	* root element.
	* <p>
	* This method can be called right after the object is created
	* or the reset method is called. You can't replace the root
	* handler while parsing is in progress.
	* <p>
	* Usually a generated class that corresponds to the &lt;start>
	* pattern will be used as the root handler, but any NGCCHandler
	* can be a root handler.
	*
	* @exception IllegalStateException
	*      If this method is called but it doesn't satisfy the
	*      pre-condition stated above.
	*/
	@:overload public function setRootHandler(rootHandler : com.sun.tools.internal.jxc.gen.config.NGCCHandler) : Void;
	
	/**
	* Cleans up all the data structure so that the object can be reused later.
	* Normally, applications do not need to call this method directly,
	*
	* as the runtime resets itself after the endDocument method.
	*/
	@:overload public function reset() : Void;
	
	@:overload public function setDocumentLocator(_loc : org.xml.sax.Locator) : Void;
	
	/**
	* Gets the source location of the current event.
	*
	* <p>
	* One can call this method from RelaxNGCC handlers to access
	* the line number information. Note that to
	*/
	@:overload public function getLocator() : org.xml.sax.Locator;
	
	/**
	* Attributes that belong to the current element.
	* <p>
	* It's generally not recommended for applications to use
	* this method. RelaxNGCC internally removes processed attributes,
	* so this doesn't correctly reflect all the attributes an element
	* carries.
	*/
	@:overload public function getCurrentAttributes() : org.xml.sax.Attributes;
	
	@:overload public function replace(o : com.sun.tools.internal.jxc.gen.config.NGCCEventReceiver, n : com.sun.tools.internal.jxc.gen.config.NGCCEventReceiver) : Int;
	
	@:overload public function processList(str : String) : Void;
	
	@:overload public function startElement(uri : String, localname : String, qname : String, atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Called by the generated handler code when an enter element
	* event is consumed.
	*
	* <p>
	* Pushes a new attribute set.
	*
	* <p>
	* Note that attributes are NOT pushed at the startElement method,
	* because the processing of the enterElement event can trigger
	* other attribute events and etc.
	* <p>
	* This method will be called from one of handlers when it truely
	* consumes the enterElement event.
	*/
	@:overload public function onEnterElementConsumed(uri : String, localName : String, qname : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload public function onLeaveElementConsumed(uri : String, localName : String, qname : String) : Void;
	
	@:overload public function endElement(uri : String, localname : String, qname : String) : Void;
	
	@:overload public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function getAttributeIndex(uri : String, localname : String) : Int;
	
	@:overload public function consumeAttribute(index : Int) : Void;
	
	@:overload public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload public function endPrefixMapping(prefix : String) : Void;
	
	@:overload public function skippedEntity(name : String) : Void;
	
	@:overload public function processingInstruction(target : String, data : String) : Void;
	
	@:overload public function endDocument() : Void;
	
	@:overload public function startDocument() : Void;
	
	@:overload public function sendEnterAttribute(threadId : Int, uri : String, local : String, qname : String) : Void;
	
	@:overload public function sendEnterElement(threadId : Int, uri : String, local : String, qname : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload public function sendLeaveAttribute(threadId : Int, uri : String, local : String, qname : String) : Void;
	
	@:overload public function sendLeaveElement(threadId : Int, uri : String, local : String, qname : String) : Void;
	
	@:overload public function sendText(threadId : Int, value : String) : Void;
	
	/**
	* This method can be called only from the enterElement handler.
	* The sub-tree rooted at the new element will be redirected
	* to the specified ContentHandler.
	*
	* <p>
	* Currently active NGCCHandler will only receive the leaveElement
	* event of the newly started element.
	*
	* @param   uri,local,qname
	*      Parameters passed to the enter element event. Used to
	*      simulate the startElement event for the new ContentHandler.
	*/
	@:overload public function redirectSubtree(child : org.xml.sax.ContentHandler, uri : String, local : String, qname : String) : Void;
	
	@:overload public function resolveNamespacePrefix(prefix : String) : String;
	
	@:overload private function unexpectedX(token : String) : Void;
	
	//@:overload public function _trace(s : String) : Void;
	
	@:overload public function traceln(s : String) : Void;
	
	
}
