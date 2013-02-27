package com.sun.xml.internal.ws.server;
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
extern class ServiceDefinitionImpl implements com.sun.xml.internal.ws.api.server.ServiceDefinition implements com.sun.xml.internal.ws.wsdl.SDDocumentResolver
{
	/**
	* @param docs
	*      List of {@link SDDocumentImpl}s to form the description.
	*      There must be at least one entry.
	*      The first document is considered {@link #getPrimary() primary}.
	*/
	@:overload public function new(docs : java.util.List<com.sun.xml.internal.ws.server.SDDocumentImpl>, primaryWsdl : com.sun.xml.internal.ws.server.SDDocumentImpl) : Void;
	
	@:overload public function getPrimary() : com.sun.xml.internal.ws.api.server.SDDocument;
	
	@:overload public function addFilter(filter : com.sun.xml.internal.ws.api.server.SDDocumentFilter) : Void;
	
	@:overload public function iterator() : java.util.Iterator<com.sun.xml.internal.ws.api.server.SDDocument>;
	
	/**
	* Gets the {@link SDDocumentImpl} whose {@link SDDocumentImpl#getURL()}
	* returns the specified value.
	*
	* @return
	*      null if none is found.
	*/
	@:overload public function resolve(systemId : String) : com.sun.xml.internal.ws.api.server.SDDocument;
	
	
}
