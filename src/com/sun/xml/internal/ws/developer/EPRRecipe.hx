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
extern class EPRRecipe
{
	/**
	* Gets all the reference parameters added so far.
	*/
	@:overload public function getReferenceParameters() : java.util.List<com.sun.xml.internal.ws.api.message.Header>;
	
	/**
	* Gets all the metadata added so far.
	*/
	@:overload public function getMetadata() : java.util.List<javax.xml.transform.Source>;
	
	/**
	* Adds a new reference parameter.
	*/
	@:overload public function addReferenceParameter(h : com.sun.xml.internal.ws.api.message.Header) : com.sun.xml.internal.ws.developer.EPRRecipe;
	
	/**
	* Adds all the headers as reference parameters.
	*/
	@:overload public function addReferenceParameters(headers : java.NativeArray<com.sun.xml.internal.ws.api.message.Header>) : com.sun.xml.internal.ws.developer.EPRRecipe;
	
	/**
	* Adds all the headers as reference parameters.
	*/
	@:overload public function addReferenceParameters(headers : java.lang.Iterable<com.sun.xml.internal.ws.api.message.Header>) : com.sun.xml.internal.ws.developer.EPRRecipe;
	
	/**
	* Adds a new metadata.
	*/
	@:overload public function addMetadata(source : javax.xml.transform.Source) : com.sun.xml.internal.ws.developer.EPRRecipe;
	
	@:overload public function addMetadata(sources : java.NativeArray<javax.xml.transform.Source>) : com.sun.xml.internal.ws.developer.EPRRecipe;
	
	@:overload public function addMetadata(sources : java.lang.Iterable<javax.xml.transform.Source>) : com.sun.xml.internal.ws.developer.EPRRecipe;
	
	
}
