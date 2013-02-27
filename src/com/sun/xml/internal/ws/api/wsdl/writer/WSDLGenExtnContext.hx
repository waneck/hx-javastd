package com.sun.xml.internal.ws.api.wsdl.writer;
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
extern class WSDLGenExtnContext
{
	/**
	* Constructs WSDL Generation context for the extensions
	*
	* @param root      This is the root element of the generated WSDL.
	* @param model     WSDL is being generated from this {@link SEIModel}.
	* @param binding   The binding for which we generate WSDL. the binding {@link WSBinding} represents a particular
	*                  configuration of JAXWS. This can be typically be overriden by
	* @param container The entry point to the external environment.
	*                  If this extension is used at the runtime to generate WSDL, you get a {@link Container}
	*                  that was given to {@link com.sun.xml.internal.ws.api.server.WSEndpoint#create}.
	*/
	@:overload public function new(root : com.sun.xml.internal.txw2.TypedXmlWriter, model : com.sun.xml.internal.ws.api.model.SEIModel, binding : com.sun.xml.internal.ws.api.WSBinding, container : com.sun.xml.internal.ws.api.server.Container, endpointClass : Class<Dynamic>) : Void;
	
	@:overload public function getRoot() : com.sun.xml.internal.txw2.TypedXmlWriter;
	
	@:overload public function getModel() : com.sun.xml.internal.ws.api.model.SEIModel;
	
	@:overload public function getBinding() : com.sun.xml.internal.ws.api.WSBinding;
	
	@:overload public function getContainer() : com.sun.xml.internal.ws.api.server.Container;
	
	@:overload public function getEndpointClass() : Class<Dynamic>;
	
	
}
