package com.sun.xml.internal.messaging.saaj.soap.ver1_2;
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
/**
*
* @author SAAJ RI Development Team
*/
extern class Detail1_2Impl extends com.sun.xml.internal.messaging.saaj.soap.impl.DetailImpl
{
	@:protected @:static @:final private static var log(default, null) : java.util.logging.Logger;
	
	@:overload @:public public function new(ownerDocument : com.sun.xml.internal.messaging.saaj.soap.SOAPDocumentImpl, prefix : String) : Void;
	
	@:overload @:public public function new(ownerDocument : com.sun.xml.internal.messaging.saaj.soap.SOAPDocumentImpl) : Void;
	
	@:overload @:protected override private function createDetailEntry(name : javax.xml.soap.Name) : javax.xml.soap.DetailEntry;
	
	@:overload @:protected override private function createDetailEntry(name : javax.xml.namespace.QName) : javax.xml.soap.DetailEntry;
	
	/*
	* Override setEncodingStyle of ElementImpl to restrict adding encodingStyle
	* attribute to SOAP Detail (SOAP 1.2 spec, part 1, section 5.1.1)
	*/
	@:overload @:public override public function setEncodingStyle(encodingStyle : String) : Void;
	
	@:overload @:public override public function addAttribute(name : javax.xml.soap.Name, value : String) : javax.xml.soap.SOAPElement;
	
	@:overload @:public override public function addAttribute(name : javax.xml.namespace.QName, value : String) : javax.xml.soap.SOAPElement;
	
	
}
