package com.sun.tools.internal.ws.processor.modeler.annotation;
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
extern class FaultInfo
{
	/**
	*
	* @author  dkohlert
	*/
	public var beanName : String;
	
	public var beanTypeMoniker : com.sun.tools.internal.ws.processor.modeler.annotation.TypeMoniker;
	
	public var elementName : javax.xml.namespace.QName;
	
	/** Creates a new instance of FaultInfo */
	@:overload public function new() : Void;
	
	@:overload public function new(beanName : String) : Void;
	
	@:overload public function new(beanName : String, isWSDLException : Bool) : Void;
	
	@:overload public function new(typeMoniker : com.sun.tools.internal.ws.processor.modeler.annotation.TypeMoniker, isWSDLException : Bool) : Void;
	
	@:overload public function setIsWSDLException(isWSDLException : Bool) : Void;
	
	@:overload public function isWSDLException() : Bool;
	
	@:overload public function setBeanName(beanName : String) : Void;
	
	@:overload public function getBeanName() : String;
	
	@:overload public function setElementName(elementName : javax.xml.namespace.QName) : Void;
	
	@:overload public function getElementName() : javax.xml.namespace.QName;
	
	@:overload public function setBeanTypeMoniker(typeMoniker : com.sun.tools.internal.ws.processor.modeler.annotation.TypeMoniker) : Void;
	
	@:overload public function getBeanTypeMoniker() : com.sun.tools.internal.ws.processor.modeler.annotation.TypeMoniker;
	
	
}
