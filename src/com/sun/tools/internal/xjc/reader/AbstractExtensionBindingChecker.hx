package com.sun.tools.internal.xjc.reader;
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
extern class AbstractExtensionBindingChecker extends com.sun.tools.internal.xjc.util.SubtreeCutter
{
	/** Remembers in-scope namespace bindings. */
	@:protected @:final private var nsSupport(default, null) : org.xml.sax.helpers.NamespaceSupport;
	
	/**
	* Set of namespace URIs that designates enabled extensions.
	*/
	@:protected @:final private var enabledExtensions(default, null) : java.util.Set<String>;
	
	/**
	* Namespace URI of the target schema language. Elements in this
	* namespace are always allowed.
	*/
	@:protected @:final private var schemaLanguage(default, null) : String;
	
	/**
	* If false, any use of extensions is reported as an error.
	*/
	@:protected @:final private var allowExtensions(default, null) : Bool;
	
	/**
	* @param handler
	*      This error handler will receive detected errors.
	*/
	@:overload @:public public function new(schemaLanguage : String, options : com.sun.tools.internal.xjc.Options, handler : org.xml.sax.ErrorHandler) : Void;
	
	/**
	* Verify that the given URI is indeed a valid extension namespace URI,
	* and if so enable it.
	* <p>
	* This method does all the error handling.
	*/
	@:overload @:protected @:final private function checkAndEnable(uri : String) : Void;
	
	/**
	* If the tag name belongs to a plugin namespace-wise, check its local name
	* to make sure it's correct.
	*/
	@:overload @:protected @:final private function verifyTagName(namespaceURI : String, localName : String, qName : String) : Void;
	
	/**
	* Checks if the given namespace URI is supported as the extension
	* bindings.
	*/
	@:overload @:protected @:final private function isSupportedExtension(namespaceUri : String) : Bool;
	
	/**
	* Checks if the given namespace URI can be potentially recognized
	* by this XJC.
	*/
	@:overload @:protected @:final private function isRecognizableExtension(namespaceUri : String) : Bool;
	
	@:overload @:public override public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	@:overload @:public override public function startDocument() : Void;
	
	@:overload @:public override public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload @:public override public function endPrefixMapping(prefix : String) : Void;
	
	/**
	* Reports an error and returns the created SAXParseException
	*/
	@:overload @:protected @:final private function error(msg : String) : org.xml.sax.SAXParseException;
	
	/**
	* Reports a warning.
	*/
	@:overload @:protected @:final private function warning(msg : String) : Void;
	
	
}
