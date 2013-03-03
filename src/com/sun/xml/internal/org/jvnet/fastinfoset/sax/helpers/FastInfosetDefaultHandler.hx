package com.sun.xml.internal.org.jvnet.fastinfoset.sax.helpers;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
extern class FastInfosetDefaultHandler extends org.xml.sax.helpers.DefaultHandler implements org.xml.sax.ext.LexicalHandler implements com.sun.xml.internal.org.jvnet.fastinfoset.sax.EncodingAlgorithmContentHandler implements com.sun.xml.internal.org.jvnet.fastinfoset.sax.PrimitiveTypeContentHandler
{
	/**
	* Default base class for SAX event handlers of a {@link FastInfosetReader}.
	* <p>
	* This class is available as a convenience for applications: it provides
	* default implementations for all of the callbacks of the following:
	* <UL>
	*   <LI>{@link DefaultHandler}</LI>
	*   <LI>{@link LexicalHandler}</LI>
	*   <LI>{@link EncodingAlgorithmContentHandler}</LI>
	*   <LI>{@link PrimitiveTypeContentHandler}</LI>
	* </UL>
	* Application writers can extend this class when they need to implement only
	* part of an interface; parser writers can instantiate this class to provide
	* default handlers when the application has not supplied its own.
	*/
	@:overload @:public public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public public function startCDATA() : Void;
	
	@:overload @:public public function endCDATA() : Void;
	
	@:overload @:public public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	@:overload @:public public function endDTD() : Void;
	
	@:overload @:public public function startEntity(name : String) : Void;
	
	@:overload @:public public function endEntity(name : String) : Void;
	
	@:overload @:public public function octets(URI : String, algorithm : Int, b : java.NativeArray<java.StdTypes.Int8>, start : Int, length : Int) : Void;
	
	@:overload @:public public function object(URI : String, algorithm : Int, o : Dynamic) : Void;
	
	@:overload @:public public function booleans(b : java.NativeArray<Bool>, start : Int, length : Int) : Void;
	
	@:overload @:public public function bytes(b : java.NativeArray<java.StdTypes.Int8>, start : Int, length : Int) : Void;
	
	@:overload @:public public function shorts(s : java.NativeArray<java.StdTypes.Int16>, start : Int, length : Int) : Void;
	
	@:overload @:public public function ints(i : java.NativeArray<Int>, start : Int, length : Int) : Void;
	
	@:overload @:public public function longs(l : java.NativeArray<haxe.Int64>, start : Int, length : Int) : Void;
	
	@:overload @:public public function floats(f : java.NativeArray<Single>, start : Int, length : Int) : Void;
	
	@:overload @:public public function doubles(d : java.NativeArray<Float>, start : Int, length : Int) : Void;
	
	@:overload @:public public function uuids(msblsb : java.NativeArray<haxe.Int64>, start : Int, length : Int) : Void;
	
	
}
