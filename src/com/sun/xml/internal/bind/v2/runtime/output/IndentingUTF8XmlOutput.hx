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
extern class IndentingUTF8XmlOutput extends com.sun.xml.internal.bind.v2.runtime.output.UTF8XmlOutput
{
	/**
	*
	* @param indentStr
	*      set to null for no indentation and optimal performance.
	*      otherwise the string is used for indentation.
	*/
	@:overload @:public public function new(out : java.io.OutputStream, indentStr : String, localNames : java.NativeArray<com.sun.xml.internal.bind.v2.runtime.output.Encoded>, escapeHandler : com.sun.xml.internal.bind.marshaller.CharacterEscapeHandler) : Void;
	
	@:overload @:public override public function beginStartTag(prefix : Int, localName : String) : Void;
	
	@:overload @:public override public function beginStartTag(name : com.sun.xml.internal.bind.v2.runtime.Name) : Void;
	
	@:overload @:public override public function endTag(name : com.sun.xml.internal.bind.v2.runtime.Name) : Void;
	
	@:overload @:public override public function endTag(prefix : Int, localName : String) : Void;
	
	@:overload @:public override public function text(value : String, needSP : Bool) : Void;
	
	@:overload @:public override public function text(value : com.sun.xml.internal.bind.v2.runtime.output.Pcdata, needSP : Bool) : Void;
	
	@:overload @:public override public function endDocument(fragment : Bool) : Void;
	
	
}
