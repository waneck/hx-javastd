package com.sun.xml.internal.fastinfoset.stax.events;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
extern class DTDEvent extends com.sun.xml.internal.fastinfoset.stax.events.EventBase implements javax.xml.stream.events.DTD
{
	/** Creates a new instance of DTDEvent */
	@:overload public function new() : Void;
	
	@:overload public function new(dtd : String) : Void;
	
	/**
	* Returns the entire Document Type Declaration as a string, including
	* the internal DTD subset.
	* This may be null if there is not an internal subset.
	* If it is not null it must return the entire
	* Document Type Declaration which matches the doctypedecl
	* production in the XML 1.0 specification
	*/
	@:overload public function getDocumentTypeDeclaration() : String;
	
	@:overload public function setDTD(dtd : String) : Void;
	
	/**
	* Return a List containing the general entities,
	* both external and internal, declared in the DTD.
	* This list must contain EntityDeclaration events.
	* @see EntityDeclaration
	* @return an unordered list of EntityDeclaration events
	*/
	@:overload public function getEntities() : java.util.List<Dynamic>;
	
	/**
	* Return a List containing the notations declared in the DTD.
	* This list must contain NotationDeclaration events.
	* @see NotationDeclaration
	* @return an unordered list of NotationDeclaration events
	*/
	@:overload public function getNotations() : java.util.List<Dynamic>;
	
	/**
	*Returns an implementation defined representation of the DTD.
	* This method may return null if no representation is available.
	*
	*/
	@:overload public function getProcessedDTD() : Dynamic;
	
	@:overload public function setEntities(entites : java.util.List<Dynamic>) : Void;
	
	@:overload public function setNotations(notations : java.util.List<Dynamic>) : Void;
	
	@:overload public function toString() : String;
	
	
}
