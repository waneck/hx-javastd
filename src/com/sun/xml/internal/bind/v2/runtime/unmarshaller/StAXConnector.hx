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
@:internal extern class StAXConnector
{
	/**
	* @author Kohsuke Kawaguchi
	*/
	@:overload @:abstract public function bridge() : Void;
	
	private var visitor(default, null) : com.sun.xml.internal.bind.v2.runtime.unmarshaller.XmlVisitor;
	
	private var context(default, null) : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext;
	
	private var predictor(default, null) : com.sun.xml.internal.bind.v2.runtime.unmarshaller.XmlVisitor.XmlVisitor_TextPredictor;
	
	private var tagName(default, null) : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName;
	
	@:overload private function new(visitor : com.sun.xml.internal.bind.v2.runtime.unmarshaller.XmlVisitor) : Void;
	
	/**
	* Gets the {@link Location}. Used for implementing the line number information.
	* @return must not null.
	*/
	@:overload @:abstract private function getCurrentLocation() : javax.xml.stream.Location;
	
	/**
	* Gets the QName of the current element.
	*/
	@:overload @:abstract private function getCurrentQName() : String;
	
	@:overload @:final private function handleStartDocument(nsc : javax.xml.namespace.NamespaceContext) : Void;
	
	@:overload @:final private function handleEndDocument() : Void;
	
	@:overload private static function fixNull(s : String) : String;
	
	@:overload @:final private function getQName(prefix : String, localName : String) : String;
	
	
}
@:native('com$sun$xml$internal$bind$v2$runtime$unmarshaller$StAXConnector$TagNameImpl') @:internal extern class StAXConnector_TagNameImpl extends com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName
{
	@:overload override public function getQname() : String;
	
	
}
