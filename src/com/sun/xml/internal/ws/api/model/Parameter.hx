package com.sun.xml.internal.ws.api.model;
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
extern interface Parameter
{
	/**
	* Gets the root {@link SEIModel} that owns this model.
	*/
	@:overload public function getOwner() : com.sun.xml.internal.ws.api.model.SEIModel;
	
	/**
	* Gets the parent {@link JavaMethod} to which this parameter belongs.
	*/
	@:overload public function getParent() : com.sun.xml.internal.ws.api.model.JavaMethod;
	
	/**
	* @return Returns the {@link QName} of the payload/infoset of a SOAP body or header.
	*/
	@:overload public function getName() : javax.xml.namespace.QName;
	
	/**
	* Gives the {@link Bridge} associated with this Parameter
	*/
	@:overload public function getBridge() : com.sun.xml.internal.bind.api.Bridge<Dynamic>;
	
	/**
	* @return Returns the mode, such as IN, OUT or INOUT.
	*/
	@:overload public function getMode() : Mode;
	
	/**
	* Position of a parameter in the method signature. It would be -1 if the parameter is a return.
	*
	* @return Returns the index.
	*/
	@:overload public function getIndex() : Int;
	
	/**
	* @return true if <tt>this instanceof {@link com.sun.xml.internal.ws.model.WrapperParameter}</tt>.
	*/
	@:overload public function isWrapperStyle() : Bool;
	
	/**
	* Returns true if this parameter is bound to the return value from the {@link JavaMethod}.
	*
	* <p>
	* Just the convenience method for <tt>getIndex()==-1</tt>
	*/
	@:overload public function isReturnValue() : Bool;
	
	/**
	* Returns the binding associated with the parameter. For IN parameter the binding will be
	* same as {@link #getInBinding()}, for OUT parameter the binding will be same as
	* {@link #getOutBinding()} and for INOUT parameter the binding will be same as calling
	* {@link #getInBinding()}
	*
	* @return the Binding for this Parameter. Returns {@link ParameterBinding#BODY} by default.
	*/
	@:overload public function getBinding() : com.sun.xml.internal.ws.api.model.ParameterBinding;
	
	/**
	* Returns the {@link ParameterBinding} associated with the IN mode
	*
	* @return the binding
	*/
	@:overload public function getInBinding() : com.sun.xml.internal.ws.api.model.ParameterBinding;
	
	/**
	* Returns the {@link ParameterBinding} associated with the OUT mode
	*
	* @return the binding
	*/
	@:overload public function getOutBinding() : com.sun.xml.internal.ws.api.model.ParameterBinding;
	
	/**
	* @return true if the {@link Mode} associated with the parameter is {@link Mode#IN} and false otherwise.
	*/
	@:overload public function isIN() : Bool;
	
	/**
	* @return true if the {@link Mode} associated with the parameter is {@link Mode#OUT} and false otherwise.
	*/
	@:overload public function isOUT() : Bool;
	
	/**
	* @return true if the {@link Mode} associated with the parameter is {@link Mode#INOUT} and false otherwise.
	*/
	@:overload public function isINOUT() : Bool;
	
	/**
	* If true, this parameter maps to the return value of a method invocation.
	*
	* <p>
	* {@link JavaMethod#getResponseParameters()} is guaranteed to have
	* at most one such {@link Parameter}. Note that there coule be none,
	* in which case the method returns <tt>void</tt>.
	*
	* <p>
	* Other response parameters are bound to {@link Holder}.
	*/
	@:overload public function isResponse() : Bool;
	
	/**
	* Gets the holder value if applicable. To be called for inbound client side
	* message.
	*
	* @param obj
	* @return the holder value if applicable.
	*/
	@:overload public function getHolderValue(obj : Dynamic) : Dynamic;
	
	/**
	* Gives the wsdl:part@name value
	*
	* @return Value of {@link WebParam#partName()} annotation if present,
	*         otherwise its the localname of the infoset associated with the parameter
	*/
	@:overload public function getPartName() : String;
	
	
}
