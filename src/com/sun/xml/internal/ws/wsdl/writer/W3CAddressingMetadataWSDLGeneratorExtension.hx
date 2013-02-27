package com.sun.xml.internal.ws.wsdl.writer;
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
extern class W3CAddressingMetadataWSDLGeneratorExtension extends com.sun.xml.internal.ws.api.wsdl.writer.WSDLGeneratorExtension
{
	/**
	* This extension class generates wsam:Action values for input, output and faults in the generated wsdl.
	*
	* @author Rama Pulavarthi
	*/
	@:overload override public function start(ctxt : com.sun.xml.internal.ws.api.wsdl.writer.WSDLGenExtnContext) : Void;
	
	@:overload override public function addOperationInputExtension(input : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod) : Void;
	
	@:overload override public function addOperationOutputExtension(output : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod) : Void;
	
	@:overload override public function addOperationFaultExtension(fault : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod, ce : com.sun.xml.internal.ws.api.model.CheckedException) : Void;
	
	@:overload @:final private static function getDefaultInputAction(method : com.sun.xml.internal.ws.api.model.JavaMethod) : String;
	
	@:overload @:final private static function getDefaultOutputAction(method : com.sun.xml.internal.ws.api.model.JavaMethod) : String;
	
	@:overload @:final private static function getDefaultFaultAction(method : com.sun.xml.internal.ws.api.model.JavaMethod, ce : com.sun.xml.internal.ws.api.model.CheckedException) : String;
	
	
}
