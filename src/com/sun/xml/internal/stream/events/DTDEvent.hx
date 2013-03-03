package com.sun.xml.internal.stream.events;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class DTDEvent extends com.sun.xml.internal.stream.events.DummyEvent implements javax.xml.stream.events.DTD
{
	/** Creates a new instance of DTDEvent */
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(doctypeDeclaration : String) : Void;
	
	@:overload @:public public function setDocumentTypeDeclaration(doctypeDeclaration : String) : Void;
	
	@:overload @:public public function getDocumentTypeDeclaration() : String;
	
	@:overload @:public public function setEntities(entites : java.util.List<Dynamic>) : Void;
	
	@:overload @:public public function getEntities() : java.util.List<Dynamic>;
	
	@:overload @:public public function setNotations(notations : java.util.List<Dynamic>) : Void;
	
	@:overload @:public public function getNotations() : java.util.List<Dynamic>;
	
	/**
	*Returns an implementation defined representation of the DTD.
	* This method may return null if no representation is available.
	*
	*/
	@:overload @:public public function getProcessedDTD() : Dynamic;
	
	@:overload @:protected private function init() : Void;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:protected override private function writeAsEncodedUnicodeEx(writer : java.io.Writer) : Void;
	
	
}
