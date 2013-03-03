package com.sun.xml.internal.bind.v2.runtime.unmarshaller;
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
extern interface LocatorEx extends org.xml.sax.Locator
{
	/**
	* Gets the current location in a {@link ValidationEventLocator} object.
	*/
	@:overload public function getLocation() : javax.xml.bind.ValidationEventLocator;
	
	
}
/**
* Immutable snapshot of a {@link LocatorEx}
*/
@:native('com$sun$xml$internal$bind$v2$runtime$unmarshaller$LocatorEx$Snapshot') extern class LocatorEx_Snapshot implements com.sun.xml.internal.bind.v2.runtime.unmarshaller.LocatorEx implements javax.xml.bind.ValidationEventLocator
{
	@:overload @:public public function new(loc : com.sun.xml.internal.bind.v2.runtime.unmarshaller.LocatorEx) : Void;
	
	@:overload @:public public function getObject() : Dynamic;
	
	@:overload @:public public function getNode() : org.w3c.dom.Node;
	
	@:overload @:public public function getOffset() : Int;
	
	@:overload @:public public function getURL() : java.net.URL;
	
	@:overload @:public public function getColumnNumber() : Int;
	
	@:overload @:public public function getLineNumber() : Int;
	
	@:overload @:public public function getSystemId() : String;
	
	@:overload @:public public function getPublicId() : String;
	
	@:overload @:public public function getLocation() : javax.xml.bind.ValidationEventLocator;
	
	
}
