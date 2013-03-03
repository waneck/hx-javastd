package com.sun.xml.internal.ws.model.wsdl;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class AbstractExtensibleImpl extends com.sun.xml.internal.ws.model.wsdl.AbstractObjectImpl implements com.sun.xml.internal.ws.api.model.wsdl.WSDLExtensible
{
	/**
	* All the WSDL 1.1 elements that are extensible should subclass from this abstract implementation of
	* {@link WSDLExtensible} interface.
	*
	* @author Vivek Pandey
	* @author Kohsuke Kawaguchi
	*/
	@:protected @:final private var extensions(default, null) : java.util.Set<com.sun.xml.internal.ws.api.model.wsdl.WSDLExtension>;
	
	@:protected private var notUnderstoodExtensions : java.util.List<com.sun.xml.internal.ws.model.wsdl.AbstractExtensibleImpl.AbstractExtensibleImpl_UnknownWSDLExtension>;
	
	@:overload @:protected private function new(xsr : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload @:protected private function new(systemId : String, lineNumber : Int) : Void;
	
	@:overload @:public @:final public function getExtensions() : java.lang.Iterable<com.sun.xml.internal.ws.api.model.wsdl.WSDLExtension>;
	
	@:overload @:public @:final public function getExtensions<T : com.sun.xml.internal.ws.api.model.wsdl.WSDLExtension>(type : Class<T>) : java.lang.Iterable<T>;
	
	@:overload @:public public function getExtension<T : com.sun.xml.internal.ws.api.model.wsdl.WSDLExtension>(type : Class<T>) : T;
	
	@:overload @:public public function addExtension(ex : com.sun.xml.internal.ws.api.model.wsdl.WSDLExtension) : Void;
	
	/**
	* This can be used if a WSDL extension element that has wsdl:required=true
	* is not understood
	* @param extnEl
	* @param locator
	*/
	@:overload @:public public function addNotUnderstoodExtension(extnEl : javax.xml.namespace.QName, locator : org.xml.sax.Locator) : Void;
	
	/**
	* This method should be called after freezing the WSDLModel
	* @return true if all wsdl required extensions on Port and Binding are understood
	*/
	@:overload @:public public function areRequiredExtensionsUnderstood() : Bool;
	
	/**
	* Gets the source location information in the parsed WSDL.
	*
	* This is useful when producing error messages.
	*/
	@:overload @:public override public function getLocation() : org.xml.sax.Locator;
	
	
}
@:native('com$sun$xml$internal$ws$model$wsdl$AbstractExtensibleImpl$UnknownWSDLExtension') extern class AbstractExtensibleImpl_UnknownWSDLExtension implements com.sun.xml.internal.ws.api.model.wsdl.WSDLExtension implements com.sun.xml.internal.ws.api.model.wsdl.WSDLObject
{
	@:overload @:public public function new(extnEl : javax.xml.namespace.QName, locator : org.xml.sax.Locator) : Void;
	
	@:overload @:public public function getName() : javax.xml.namespace.QName;
	
	@:overload @:public public function getLocation() : org.xml.sax.Locator;
	
	@:overload @:public public function toString() : String;
	
	
}
