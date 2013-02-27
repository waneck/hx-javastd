package javax.xml.crypto.dsig;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
/*
* $Id: SignatureProperty.java,v 1.4 2005/05/10 16:03:46 mullan Exp $
*/
extern interface SignatureProperty extends javax.xml.crypto.XMLStructure
{
	/**
	* Returns the target URI of this <code>SignatureProperty</code>.
	*
	* @return the target URI of this <code>SignatureProperty</code> (never
	*    <code>null</code>)
	*/
	@:overload public function getTarget() : String;
	
	/**
	* Returns the Id of this <code>SignatureProperty</code>.
	*
	* @return the Id of this <code>SignatureProperty</code> (or
	*    <code>null</code> if not specified)
	*/
	@:overload public function getId() : String;
	
	/**
	* Returns an {@link java.util.Collections#unmodifiableList unmodifiable
	* list} of one or more {@link XMLStructure}s that are contained in
	* this <code>SignatureProperty</code>. These represent additional
	* information items concerning the generation of the {@link XMLSignature}
	* (i.e. date/time stamp or serial numbers of cryptographic hardware used
	* in signature generation).
	*
	* @return an unmodifiable list of one or more <code>XMLStructure</code>s
	*/
	@:overload public function getContent() : java.util.List<Dynamic>;
	
	
}
