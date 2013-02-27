package com.sun.xml.internal.bind.v2.runtime.output;
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
extern class C14nXmlOutput extends com.sun.xml.internal.bind.v2.runtime.output.UTF8XmlOutput
{
	/**
	* {@link XmlOutput} that generates canonical XML.
	*
	* @see com.sun.xml.internal.bind.api.C14nSupport_ArchitectureDocument
	* @author Kohsuke Kawaguchi
	*/
	@:overload public function new(out : java.io.OutputStream, localNames : java.NativeArray<com.sun.xml.internal.bind.v2.runtime.output.Encoded>, namedAttributesAreOrdered : Bool, escapeHandler : com.sun.xml.internal.bind.marshaller.CharacterEscapeHandler) : Void;
	
	@:overload override public function attribute(name : com.sun.xml.internal.bind.v2.runtime.Name, value : String) : Void;
	
	@:overload override public function attribute(prefix : Int, localName : String, value : String) : Void;
	
	@:overload override public function endStartTag() : Void;
	
	/**
	* Write namespace declarations after sorting them.
	*/
	@:overload override private function writeNsDecls(base : Int) : Void;
	
	
}
@:native('com$sun$xml$internal$bind$v2$runtime$output$C14nXmlOutput$StaticAttribute') @:internal extern class C14nXmlOutput_StaticAttribute implements java.lang.Comparable<C14nXmlOutput_StaticAttribute>
{
	@:overload public function set(name : com.sun.xml.internal.bind.v2.runtime.Name, value : String) : Void;
	
	@:overload public function compareTo(that : C14nXmlOutput_StaticAttribute) : Int;
	
	
}
@:native('com$sun$xml$internal$bind$v2$runtime$output$C14nXmlOutput$DynamicAttribute') @:internal extern class C14nXmlOutput_DynamicAttribute implements java.lang.Comparable<C14nXmlOutput_DynamicAttribute>
{
	@:overload public function new(prefix : Int, localName : String, value : String) : Void;
	
	@:overload public function compareTo(that : C14nXmlOutput_DynamicAttribute) : Int;
	
	
}
