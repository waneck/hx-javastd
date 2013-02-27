package javax.xml.crypto.dsig.keyinfo;
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
* $Id: RetrievalMethod.java,v 1.8 2005/05/10 16:35:35 mullan Exp $
*/
extern interface RetrievalMethod extends javax.xml.crypto.URIReference extends javax.xml.crypto.XMLStructure
{
	/**
	* Returns an {@link java.util.Collections#unmodifiableList unmodifiable
	* list} of {@link Transform}s of this <code>RetrievalMethod</code>.
	*
	* @return an unmodifiable list of <code>Transform</code> objects (may be
	*    empty but never <code>null</code>).
	*/
	@:overload public function getTransforms() : java.util.List<Dynamic>;
	
	/**
	* Returns the URI of the referenced <code>KeyInfo</code> information.
	*
	* @return the URI of the referenced <code>KeyInfo</code> information in
	*    RFC 2396 format (never <code>null</code>)
	*/
	@:overload public function getURI() : String;
	
	/**
	* Dereferences the <code>KeyInfo</code> information referenced by this
	* <code>RetrievalMethod</code> and applies the specified
	* <code>Transform</code>s.
	*
	* @param context an <code>XMLCryptoContext</code> that may contain
	*    additional useful information for dereferencing the URI. The
	*    context's <code>baseURI</code> and <code>dereferencer</code>
	*    parameters (if specified) are used to resolve and dereference this
	*    <code>RetrievalMethod</code>
	* @return a <code>Data</code> object representing the raw contents of the
	*    <code>KeyInfo</code> information referenced by this
	*    <code>RetrievalMethod</code>. It is the caller's responsibility to
	*    convert the returned data to an appropriate
	*    <code>KeyInfo</code> object.
	* @throws NullPointerException if <code>context</code> is <code>null</code>
	* @throws URIReferenceException if there is an error while dereferencing
	*/
	@:overload public function dereference(context : javax.xml.crypto.XMLCryptoContext) : javax.xml.crypto.Data;
	
	
}
