package com.sun.xml.internal.ws.developer;
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
extern class UsesJAXBContextFeature extends javax.xml.ws.WebServiceFeature
{
	/**
	* Constant value identifying the {@link UsesJAXBContext} feature.
	*/
	@:public @:static @:final public static var ID(default, null) : String;
	
	/**
	* Creates {@link UsesJAXBContextFeature}.
	*
	* @param factoryClass
	*      This class has to have a public no-arg constructor, which will be invoked to create
	*      a new instance. {@link JAXBContextFactory#createJAXBContext(SEIModel, List, List)} will
	*      be then called to create {@link JAXBContext}.
	*/
	@:overload @:public public function new(factoryClass : Class<com.sun.xml.internal.ws.developer.JAXBContextFactory>) : Void;
	
	/**
	* Creates {@link UsesJAXBContextFeature}.
	* This version allows {@link JAXBContextFactory} to carry application specific state.
	*
	* @param factory
	*      Uses a specific instance of {@link JAXBContextFactory} to create {@link JAXBContext}.
	*/
	@:overload @:public public function new(factory : com.sun.xml.internal.ws.developer.JAXBContextFactory) : Void;
	
	/**
	* Creates {@link UsesJAXBContextFeature}.
	* This version allows you to create {@link JAXBRIContext} upfront and uses it.
	*/
	@:overload @:public public function new(context : com.sun.xml.internal.bind.api.JAXBRIContext) : Void;
	
	/**
	* Gets the {@link JAXBContextFactory} instance to be used for creating {@link JAXBContext} for SEI.
	*
	* @return
	*      null if the default {@link JAXBContext} shall be used.
	*/
	@:overload @:public public function getFactory() : com.sun.xml.internal.ws.developer.JAXBContextFactory;
	
	@:overload @:public override public function getID() : String;
	
	
}
