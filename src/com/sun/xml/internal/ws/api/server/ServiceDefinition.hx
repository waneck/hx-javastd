package com.sun.xml.internal.ws.api.server;
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
extern interface ServiceDefinition extends java.lang.Iterable<com.sun.xml.internal.ws.api.server.SDDocument>
{
	/**
	* Gets the "primary" {@link SDDocument} that represents a WSDL.
	*
	* <p>
	* This WSDL eventually refers to all the other {@link SDDocument}s.
	*
	* @return
	*      always non-null.
	*/
	@:overload public function getPrimary() : com.sun.xml.internal.ws.api.server.SDDocument;
	
	/**
	* Adds a filter that is called while writing {@link SDDocument}'s infoset. This
	* filter is applied to the all the other reachable {@link SDDocument}s.
	*
	* @param filter that is called while writing the document
	*/
	@:overload public function addFilter(filter : com.sun.xml.internal.ws.api.server.SDDocumentFilter) : Void;
	
	
}
