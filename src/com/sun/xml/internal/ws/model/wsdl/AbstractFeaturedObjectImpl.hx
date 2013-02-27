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
@:internal extern class AbstractFeaturedObjectImpl extends com.sun.xml.internal.ws.model.wsdl.AbstractExtensibleImpl implements com.sun.xml.internal.ws.api.model.wsdl.WSDLFeaturedObject
{
	/**
	* @author Kohsuke Kawaguchi
	*/
	private var features : com.sun.xml.internal.ws.binding.WebServiceFeatureList;
	
	@:overload private function new(xsr : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload private function new(systemId : String, lineNumber : Int) : Void;
	
	@:overload @:final public function addFeature(feature : javax.xml.ws.WebServiceFeature) : Void;
	
	@:overload public function getFeatures() : com.sun.xml.internal.ws.binding.WebServiceFeatureList;
	
	@:overload @:final public function getFeature(id : String) : javax.xml.ws.WebServiceFeature;
	
	@:overload public function getFeature<F : javax.xml.ws.WebServiceFeature>(featureType : Class<F>) : F;
	
	/**
	* Gets the source location information in the parsed WSDL.
	*
	* This is useful when producing error messages.
	*/
	@:overload override public function getLocation() : org.xml.sax.Locator;
	
	
}
