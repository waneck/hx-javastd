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
extern class StartDocumentEvent extends com.sun.xml.internal.stream.events.DummyEvent implements javax.xml.stream.events.StartDocument
{
	/** Implementation of StartDocumentEvent.
	*
	* @author Neeraj Bajaj Sun Microsystems,Inc.
	* @author K.Venugopal Sun Microsystems,Inc.
	*
	*/
	private var fSystemId : String;
	
	private var fEncodingScheam : String;
	
	private var fStandalone : Bool;
	
	private var fVersion : String;
	
	@:overload public function new() : Void;
	
	@:overload public function new(encoding : String) : Void;
	
	@:overload public function new(encoding : String, version : String) : Void;
	
	@:overload public function new(encoding : String, version : String, standalone : Bool) : Void;
	
	@:overload public function new(encoding : String, version : String, standalone : Bool, loc : javax.xml.stream.Location) : Void;
	
	@:overload private function init(encoding : String, version : String, standalone : Bool, loc : javax.xml.stream.Location) : Void;
	
	@:overload public function getSystemId() : String;
	
	@:overload public function getCharacterEncodingScheme() : String;
	
	@:overload public function isStandalone() : Bool;
	
	@:overload public function getVersion() : String;
	
	@:overload public function setStandalone(flag : Bool) : Void;
	
	@:overload public function setStandalone(s : String) : Void;
	
	@:overload public function encodingSet() : Bool;
	
	@:overload public function standaloneSet() : Bool;
	
	@:overload public function setEncoding(encoding : String) : Void;
	
	@:overload public function setVersion(s : String) : Void;
	
	@:overload public function toString() : String;
	
	@:overload public function isStartDocument() : Bool;
	
	@:overload private function writeAsEncodedUnicodeEx(writer : java.io.Writer) : Void;
	
	
}
