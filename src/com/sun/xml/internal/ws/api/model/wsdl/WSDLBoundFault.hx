package com.sun.xml.internal.ws.api.model.wsdl;
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
extern interface WSDLBoundFault extends com.sun.xml.internal.ws.api.model.wsdl.WSDLObject extends com.sun.xml.internal.ws.api.model.wsdl.WSDLExtensible
{
	/**
	* Gives the wsdl:binding/wsdl:operation/wsdl:fault@name value
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Gives the qualified name associated with the fault. the namespace URI of the bounded fault
	* will be the one derived from wsdl:portType namespace.
	*
	* Maybe null if this method is called before the model is completely build (frozen), if a binding fault has no
	* corresponding fault in abstractwsdl:portType/wsdl:operation then the namespace URI of the fault will be that of
	* the WSDBoundPortType.
	*/
	@:overload @:public public function getQName() : javax.xml.namespace.QName;
	
	/**
	* Gives the associated abstract fault from
	* wsdl:portType/wsdl:operation/wsdl:fault. It is only available after
	* the WSDL parsing is complete and the entire model is frozen.
	* <p/>
	* Maybe null if a binding fault has no corresponding fault in abstract
	* wsdl:portType/wsdl:operation
	*/
	@:overload @:public public function getFault() : com.sun.xml.internal.ws.api.model.wsdl.WSDLFault;
	
	/**
	* Gives the owner {@link WSDLBoundOperation}
	*/
	@:overload public function getBoundOperation() : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation;
	
	
}
