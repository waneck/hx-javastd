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
extern class XMLStreamWriterOutput extends com.sun.xml.internal.bind.v2.runtime.output.XmlOutputAbstractImpl
{
	/**
	* Creates a new {@link XmlOutput} from a {@link XMLStreamWriter}.
	* This method recognizes an FI StAX writer.
	*/
	@:overload @:public @:static public static function create(out : javax.xml.stream.XMLStreamWriter, context : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl) : com.sun.xml.internal.bind.v2.runtime.output.XmlOutput;
	
	@:protected @:final private var buf(default, null) : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload @:protected private function new(out : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload @:public override public function startDocument(serializer : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, fragment : Bool, nsUriIndex2prefixIndex : java.NativeArray<Int>, nsContext : com.sun.xml.internal.bind.v2.runtime.output.NamespaceContextImpl) : Void;
	
	@:overload @:public override public function endDocument(fragment : Bool) : Void;
	
	@:overload @:public override public function beginStartTag(prefix : Int, localName : String) : Void;
	
	@:overload @:public override public function attribute(prefix : Int, localName : String, value : String) : Void;
	
	@:overload @:public override public function endStartTag() : Void;
	
	@:overload @:public override public function endTag(prefix : Int, localName : String) : Void;
	
	@:overload @:public override public function text(value : String, needsSeparatingWhitespace : Bool) : Void;
	
	@:overload @:public override public function text(value : com.sun.xml.internal.bind.v2.runtime.output.Pcdata, needsSeparatingWhitespace : Bool) : Void;
	
	
}
